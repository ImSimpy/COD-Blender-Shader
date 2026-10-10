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
; shader hash: d1a2f3837cf5f18808f7af61fbc63cec
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
  %150 = add i32 %22, 96
  %151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %150, i32 undef)  ; BufferLoad(srv,index,wot)
  %152 = extractvalue %dx.types.ResRet.i32 %151, 0
  %153 = add i32 %152, 0
  %154 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %153, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 2
  %157 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %154, %dx.types.Handle %34, float %24, float %25, float undef, float undef, i32 0, i32 0, i32 undef, float %156, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %158 = extractvalue %dx.types.ResRet.f32 %157, 0
  %159 = fmul fast float %158, %149
  %160 = fcmp fast ogt float %159, 0.000000e+00
  br i1 %160, label %162, label %161

; <label>:161                                     ; preds = %106
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %162

; <label>:162                                     ; preds = %161, %106
  %163 = call float @dx.op.unary.f32(i32 7, float %159)  ; Saturate(value)
  %164 = fmul fast float %37, 5.000000e-01
  %165 = fmul fast float %38, 5.000000e-01
  %166 = fptosi float %164 to i32
  %167 = fptosi float %165 to i32
  %168 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %166, i32 %167, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %169 = extractvalue %dx.types.ResRet.i32 %168, 0
  %170 = lshr i32 %169, 18
  %171 = uitofp i32 %170 to float
  %172 = fmul fast float %171, 0x3F4C00EBA0000000
  %173 = call float @dx.op.unary.f32(i32 21, float %172)  ; Exp(value)
  %174 = fadd fast float %173, -1.000000e+00
  %175 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %176 = extractvalue %dx.types.Dimensions %175, 0
  %177 = sitofp i32 %176 to float
  %178 = extractvalue %dx.types.Dimensions %175, 1
  %179 = sitofp i32 %178 to float
  %180 = fcmp fast oge float %164, %177
  %181 = fcmp fast oge float %165, %179
  %182 = or i1 %180, %181
  %183 = select i1 %182, float 0x4197782600000000, float %174
  %184 = fsub fast float %183, %30
  %185 = fcmp fast ogt float %184, 0.000000e+00
  %186 = and i32 %123, -2
  %187 = icmp eq i32 %186, 2
  %188 = and i1 %187, %185
  %189 = xor i1 %185, true
  %190 = icmp eq i32 %123, 1
  %191 = and i1 %190, %189
  %192 = or i1 %188, %191
  %193 = and i32 %125, 262144
  %194 = icmp ne i32 %193, 0
  %195 = and i1 %194, %192
  %196 = xor i1 %192, true
  %197 = and i32 %125, 131072
  %198 = icmp ne i32 %197, 0
  %199 = and i1 %198, %196
  %200 = or i1 %195, %199
  br i1 %200, label %201, label %202

; <label>:201                                     ; preds = %162
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %202

; <label>:202                                     ; preds = %201, %162
  %203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %204 = extractvalue %dx.types.CBufRet.f32 %203, 2
  %205 = fptosi float %30 to i32
  %206 = sitofp i32 %205 to float
  %207 = fadd fast float %204, %206
  %208 = fmul fast float %207, 0x3FE3C6EF40000000
  %209 = frem fast float %37, 2.560000e+02
  %210 = frem fast float %38, 2.560000e+02
  %211 = fptoui float %209 to i32
  %212 = fptoui float %210 to i32
  %213 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %211, i32 %212, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %214 = extractvalue %dx.types.ResRet.f32 %213, 0
  %215 = fadd fast float %214, %208
  %216 = call float @dx.op.unary.f32(i32 22, float %215)  ; Frc(value)
  %217 = add i32 %22, 88
  %218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %217, i32 undef)  ; BufferLoad(srv,index,wot)
  %219 = extractvalue %dx.types.ResRet.i32 %218, 0
  %220 = add i32 %219, 0
  %221 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %220, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %222 = add i32 %22, 24
  %223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %224 = extractvalue %dx.types.ResRet.i32 %223, 0
  %225 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %221, %dx.types.Handle %33, float %24, float %25, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %226 = extractvalue %dx.types.ResRet.f32 %225, 0
  %227 = extractvalue %dx.types.ResRet.f32 %225, 1
  %228 = extractvalue %dx.types.ResRet.f32 %225, 2
  %229 = extractvalue %dx.types.ResRet.f32 %225, 3
  %230 = and i32 %224, 255
  %231 = uitofp i32 %230 to float
  %232 = lshr i32 %224, 8
  %233 = and i32 %232, 255
  %234 = uitofp i32 %233 to float
  %235 = fmul fast float %229, %231
  %236 = fadd fast float %235, %234
  %237 = fmul fast float %236, 0x3F70101000000000
  %238 = add i32 %22, 56
  %239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %238, i32 undef)  ; BufferLoad(srv,index,wot)
  %240 = extractvalue %dx.types.ResRet.i32 %239, 0
  %241 = and i32 %240, 255
  %242 = uitofp i32 %241 to float
  %243 = fmul fast float %242, 0x3F70101020000000
  %244 = lshr i32 %240, 8
  %245 = and i32 %244, 255
  %246 = uitofp i32 %245 to float
  %247 = fmul fast float %246, 0x3F70101020000000
  %248 = lshr i32 %240, 16
  %249 = and i32 %248, 255
  %250 = uitofp i32 %249 to float
  %251 = fmul fast float %250, 0x3F70101020000000
  %252 = add i32 %22, 92
  %253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.i32 %253, 0
  %255 = add i32 %254, 0
  %256 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %255, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %257 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %256, %dx.types.Handle %33, float %24, float %25, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %258 = extractvalue %dx.types.ResRet.f32 %257, 0
  %259 = extractvalue %dx.types.ResRet.f32 %257, 1
  %260 = extractvalue %dx.types.ResRet.f32 %257, 2
  %261 = add i32 %22, 44
  %262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.i32 %262, 0
  %264 = shl i32 %263, 4
  %265 = and i32 %264, 32752
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = lshr i32 %263, 7
  %268 = and i32 %267, 32752
  %269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %268)  ; LegacyF16ToF32(value)
  %270 = lshr i32 %263, 22
  %271 = shl nuw nsw i32 %270, 5
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = fmul fast float %266, %258
  %274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %275 = extractvalue %dx.types.CBufRet.f32 %274, 0
  %276 = fmul fast float %273, %275
  %277 = add i32 %22, 48
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.i32 %278, 0
  %280 = lshr i32 %279, 22
  %281 = shl nuw nsw i32 %280, 5
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = fmul fast float %282, %276
  %284 = select i1 %107, float %283, float %276
  %285 = fadd fast float %237, 0xBFB99999A0000000
  %286 = call float @dx.op.unary.f32(i32 7, float %285)  ; Saturate(value)
  %287 = fmul fast float %286, 0x3FF1C71C80000000
  %288 = fsub fast float 1.000000e+00, %287
  %289 = call float @dx.op.unary.f32(i32 7, float %288)  ; Saturate(value)
  %290 = fmul fast float %226, %127
  %291 = fmul fast float %243, %243
  %292 = fmul fast float %291, %290
  %293 = fmul fast float %292, %289
  %294 = fmul fast float %227, %129
  %295 = fmul fast float %247, %247
  %296 = fmul fast float %295, %294
  %297 = fmul fast float %296, %289
  %298 = fmul fast float %228, %131
  %299 = fmul fast float %251, %251
  %300 = fmul fast float %299, %298
  %301 = fmul fast float %300, %289
  %302 = call float @dx.op.unary.f32(i32 7, float %293)  ; Saturate(value)
  %303 = call float @dx.op.unary.f32(i32 7, float %297)  ; Saturate(value)
  %304 = call float @dx.op.unary.f32(i32 7, float %301)  ; Saturate(value)
  %305 = fmul fast float %146, %284
  %306 = fmul fast float %142, %136
  %307 = fmul fast float %306, %259
  %308 = fmul fast float %307, %269
  %309 = fmul fast float %308, %275
  %310 = fmul fast float %145, %136
  %311 = fmul fast float %310, %260
  %312 = fmul fast float %311, %272
  %313 = fmul fast float %312, %275
  %314 = call float @dx.op.dot3.f32(i32 55, float %305, float %309, float %313, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %315 = select i1 %107, float 0.000000e+00, float %305
  %316 = select i1 %107, float %314, float %309
  %317 = select i1 %107, float 0.000000e+00, float %313
  %318 = call float @dx.op.dot3.f32(i32 55, float %302, float %303, float %304, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %319 = add i32 %22, 32
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = and i32 %321, 255
  %323 = uitofp i32 %322 to float
  %324 = lshr i32 %321, 8
  %325 = and i32 %324, 255
  %326 = uitofp i32 %325 to float
  %327 = fmul fast float %326, %318
  %328 = fadd fast float %327, %323
  %329 = fmul fast float %328, 0x3F70101020000000
  %330 = call float @dx.op.unary.f32(i32 7, float %329)  ; Saturate(value)
  %331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %332 = extractvalue %dx.types.CBufRet.f32 %331, 0
  %333 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %166, i32 %167, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = lshr i32 %334, 18
  %336 = uitofp i32 %335 to float
  %337 = fmul fast float %336, 0x3F4C00EBA0000000
  %338 = call float @dx.op.unary.f32(i32 21, float %337)  ; Exp(value)
  %339 = fadd fast float %338, -1.000000e+00
  %340 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %341 = extractvalue %dx.types.Dimensions %340, 0
  %342 = sitofp i32 %341 to float
  %343 = extractvalue %dx.types.Dimensions %340, 1
  %344 = sitofp i32 %343 to float
  %345 = fcmp fast oge float %164, %342
  %346 = fcmp fast oge float %165, %344
  %347 = or i1 %345, %346
  %348 = select i1 %347, float 0x4197782600000000, float %339
  %349 = fmul fast float %315, %163
  %350 = fmul fast float %316, %163
  %351 = fmul fast float %317, %163
  %352 = fsub fast float 1.000000e+00, %163
  %353 = call float @dx.op.dot3.f32(i32 55, float %352, float %352, float %352, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %354 = fsub fast float 1.000000e+00, %353
  %355 = fmul fast float %332, %330
  %356 = fsub fast float 1.000000e+00, %330
  %357 = call float @dx.op.unary.f32(i32 7, float %356)  ; Saturate(value)
  %358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %359 = extractvalue %dx.types.CBufRet.f32 %358, 3
  %360 = fmul fast float %359, %357
  %361 = fadd fast float %360, %355
  %362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %363 = extractvalue %dx.types.CBufRet.f32 %362, 3
  %364 = fmul fast float %302, %163
  %365 = fmul fast float %303, %163
  %366 = fmul fast float %304, %163
  %367 = icmp eq i32 %123, 3
  %368 = fcmp fast ogt float %30, %348
  %369 = and i1 %190, %368
  %370 = or i1 %367, %369
  %371 = icmp eq i32 %123, 2
  %372 = fcmp fast ole float %30, %348
  %373 = and i1 %371, %372
  %374 = or i1 %373, %370
  br i1 %369, label %375, label %517

; <label>:375                                     ; preds = %202
  %376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %377 = extractvalue %dx.types.CBufRet.f32 %376, 2
  %378 = extractvalue %dx.types.CBufRet.f32 %376, 3
  %379 = fmul fast float %377, %37
  %380 = fmul fast float %378, %38
  %381 = call float @dx.op.unary.f32(i32 7, float %379)  ; Saturate(value)
  %382 = call float @dx.op.unary.f32(i32 7, float %380)  ; Saturate(value)
  %383 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %18, float %381, float %382, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %384 = extractvalue %dx.types.ResRet.f32 %383, 0
  %385 = extractvalue %dx.types.ResRet.f32 %383, 1
  %386 = extractvalue %dx.types.ResRet.f32 %383, 2
  %387 = extractvalue %dx.types.ResRet.f32 %383, 3
  %388 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %18, float %381, float %382, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %389 = extractvalue %dx.types.ResRet.f32 %388, 0
  %390 = extractvalue %dx.types.ResRet.f32 %388, 1
  %391 = extractvalue %dx.types.ResRet.f32 %388, 2
  %392 = extractvalue %dx.types.ResRet.f32 %388, 3
  %393 = call float @dx.op.binary.f32(i32 35, float %385, float %386)  ; FMax(a,b)
  %394 = call float @dx.op.binary.f32(i32 35, float %384, float %393)  ; FMax(a,b)
  %395 = call float @dx.op.binary.f32(i32 35, float %394, float %387)  ; FMax(a,b)
  %396 = call float @dx.op.binary.f32(i32 36, float %390, float %391)  ; FMin(a,b)
  %397 = call float @dx.op.binary.f32(i32 36, float %389, float %396)  ; FMin(a,b)
  %398 = call float @dx.op.binary.f32(i32 36, float %397, float %392)  ; FMin(a,b)
  %399 = fmul fast float %395, 2.550000e+02
  %400 = fadd fast float %399, 0x3F70101020000000
  %401 = fptoui float %400 to i32
  %402 = fmul fast float %398, 2.550000e+02
  %403 = fadd fast float %402, 0x3F70101020000000
  %404 = fptoui float %403 to i32
  %405 = icmp ult i32 %401, %404
  br i1 %405, label %406, label %457

; <label>:406                                     ; preds = %375
  %407 = fcmp fast ogt float %29, 9.843750e-01
  %408 = fadd fast float %30, -4.000000e+00
  %409 = select i1 %407, float -4.000000e+00, float %408
  %410 = call float @dx.op.binary.f32(i32 35, float %409, float 0.000000e+00)  ; FMax(a,b)
  %411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %412 = extractvalue %dx.types.CBufRet.f32 %411, 0
  %413 = fadd fast float %412, %410
  %414 = extractvalue %dx.types.CBufRet.f32 %411, 2
  %415 = fmul fast float %413, %414
  %416 = call float @dx.op.unary.f32(i32 23, float %415)  ; Log(value)
  %417 = extractvalue %dx.types.CBufRet.f32 %411, 3
  %418 = fmul fast float %417, %416
  %419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %420 = extractvalue %dx.types.CBufRet.f32 %419, 2
  %421 = fmul fast float %418, %420
  %422 = call float @dx.op.unary.f32(i32 7, float %421)  ; Saturate(value)
  %423 = uitofp i32 %401 to float
  %424 = uitofp i32 %404 to float
  %425 = fadd fast float %423, 5.000000e-01
  %426 = fadd fast float %424, 5.000000e-01
  %427 = fmul fast float %420, %425
  %428 = fmul fast float %420, %426
  %429 = fadd fast float %427, 0x3F0FFB4800000000
  %430 = fadd fast float %428, 0xBF0FFB4800000000
  %431 = call float @dx.op.binary.f32(i32 35, float %422, float %429)  ; FMax(a,b)
  %432 = call float @dx.op.binary.f32(i32 36, float %431, float %430)  ; FMin(a,b)
  %433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %434 = extractvalue %dx.types.CBufRet.f32 %433, 1
  %435 = extractvalue %dx.types.CBufRet.f32 %433, 2
  %436 = extractvalue %dx.types.CBufRet.f32 %433, 0
  %437 = fmul fast float %434, %432
  %438 = fadd fast float %436, %437
  %439 = fadd fast float %436, %435
  %440 = fsub fast float %434, %435
  %441 = fadd fast float %440, %436
  %442 = call float @dx.op.binary.f32(i32 35, float %438, float %439)  ; FMax(a,b)
  %443 = call float @dx.op.binary.f32(i32 36, float %442, float %441)  ; FMin(a,b)
  %444 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %17, float %381, float %382, float %443, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %445 = extractvalue %dx.types.ResRet.f32 %444, 0
  %446 = extractvalue %dx.types.ResRet.f32 %444, 1
  %447 = extractvalue %dx.types.ResRet.f32 %444, 2
  %448 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %381, float %382, float %443, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %449 = extractvalue %dx.types.ResRet.f32 %448, 0
  %450 = extractvalue %dx.types.ResRet.f32 %448, 1
  %451 = extractvalue %dx.types.ResRet.f32 %448, 2
  %452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %453 = extractvalue %dx.types.CBufRet.f32 %452, 1
  %454 = fmul fast float %453, %449
  %455 = fmul fast float %453, %450
  %456 = fmul fast float %453, %451
  br label %457

; <label>:457                                     ; preds = %406, %375
  %458 = phi float [ %445, %406 ], [ 1.000000e+00, %375 ]
  %459 = phi float [ %446, %406 ], [ 1.000000e+00, %375 ]
  %460 = phi float [ %447, %406 ], [ 1.000000e+00, %375 ]
  %461 = phi float [ %454, %406 ], [ 0.000000e+00, %375 ]
  %462 = phi float [ %455, %406 ], [ 0.000000e+00, %375 ]
  %463 = phi float [ %456, %406 ], [ 0.000000e+00, %375 ]
  %464 = fmul fast float %461, %354
  %465 = fmul fast float %462, %354
  %466 = fmul fast float %463, %354
  %467 = call float @dx.op.dot3.f32(i32 55, float %458, float %459, float %460, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %468 = call float @dx.op.dot3.f32(i32 55, float %464, float %465, float %466, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %469 = select i1 %107, float %467, float %458
  %470 = select i1 %107, float %467, float %459
  %471 = select i1 %107, float 1.000000e+00, float %460
  %472 = select i1 %107, float %468, float %464
  %473 = select i1 %107, float 0.000000e+00, float %465
  %474 = select i1 %107, float 0.000000e+00, float %466
  %475 = fmul fast float %469, %364
  %476 = fmul fast float %470, %365
  %477 = fmul fast float %471, %366
  %478 = fadd fast float %475, %472
  %479 = fadd fast float %476, %473
  %480 = fadd fast float %474, %477
  %481 = fmul fast float %469, %349
  %482 = fmul fast float %470, %350
  %483 = fmul fast float %471, %351
  %484 = fmul fast float %37, 2.000000e+00
  %485 = fmul fast float %484, %377
  %486 = fmul fast float %38, 2.000000e+00
  %487 = fmul fast float %486, %378
  %488 = fsub fast float 1.000000e+00, %485
  %489 = fsub fast float 1.000000e+00, %487
  %490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %491 = extractvalue %dx.types.CBufRet.f32 %490, 0
  %492 = extractvalue %dx.types.CBufRet.f32 %490, 1
  %493 = extractvalue %dx.types.CBufRet.f32 %490, 2
  %494 = fmul fast float %488, %491
  %495 = fmul fast float %488, %492
  %496 = fmul fast float %488, %493
  %497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %498 = extractvalue %dx.types.CBufRet.f32 %497, 0
  %499 = extractvalue %dx.types.CBufRet.f32 %497, 1
  %500 = extractvalue %dx.types.CBufRet.f32 %497, 2
  %501 = fmul fast float %489, %498
  %502 = fmul fast float %489, %499
  %503 = fmul fast float %489, %500
  %504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %505 = extractvalue %dx.types.CBufRet.f32 %504, 0
  %506 = extractvalue %dx.types.CBufRet.f32 %504, 1
  %507 = extractvalue %dx.types.CBufRet.f32 %504, 2
  %508 = fadd fast float %501, %505
  %509 = fadd fast float %508, %494
  %510 = fadd fast float %502, %506
  %511 = fadd fast float %510, %495
  %512 = fadd fast float %503, %507
  %513 = fadd fast float %512, %496
  %514 = fmul fast float %509, %348
  %515 = fmul fast float %511, %348
  %516 = fmul fast float %513, %348
  br label %517

; <label>:517                                     ; preds = %457, %202
  %518 = phi float [ %514, %457 ], [ %72, %202 ]
  %519 = phi float [ %515, %457 ], [ %73, %202 ]
  %520 = phi float [ %516, %457 ], [ %74, %202 ]
  %521 = phi float [ %348, %457 ], [ %30, %202 ]
  %522 = phi float [ %478, %457 ], [ %364, %202 ]
  %523 = phi float [ %479, %457 ], [ %365, %202 ]
  %524 = phi float [ %480, %457 ], [ %366, %202 ]
  %525 = phi float [ %481, %457 ], [ %349, %202 ]
  %526 = phi float [ %482, %457 ], [ %350, %202 ]
  %527 = phi float [ %483, %457 ], [ %351, %202 ]
  %528 = phi float [ %458, %457 ], [ 1.000000e+00, %202 ]
  br i1 %374, label %1683, label %529

; <label>:529                                     ; preds = %517
  %530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %531 = extractvalue %dx.types.CBufRet.f32 %530, 0
  %532 = extractvalue %dx.types.CBufRet.f32 %530, 1
  %533 = extractvalue %dx.types.CBufRet.f32 %530, 2
  %534 = extractvalue %dx.types.CBufRet.f32 %530, 3
  %535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %536 = extractvalue %dx.types.CBufRet.f32 %535, 0
  %537 = extractvalue %dx.types.CBufRet.f32 %535, 1
  %538 = extractvalue %dx.types.CBufRet.f32 %535, 2
  %539 = extractvalue %dx.types.CBufRet.f32 %535, 3
  %540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %541 = extractvalue %dx.types.CBufRet.f32 %540, 0
  %542 = extractvalue %dx.types.CBufRet.f32 %540, 1
  %543 = extractvalue %dx.types.CBufRet.f32 %540, 2
  %544 = extractvalue %dx.types.CBufRet.f32 %540, 3
  %545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %546 = extractvalue %dx.types.CBufRet.f32 %545, 0
  %547 = extractvalue %dx.types.CBufRet.f32 %545, 1
  %548 = extractvalue %dx.types.CBufRet.f32 %545, 2
  %549 = extractvalue %dx.types.CBufRet.f32 %545, 3
  %550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %551 = extractvalue %dx.types.CBufRet.f32 %550, 3
  %552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %553 = extractvalue %dx.types.CBufRet.f32 %552, 3
  %554 = extractvalue %dx.types.CBufRet.f32 %552, 0
  %555 = extractvalue %dx.types.CBufRet.f32 %552, 1
  %556 = extractvalue %dx.types.CBufRet.f32 %552, 2
  %557 = fcmp fast olt float %556, -5.000000e-01
  %558 = call float @dx.op.dot3.f32(i32 55, float %518, float %519, float %520, float %518, float %519, float %520)  ; Dot3(ax,ay,az,bx,by,bz)
  %559 = call float @dx.op.unary.f32(i32 25, float %558)  ; Rsqrt(value)
  %560 = fmul fast float %559, %558
  %561 = fmul fast float %559, %518
  %562 = fmul fast float %559, %519
  %563 = fmul fast float %559, %520
  %564 = fadd fast float %560, %534
  %565 = call float @dx.op.dot3.f32(i32 55, float %561, float %562, float %563, float %531, float %532, float %533)  ; Dot3(ax,ay,az,bx,by,bz)
  %566 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %567 = extractvalue %dx.types.CBufRet.i32 %566, 1
  %568 = and i32 %567, 1
  %569 = icmp ne i32 %568, 0
  %570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %571 = extractvalue %dx.types.CBufRet.f32 %570, 2
  %572 = fcmp fast ogt float %571, 0.000000e+00
  %573 = and i1 %569, %572
  br i1 %573, label %574, label %980, !dx.controlflow.hints !53

; <label>:574                                     ; preds = %529
  %575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %576 = extractvalue %dx.types.CBufRet.f32 %575, 3
  %577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %578 = extractvalue %dx.types.CBufRet.f32 %577, 2
  %579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %580 = extractvalue %dx.types.CBufRet.f32 %579, 2
  %581 = fsub fast float %578, %580
  %582 = and i32 %567, 2
  %583 = extractvalue %dx.types.CBufRet.i32 %566, 0
  %584 = call i32 @dx.op.binary.i32(i32 40, i32 %583, i32 3)  ; UMin(a,b)
  %585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %586 = extractvalue %dx.types.CBufRet.f32 %585, 0
  %587 = extractvalue %dx.types.CBufRet.f32 %585, 1
  %588 = extractvalue %dx.types.CBufRet.f32 %579, 0
  %589 = extractvalue %dx.types.CBufRet.f32 %579, 1
  %590 = fsub fast float %586, %588
  %591 = fsub fast float %587, %589
  %592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %593 = extractvalue %dx.types.CBufRet.f32 %592, 0
  %594 = fcmp fast ogt float %593, 0.000000e+00
  %595 = fsub fast float -0.000000e+00, %590
  %596 = fsub fast float -0.000000e+00, %591
  %597 = call float @dx.op.dot2.f32(i32 54, float %561, float %562, float %561, float %562)  ; Dot2(ax,ay,bx,by)
  %598 = call float @dx.op.dot2.f32(i32 54, float %561, float %562, float %595, float %596)  ; Dot2(ax,ay,bx,by)
  %599 = fmul fast float %598, 2.000000e+00
  %600 = call float @dx.op.dot2.f32(i32 54, float %595, float %596, float %595, float %596)  ; Dot2(ax,ay,bx,by)
  %601 = fmul fast float %593, %593
  %602 = fsub fast float %600, %601
  %603 = fmul fast float %599, %599
  %604 = fmul fast float %597, 4.000000e+00
  %605 = fmul fast float %604, %602
  %606 = fsub fast float %603, %605
  %607 = fcmp fast ogt float %606, 0.000000e+00
  br i1 %607, label %608, label %623

; <label>:608                                     ; preds = %574
  %609 = fcmp fast ogt float %599, 0.000000e+00
  %610 = call float @dx.op.unary.f32(i32 24, float %606)  ; Sqrt(value)
  %611 = fsub fast float -0.000000e+00, %610
  %612 = select i1 %609, float %610, float %611
  %613 = fadd fast float %612, %599
  %614 = fmul float %613, -5.000000e-01
  %615 = fdiv fast float %614, %597
  %616 = call float @dx.op.binary.f32(i32 35, float %615, float 0.000000e+00)  ; FMax(a,b)
  %617 = call float @dx.op.binary.f32(i32 36, float %560, float %616)  ; FMin(a,b)
  %618 = fdiv fast float %602, %614
  %619 = call float @dx.op.binary.f32(i32 35, float %618, float 0.000000e+00)  ; FMax(a,b)
  %620 = call float @dx.op.binary.f32(i32 36, float %560, float %619)  ; FMin(a,b)
  %621 = call float @dx.op.binary.f32(i32 36, float %617, float %620)  ; FMin(a,b)
  %622 = call float @dx.op.binary.f32(i32 35, float %617, float %620)  ; FMax(a,b)
  br label %623

; <label>:623                                     ; preds = %608, %574
  %624 = phi float [ %622, %608 ], [ -1.000000e+00, %574 ]
  %625 = phi float [ %621, %608 ], [ -1.000000e+00, %574 ]
  %626 = phi i1 [ true, %608 ], [ false, %574 ]
  %627 = and i1 %594, %626
  br i1 %627, label %628, label %630

; <label>:628                                     ; preds = %623
  %629 = fcmp fast oeq float %625, %624
  br i1 %629, label %933, label %631

; <label>:630                                     ; preds = %623
  br i1 %594, label %933, label %631

; <label>:631                                     ; preds = %630, %628
  %632 = phi float [ %560, %630 ], [ %624, %628 ]
  %633 = phi float [ 0.000000e+00, %630 ], [ %625, %628 ]
  %634 = icmp ne i32 %582, 0
  %635 = fmul fast float %632, %563
  %636 = fadd fast float %635, %576
  %637 = fmul fast float %636, %632
  %638 = select i1 %634, float 0.000000e+00, float %637
  %639 = fcmp fast oeq float %563, 0.000000e+00
  %640 = fdiv fast float %581, %563
  %641 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %640)  ; FMax(a,b)
  %642 = select i1 %639, float %632, float %641
  %643 = call float @dx.op.binary.f32(i32 36, float %632, float %642)  ; FMin(a,b)
  %644 = fcmp fast ogt float %563, 0.000000e+00
  %645 = fcmp fast olt float %581, 0.000000e+00
  br i1 %644, label %646, label %703

; <label>:646                                     ; preds = %631
  %647 = icmp eq i32 %582, 0
  br i1 %645, label %648, label %692

; <label>:648                                     ; preds = %646
  %649 = select i1 %647, float %632, float 0.000000e+00
  %650 = fsub fast float -0.000000e+00, %649
  %651 = call float @dx.op.unary.f32(i32 6, float %650)  ; FAbs(value)
  %652 = fmul fast float %649, %563
  %653 = fadd fast float %652, %576
  %654 = fmul fast float %651, %653
  %655 = fsub fast float %638, %654
  %656 = fsub fast float %632, %651
  %657 = select i1 %647, float %656, float 0.000000e+00
  %658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %659 = extractvalue %dx.types.CBufRet.f32 %658, 0
  %660 = extractvalue %dx.types.CBufRet.f32 %658, 1
  %661 = extractvalue %dx.types.CBufRet.f32 %658, 2
  %662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %663 = extractvalue %dx.types.CBufRet.f32 %662, 0
  %664 = extractvalue %dx.types.CBufRet.f32 %662, 1
  %665 = extractvalue %dx.types.CBufRet.f32 %662, 2
  %666 = extractvalue %dx.types.CBufRet.f32 %662, 3
  %667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %668 = extractvalue %dx.types.CBufRet.f32 %667, 3
  %669 = call float @dx.op.binary.f32(i32 36, float %655, float %668)  ; FMin(a,b)
  %670 = fmul fast float %666, %657
  %671 = call float @dx.op.unary.f32(i32 7, float %670)  ; Saturate(value)
  %672 = fsub fast float %663, %659
  %673 = fsub fast float %664, %660
  %674 = fsub fast float %665, %661
  %675 = fmul fast float %671, %672
  %676 = fmul fast float %671, %673
  %677 = fmul fast float %671, %674
  %678 = fadd fast float %675, %659
  %679 = fadd fast float %676, %660
  %680 = fadd fast float %677, %661
  %681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %682 = extractvalue %dx.types.CBufRet.f32 %681, 0
  %683 = extractvalue %dx.types.CBufRet.f32 %681, 1
  %684 = fadd fast float %683, %682
  %685 = call float @dx.op.unary.f32(i32 7, float %684)  ; Saturate(value)
  %686 = extractvalue %dx.types.CBufRet.f32 %681, 2
  %687 = extractvalue %dx.types.CBufRet.f32 %681, 3
  %688 = fadd fast float %687, %686
  %689 = call float @dx.op.unary.f32(i32 7, float %688)  ; Saturate(value)
  %690 = fmul fast float %685, %669
  %691 = fmul fast float %690, %689
  br label %933

; <label>:692                                     ; preds = %646
  br i1 %647, label %693, label %714

; <label>:693                                     ; preds = %692
  %694 = call float @dx.op.binary.f32(i32 36, float %643, float %633)  ; FMin(a,b)
  %695 = fsub fast float %643, %694
  %696 = fsub fast float %695, %632
  %697 = call float @dx.op.unary.f32(i32 6, float %696)  ; FAbs(value)
  %698 = fadd fast float %695, %632
  %699 = fmul fast float %698, %563
  %700 = fadd fast float %699, %576
  %701 = fmul fast float %700, %697
  %702 = fsub fast float %638, %701
  br label %714

; <label>:703                                     ; preds = %631
  br i1 %645, label %704, label %714

; <label>:704                                     ; preds = %703
  %705 = call float @dx.op.binary.f32(i32 35, float %633, float %643)  ; FMax(a,b)
  %706 = icmp eq i32 %582, 0
  %707 = select i1 %706, float %643, float 0.000000e+00
  %708 = fsub fast float -0.000000e+00, %707
  %709 = call float @dx.op.unary.f32(i32 6, float %708)  ; FAbs(value)
  %710 = fmul fast float %707, %563
  %711 = fadd fast float %710, %576
  %712 = fmul fast float %709, %711
  %713 = fsub fast float %638, %712
  br label %714

; <label>:714                                     ; preds = %704, %703, %693, %692
  %715 = phi float [ %633, %692 ], [ %633, %693 ], [ %705, %704 ], [ %633, %703 ]
  %716 = phi float [ 0.000000e+00, %692 ], [ %697, %693 ], [ %709, %704 ], [ 0.000000e+00, %703 ]
  %717 = phi float [ %638, %692 ], [ %702, %693 ], [ %713, %704 ], [ %638, %703 ]
  %718 = phi float [ %643, %692 ], [ %643, %693 ], [ %632, %704 ], [ %632, %703 ]
  %719 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 0
  store float -1.000000e+00, float* %719, align 4, !tbaa !54, !noalias !58
  %720 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 1
  store float -1.000000e+00, float* %720, align 4, !tbaa !54, !noalias !58
  %721 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 2
  store float -1.000000e+00, float* %721, align 4, !tbaa !54, !noalias !58
  %722 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 0
  store float -1.000000e+00, float* %722, align 4, !tbaa !54, !noalias !58
  %723 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 1
  store float -1.000000e+00, float* %723, align 4, !tbaa !54, !noalias !58
  %724 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 2
  store float -1.000000e+00, float* %724, align 4, !tbaa !54, !noalias !58
  %725 = icmp sgt i32 %584, 0
  br i1 %725, label %726, label %787

; <label>:726                                     ; preds = %714
  br label %727

; <label>:727                                     ; preds = %776, %726
  %728 = phi i32 [ %777, %776 ], [ 0, %726 ]
  %729 = phi i32 [ %778, %776 ], [ 0, %726 ]
  %730 = add nuw i32 %729, 171
  %731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 %730)  ; CBufferLoadLegacy(handle,regIndex)
  %732 = extractvalue %dx.types.CBufRet.f32 %731, 0
  %733 = extractvalue %dx.types.CBufRet.f32 %731, 1
  %734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %735 = extractvalue %dx.types.CBufRet.f32 %734, 0
  %736 = extractvalue %dx.types.CBufRet.f32 %734, 1
  %737 = fsub fast float %732, %735
  %738 = fsub fast float %733, %736
  %739 = extractvalue %dx.types.CBufRet.f32 %731, 2
  %740 = fsub fast float -0.000000e+00, %737
  %741 = fsub fast float -0.000000e+00, %738
  %742 = call float @dx.op.dot2.f32(i32 54, float %561, float %562, float %740, float %741)  ; Dot2(ax,ay,bx,by)
  %743 = fmul fast float %742, 2.000000e+00
  %744 = call float @dx.op.dot2.f32(i32 54, float %740, float %741, float %740, float %741)  ; Dot2(ax,ay,bx,by)
  %745 = fmul fast float %739, %739
  %746 = fsub fast float %744, %745
  %747 = fmul fast float %743, %743
  %748 = fmul fast float %604, %746
  %749 = fsub fast float %747, %748
  %750 = fcmp fast ogt float %749, 0.000000e+00
  br i1 %750, label %751, label %766

; <label>:751                                     ; preds = %727
  %752 = fcmp fast ogt float %743, 0.000000e+00
  %753 = call float @dx.op.unary.f32(i32 24, float %749)  ; Sqrt(value)
  %754 = fsub fast float -0.000000e+00, %753
  %755 = select i1 %752, float %753, float %754
  %756 = fadd fast float %755, %743
  %757 = fmul float %756, -5.000000e-01
  %758 = fdiv fast float %757, %597
  %759 = call float @dx.op.binary.f32(i32 35, float %758, float 0.000000e+00)  ; FMax(a,b)
  %760 = call float @dx.op.binary.f32(i32 36, float %632, float %759)  ; FMin(a,b)
  %761 = fdiv fast float %746, %757
  %762 = call float @dx.op.binary.f32(i32 35, float %761, float 0.000000e+00)  ; FMax(a,b)
  %763 = call float @dx.op.binary.f32(i32 36, float %632, float %762)  ; FMin(a,b)
  %764 = call float @dx.op.binary.f32(i32 36, float %760, float %763)  ; FMin(a,b)
  %765 = call float @dx.op.binary.f32(i32 35, float %760, float %763)  ; FMax(a,b)
  br label %766

; <label>:766                                     ; preds = %751, %727
  %767 = phi float [ %765, %751 ], [ -1.000000e+00, %727 ]
  %768 = phi float [ %764, %751 ], [ -1.000000e+00, %727 ]
  %769 = phi i1 [ true, %751 ], [ false, %727 ]
  br i1 %769, label %770, label %776

; <label>:770                                     ; preds = %766
  %771 = call float @dx.op.binary.f32(i32 35, float %715, float %768)  ; FMax(a,b)
  %772 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 %729
  store float %771, float* %772, align 4, !tbaa !54, !noalias !58
  %773 = call float @dx.op.binary.f32(i32 35, float %715, float %767)  ; FMax(a,b)
  %774 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 %729
  store float %773, float* %774, align 4, !tbaa !54, !noalias !58
  %775 = add nsw i32 %728, 1
  br label %776

; <label>:776                                     ; preds = %770, %766
  %777 = phi i32 [ %775, %770 ], [ %728, %766 ]
  %778 = add nuw nsw i32 %729, 1
  %779 = icmp eq i32 %778, %584
  br i1 %779, label %780, label %727

; <label>:780                                     ; preds = %776
  %781 = load float, float* %721, align 4, !tbaa !54, !alias.scope !74, !noalias !77
  %782 = load float, float* %720, align 4, !tbaa !54, !alias.scope !80, !noalias !81
  %783 = load float, float* %719, align 4, !tbaa !54, !alias.scope !82, !noalias !83
  %784 = load float, float* %724, align 4, !tbaa !54, !alias.scope !84, !noalias !87
  %785 = load float, float* %723, align 4, !tbaa !54, !alias.scope !90, !noalias !91
  %786 = load float, float* %722, align 4, !tbaa !54, !alias.scope !92, !noalias !93
  br label %787

; <label>:787                                     ; preds = %780, %714
  %788 = phi float [ -1.000000e+00, %714 ], [ %786, %780 ]
  %789 = phi float [ -1.000000e+00, %714 ], [ %785, %780 ]
  %790 = phi float [ -1.000000e+00, %714 ], [ %784, %780 ]
  %791 = phi float [ -1.000000e+00, %714 ], [ %783, %780 ]
  %792 = phi float [ -1.000000e+00, %714 ], [ %782, %780 ]
  %793 = phi float [ -1.000000e+00, %714 ], [ %781, %780 ]
  %794 = phi i32 [ 0, %714 ], [ %777, %780 ]
  %795 = call float @dx.op.binary.f32(i32 36, float %792, float %793)  ; FMin(a,b)
  %796 = call float @dx.op.binary.f32(i32 36, float %791, float %795)  ; FMin(a,b)
  %797 = call float @dx.op.binary.f32(i32 35, float %791, float %792)  ; FMax(a,b)
  %798 = call float @dx.op.binary.f32(i32 36, float %797, float %793)  ; FMin(a,b)
  %799 = call float @dx.op.binary.f32(i32 36, float %791, float %792)  ; FMin(a,b)
  %800 = call float @dx.op.binary.f32(i32 35, float %799, float %798)  ; FMax(a,b)
  %801 = call float @dx.op.binary.f32(i32 35, float %792, float %793)  ; FMax(a,b)
  %802 = call float @dx.op.binary.f32(i32 35, float %791, float %801)  ; FMax(a,b)
  store float %796, float* %719, align 4, !tbaa !54, !alias.scope !82, !noalias !83
  store float %800, float* %720, align 4, !tbaa !54, !alias.scope !80, !noalias !81
  store float %802, float* %721, align 4, !tbaa !54, !alias.scope !74, !noalias !77
  %803 = call float @dx.op.binary.f32(i32 36, float %789, float %790)  ; FMin(a,b)
  %804 = call float @dx.op.binary.f32(i32 36, float %788, float %803)  ; FMin(a,b)
  %805 = call float @dx.op.binary.f32(i32 35, float %788, float %789)  ; FMax(a,b)
  %806 = call float @dx.op.binary.f32(i32 36, float %805, float %790)  ; FMin(a,b)
  %807 = call float @dx.op.binary.f32(i32 36, float %788, float %789)  ; FMin(a,b)
  %808 = call float @dx.op.binary.f32(i32 35, float %807, float %806)  ; FMax(a,b)
  %809 = call float @dx.op.binary.f32(i32 35, float %789, float %790)  ; FMax(a,b)
  %810 = call float @dx.op.binary.f32(i32 35, float %788, float %809)  ; FMax(a,b)
  store float %804, float* %722, align 4, !tbaa !54, !alias.scope !92, !noalias !93
  store float %808, float* %723, align 4, !tbaa !54, !alias.scope !90, !noalias !91
  store float %810, float* %724, align 4, !tbaa !54, !alias.scope !84, !noalias !87
  %811 = sub nsw i32 3, %794
  %812 = icmp sgt i32 %811, 2
  br i1 %812, label %813, label %851

; <label>:813                                     ; preds = %787
  %814 = icmp eq i32 %582, 0
  %815 = fsub fast float %632, %716
  %816 = select i1 %814, float %815, float %716
  %817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %818 = extractvalue %dx.types.CBufRet.f32 %817, 0
  %819 = extractvalue %dx.types.CBufRet.f32 %817, 1
  %820 = extractvalue %dx.types.CBufRet.f32 %817, 2
  %821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %822 = extractvalue %dx.types.CBufRet.f32 %821, 0
  %823 = extractvalue %dx.types.CBufRet.f32 %821, 1
  %824 = extractvalue %dx.types.CBufRet.f32 %821, 2
  %825 = extractvalue %dx.types.CBufRet.f32 %821, 3
  %826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %827 = extractvalue %dx.types.CBufRet.f32 %826, 3
  %828 = call float @dx.op.binary.f32(i32 36, float %717, float %827)  ; FMin(a,b)
  %829 = fmul fast float %825, %816
  %830 = call float @dx.op.unary.f32(i32 7, float %829)  ; Saturate(value)
  %831 = fsub fast float %822, %818
  %832 = fsub fast float %823, %819
  %833 = fsub fast float %824, %820
  %834 = fmul fast float %830, %831
  %835 = fmul fast float %830, %832
  %836 = fmul fast float %830, %833
  %837 = fadd fast float %834, %818
  %838 = fadd fast float %835, %819
  %839 = fadd fast float %836, %820
  %840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %841 = extractvalue %dx.types.CBufRet.f32 %840, 0
  %842 = extractvalue %dx.types.CBufRet.f32 %840, 1
  %843 = fadd fast float %842, %841
  %844 = call float @dx.op.unary.f32(i32 7, float %843)  ; Saturate(value)
  %845 = extractvalue %dx.types.CBufRet.f32 %840, 2
  %846 = extractvalue %dx.types.CBufRet.f32 %840, 3
  %847 = fadd fast float %846, %845
  %848 = call float @dx.op.unary.f32(i32 7, float %847)  ; Saturate(value)
  %849 = fmul fast float %844, %828
  %850 = fmul fast float %849, %848
  br label %933

; <label>:851                                     ; preds = %787
  %852 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 %811
  %853 = load float, float* %852, align 4, !tbaa !54, !noalias !58
  %854 = fcmp fast olt float %853, %718
  %855 = icmp sgt i32 %794, 0
  %856 = and i1 %855, %854
  br i1 %856, label %857, label %894

; <label>:857                                     ; preds = %851
  br label %858

; <label>:858                                     ; preds = %887, %857
  %859 = phi float [ %888, %887 ], [ %716, %857 ]
  %860 = phi float [ %889, %887 ], [ %717, %857 ]
  %861 = phi float [ %869, %887 ], [ %853, %857 ]
  %862 = phi i32 [ %866, %887 ], [ %811, %857 ]
  %863 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 %862
  %864 = load float, float* %863, align 4, !tbaa !54, !noalias !58
  %865 = icmp slt i32 %862, 2
  %866 = add nsw i32 %862, 1
  %867 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 %866
  %868 = load float, float* %867, align 4, !tbaa !54, !noalias !58
  %869 = select i1 %865, float %868, float %632
  %870 = call float @dx.op.binary.f32(i32 36, float %869, float %864)  ; FMin(a,b)
  %871 = call float @dx.op.binary.f32(i32 36, float %718, float %870)  ; FMin(a,b)
  %872 = icmp eq i32 %582, 0
  %873 = fadd fast float %871, %861
  %874 = fmul fast float %873, %563
  %875 = fadd fast float %874, %576
  br i1 %872, label %881, label %876

; <label>:876                                     ; preds = %858
  %877 = fsub fast float %871, %861
  %878 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %877)  ; FMax(a,b)
  %879 = fmul fast float %878, %875
  %880 = fadd fast float %879, %860
  br label %887

; <label>:881                                     ; preds = %858
  %882 = fsub fast float %861, %871
  %883 = call float @dx.op.unary.f32(i32 6, float %882)  ; FAbs(value)
  %884 = fadd fast float %883, %859
  %885 = fmul fast float %883, %875
  %886 = fsub fast float %860, %885
  br label %887

; <label>:887                                     ; preds = %881, %876
  %888 = phi float [ %878, %876 ], [ %884, %881 ]
  %889 = phi float [ %880, %876 ], [ %886, %881 ]
  %890 = fcmp fast olt float %869, %718
  %891 = icmp slt i32 %866, 3
  %892 = and i1 %891, %890
  br i1 %892, label %858, label %893

; <label>:893                                     ; preds = %887
  br label %894

; <label>:894                                     ; preds = %893, %851
  %895 = phi float [ %716, %851 ], [ %888, %893 ]
  %896 = phi float [ %717, %851 ], [ %889, %893 ]
  %897 = fsub fast float %632, %895
  %898 = select i1 %634, float %895, float %897
  %899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %900 = extractvalue %dx.types.CBufRet.f32 %899, 0
  %901 = extractvalue %dx.types.CBufRet.f32 %899, 1
  %902 = extractvalue %dx.types.CBufRet.f32 %899, 2
  %903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %904 = extractvalue %dx.types.CBufRet.f32 %903, 0
  %905 = extractvalue %dx.types.CBufRet.f32 %903, 1
  %906 = extractvalue %dx.types.CBufRet.f32 %903, 2
  %907 = extractvalue %dx.types.CBufRet.f32 %903, 3
  %908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %909 = extractvalue %dx.types.CBufRet.f32 %908, 3
  %910 = call float @dx.op.binary.f32(i32 36, float %896, float %909)  ; FMin(a,b)
  %911 = fmul fast float %907, %898
  %912 = call float @dx.op.unary.f32(i32 7, float %911)  ; Saturate(value)
  %913 = fsub fast float %904, %900
  %914 = fsub fast float %905, %901
  %915 = fsub fast float %906, %902
  %916 = fmul fast float %912, %913
  %917 = fmul fast float %912, %914
  %918 = fmul fast float %912, %915
  %919 = fadd fast float %916, %900
  %920 = fadd fast float %917, %901
  %921 = fadd fast float %918, %902
  %922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %923 = extractvalue %dx.types.CBufRet.f32 %922, 0
  %924 = extractvalue %dx.types.CBufRet.f32 %922, 1
  %925 = fadd fast float %924, %923
  %926 = call float @dx.op.unary.f32(i32 7, float %925)  ; Saturate(value)
  %927 = extractvalue %dx.types.CBufRet.f32 %922, 2
  %928 = extractvalue %dx.types.CBufRet.f32 %922, 3
  %929 = fadd fast float %928, %927
  %930 = call float @dx.op.unary.f32(i32 7, float %929)  ; Saturate(value)
  %931 = fmul fast float %926, %910
  %932 = fmul fast float %931, %930
  br label %933

; <label>:933                                     ; preds = %894, %813, %648, %630, %628
  %934 = phi float [ %657, %648 ], [ %816, %813 ], [ %898, %894 ], [ 0.000000e+00, %628 ], [ 0.000000e+00, %630 ]
  %935 = phi float [ %691, %648 ], [ %850, %813 ], [ %932, %894 ], [ 0.000000e+00, %628 ], [ 0.000000e+00, %630 ]
  %936 = phi float [ %678, %648 ], [ %837, %813 ], [ %919, %894 ], [ 0.000000e+00, %628 ], [ 0.000000e+00, %630 ]
  %937 = phi float [ %679, %648 ], [ %838, %813 ], [ %920, %894 ], [ 0.000000e+00, %628 ], [ 0.000000e+00, %630 ]
  %938 = phi float [ %680, %648 ], [ %839, %813 ], [ %921, %894 ], [ 0.000000e+00, %628 ], [ 0.000000e+00, %630 ]
  %939 = fmul fast float %571, %935
  %940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %941 = extractvalue %dx.types.CBufRet.f32 %940, 2
  %942 = fsub fast float %578, %941
  %943 = fcmp fast olt float %939, -2.000000e+01
  %944 = call float @dx.op.unary.f32(i32 21, float %939)  ; Exp(value)
  %945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %946 = extractvalue %dx.types.CBufRet.f32 %945, 2
  %947 = extractvalue %dx.types.CBufRet.f32 %945, 3
  %948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %949 = extractvalue %dx.types.CBufRet.f32 %948, 2
  %950 = fmul fast float %947, %942
  %951 = call float @dx.op.unary.f32(i32 7, float %950)  ; Saturate(value)
  %952 = fsub fast float 1.000000e+00, %951
  %953 = fmul fast float %563, 5.000000e-01
  %954 = fadd fast float %953, 5.000000e-01
  %955 = call float @dx.op.unary.f32(i32 7, float %954)  ; Saturate(value)
  %956 = fsub fast float 1.000000e+00, %955
  %957 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %952)  ; FMax(a,b)
  %958 = fdiv fast float %956, %957
  %959 = fsub fast float %942, %520
  %960 = call float @dx.op.unary.f32(i32 6, float %959)  ; FAbs(value)
  %961 = fmul fast float %960, %946
  %962 = call float @dx.op.unary.f32(i32 7, float %958)  ; Saturate(value)
  %963 = fsub fast float 1.000000e+00, %961
  %964 = fmul fast float %963, %962
  %965 = fadd fast float %964, %961
  %966 = fmul fast float %949, %942
  %967 = call float @dx.op.unary.f32(i32 7, float %966)  ; Saturate(value)
  %968 = fsub fast float 1.000000e+00, %965
  %969 = fmul fast float %968, %967
  %970 = fadd fast float %969, %965
  %971 = call float @dx.op.unary.f32(i32 7, float %970)  ; Saturate(value)
  %972 = fadd fast float %944, -1.000000e+00
  %973 = select i1 %943, float -1.000000e+00, float %972
  %974 = fmul fast float %971, %973
  %975 = fadd fast float %974, 1.000000e+00
  %976 = fsub fast float -0.000000e+00, %974
  %977 = fmul fast float %936, %976
  %978 = fmul fast float %937, %976
  %979 = fmul fast float %938, %976
  br label %980

; <label>:980                                     ; preds = %933, %529
  %981 = phi float [ %934, %933 ], [ 0.000000e+00, %529 ]
  %982 = phi float [ %975, %933 ], [ 1.000000e+00, %529 ]
  %983 = phi float [ %977, %933 ], [ 0.000000e+00, %529 ]
  %984 = phi float [ %978, %933 ], [ 0.000000e+00, %529 ]
  %985 = phi float [ %979, %933 ], [ 0.000000e+00, %529 ]
  %986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %987 = extractvalue %dx.types.CBufRet.f32 %986, 1
  %988 = fsub fast float 1.000000e+00, %982
  %989 = fmul fast float %988, %564
  %990 = fmul fast float %989, %987
  %991 = fsub fast float %564, %990
  br i1 %557, label %992, label %1021, !dx.controlflow.hints !94

; <label>:992                                     ; preds = %980
  %993 = fmul fast float %565, %554
  %994 = fadd fast float %993, %555
  %995 = call float @dx.op.unary.f32(i32 7, float %994)  ; Saturate(value)
  %996 = fmul fast float %536, %991
  %997 = fsub fast float -0.000000e+00, %996
  %998 = fmul fast float %537, %991
  %999 = fsub fast float -0.000000e+00, %998
  %1000 = call float @dx.op.unary.f32(i32 21, float %997)  ; Exp(value)
  %1001 = call float @dx.op.unary.f32(i32 21, float %999)  ; Exp(value)
  %1002 = call float @dx.op.binary.f32(i32 35, float %544, float %1000)  ; FMax(a,b)
  %1003 = call float @dx.op.binary.f32(i32 35, float %544, float %1001)  ; FMax(a,b)
  %1004 = fsub fast float %1003, %1002
  %1005 = fmul fast float %1004, %995
  %1006 = fadd fast float %1005, %1002
  %1007 = call float @dx.op.unary.f32(i32 7, float %1006)  ; Saturate(value)
  %1008 = fsub fast float %541, %546
  %1009 = fsub fast float %542, %547
  %1010 = fsub fast float %543, %548
  %1011 = fmul fast float %995, %1008
  %1012 = fmul fast float %995, %1009
  %1013 = fmul fast float %995, %1010
  %1014 = fadd fast float %1011, %546
  %1015 = fadd fast float %1012, %547
  %1016 = fadd fast float %1013, %548
  %1017 = fsub fast float 1.000000e+00, %1007
  %1018 = fmul fast float %1017, %1014
  %1019 = fmul fast float %1017, %1015
  %1020 = fmul fast float %1017, %1016
  br label %1080

; <label>:1021                                    ; preds = %980
  %1022 = fmul fast float %991, %553
  %1023 = call float @dx.op.unary.f32(i32 7, float %1022)  ; Saturate(value)
  %1024 = fsub fast float 2.000000e+00, %1023
  %1025 = fmul fast float %1023, 9.921875e-01
  %1026 = fmul fast float %1025, %1024
  %1027 = fadd fast float %1026, 3.906250e-03
  %1028 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %1027, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1029 = extractvalue %dx.types.ResRet.f32 %1028, 0
  %1030 = fsub fast float %1023, %1029
  %1031 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1030)  ; FMax(a,b)
  %1032 = fmul fast float %539, %520
  %1033 = call float @dx.op.unary.f32(i32 6, float %1032)  ; FAbs(value)
  %1034 = fcmp fast ogt float %1033, 0x3EB0C6F7A0000000
  br i1 %1034, label %1035, label %1041, !dx.controlflow.hints !95

; <label>:1035                                    ; preds = %1021
  %1036 = fmul fast float %1032, 0xBFF7154760000000
  %1037 = call float @dx.op.unary.f32(i32 21, float %1036)  ; Exp(value)
  %1038 = fsub fast float 1.000000e+00, %1037
  %1039 = fdiv fast float %1038, %1032
  %1040 = fmul fast float %1039, %549
  br label %1041

; <label>:1041                                    ; preds = %1035, %1021
  %1042 = phi float [ %1040, %1035 ], [ %549, %1021 ]
  %1043 = fadd fast float %1042, %551
  %1044 = fmul fast float %1043, %1031
  %1045 = fmul fast float %536, %1044
  %1046 = fsub fast float -0.000000e+00, %1045
  %1047 = fmul fast float %537, %1044
  %1048 = fsub fast float -0.000000e+00, %1047
  %1049 = fmul fast float %538, %1044
  %1050 = fsub fast float -0.000000e+00, %1049
  %1051 = call float @dx.op.unary.f32(i32 21, float %1046)  ; Exp(value)
  %1052 = call float @dx.op.unary.f32(i32 21, float %1048)  ; Exp(value)
  %1053 = call float @dx.op.unary.f32(i32 21, float %1050)  ; Exp(value)
  %1054 = fmul fast float %565, %565
  %1055 = fadd fast float %1054, 1.000000e+00
  %1056 = fmul fast float %1055, 0x3FAE8EC8A0000000
  %1057 = fmul fast float %1056, %546
  %1058 = fmul fast float %1056, %547
  %1059 = fmul fast float %1056, %548
  %1060 = fmul fast float %565, %544
  %1061 = fsub fast float 1.000000e+00, %1060
  %1062 = fmul fast float %544, %544
  %1063 = fsub fast float 1.000000e+00, %1062
  %1064 = fmul fast float %1063, 0x3FB45F3060000000
  %1065 = fmul fast float %1061, %1061
  %1066 = fdiv fast float 1.000000e+00, %1065
  %1067 = fmul fast float %1064, %1066
  %1068 = fmul fast float %1067, %541
  %1069 = fmul fast float %1067, %542
  %1070 = fmul fast float %1067, %543
  %1071 = fadd fast float %1068, %1057
  %1072 = fadd fast float %1069, %1058
  %1073 = fadd fast float %1070, %1059
  %1074 = fsub fast float 1.000000e+00, %1051
  %1075 = fsub fast float 1.000000e+00, %1052
  %1076 = fsub fast float 1.000000e+00, %1053
  %1077 = fmul fast float %1071, %1074
  %1078 = fmul fast float %1072, %1075
  %1079 = fmul fast float %1073, %1076
  br label %1080

; <label>:1080                                    ; preds = %1041, %992
  %1081 = phi float [ %1018, %992 ], [ %1077, %1041 ]
  %1082 = phi float [ %1019, %992 ], [ %1078, %1041 ]
  %1083 = phi float [ %1020, %992 ], [ %1079, %1041 ]
  %1084 = phi float [ %1007, %992 ], [ %1051, %1041 ]
  %1085 = phi float [ %1007, %992 ], [ %1052, %1041 ]
  %1086 = phi float [ %1007, %992 ], [ %1053, %1041 ]
  br i1 %573, label %1087, label %1285, !dx.controlflow.hints !96

; <label>:1087                                    ; preds = %1080
  %1088 = extractvalue %dx.types.CBufRet.f32 %986, 0
  %1089 = fmul fast float %1088, %988
  %1090 = fsub fast float %983, %1081
  %1091 = fsub fast float %984, %1082
  %1092 = fsub fast float %985, %1083
  %1093 = fmul fast float %1089, %1090
  %1094 = fmul fast float %1089, %1091
  %1095 = fmul fast float %1089, %1092
  %1096 = fadd fast float %1093, %1081
  %1097 = fadd fast float %1094, %1082
  %1098 = fadd fast float %1095, %1083
  %1099 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1084)  ; FMax(a,b)
  %1100 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1085)  ; FMax(a,b)
  %1101 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1086)  ; FMax(a,b)
  %1102 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %982)  ; FMax(a,b)
  %1103 = call float @dx.op.binary.f32(i32 35, float %981, float %991)  ; FMax(a,b)
  %1104 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1103)  ; FMax(a,b)
  %1105 = fdiv fast float %981, %1104
  %1106 = call float @dx.op.unary.f32(i32 7, float %1105)  ; Saturate(value)
  %1107 = fdiv fast float %991, %1104
  %1108 = call float @dx.op.unary.f32(i32 7, float %1107)  ; Saturate(value)
  %1109 = fcmp fast une float %1102, 1.000000e+00
  br i1 %1109, label %1110, label %1123, !dx.controlflow.hints !97

; <label>:1110                                    ; preds = %1087
  %1111 = call float @dx.op.unary.f32(i32 23, float %1102)  ; Log(value)
  %1112 = fmul fast float %1111, 0x3FE62E4300000000
  %1113 = fmul fast float %983, %1112
  %1114 = fsub fast float -0.000000e+00, %1113
  %1115 = fmul fast float %984, %1112
  %1116 = fsub fast float -0.000000e+00, %1115
  %1117 = fmul fast float %985, %1112
  %1118 = fsub fast float -0.000000e+00, %1117
  %1119 = fsub fast float 1.000000e+00, %1102
  %1120 = fdiv fast float %1114, %1119
  %1121 = fdiv fast float %1116, %1119
  %1122 = fdiv fast float %1118, %1119
  br label %1123

; <label>:1123                                    ; preds = %1110, %1087
  %1124 = phi float [ %1120, %1110 ], [ %983, %1087 ]
  %1125 = phi float [ %1121, %1110 ], [ %984, %1087 ]
  %1126 = phi float [ %1122, %1110 ], [ %985, %1087 ]
  %1127 = phi float [ %1112, %1110 ], [ 0.000000e+00, %1087 ]
  %1128 = fcmp fast une float %1099, 1.000000e+00
  br i1 %1128, label %1129, label %1136, !dx.controlflow.hints !98

; <label>:1129                                    ; preds = %1123
  %1130 = call float @dx.op.unary.f32(i32 23, float %1099)  ; Log(value)
  %1131 = fmul fast float %1130, 0x3FE62E4300000000
  %1132 = fmul fast float %1096, %1131
  %1133 = fsub fast float -0.000000e+00, %1132
  %1134 = fsub fast float 1.000000e+00, %1099
  %1135 = fdiv fast float %1133, %1134
  br label %1136

; <label>:1136                                    ; preds = %1129, %1123
  %1137 = phi float [ %1135, %1129 ], [ %1096, %1123 ]
  %1138 = phi float [ %1131, %1129 ], [ 0.000000e+00, %1123 ]
  %1139 = fcmp fast une float %1100, 1.000000e+00
  br i1 %1139, label %1140, label %1147, !dx.controlflow.hints !98

; <label>:1140                                    ; preds = %1136
  %1141 = call float @dx.op.unary.f32(i32 23, float %1100)  ; Log(value)
  %1142 = fmul fast float %1141, 0x3FE62E4300000000
  %1143 = fmul fast float %1097, %1142
  %1144 = fsub fast float -0.000000e+00, %1143
  %1145 = fsub fast float 1.000000e+00, %1100
  %1146 = fdiv fast float %1144, %1145
  br label %1147

; <label>:1147                                    ; preds = %1140, %1136
  %1148 = phi float [ %1146, %1140 ], [ %1097, %1136 ]
  %1149 = phi float [ %1142, %1140 ], [ 0.000000e+00, %1136 ]
  %1150 = fcmp fast une float %1101, 1.000000e+00
  br i1 %1150, label %1151, label %1158, !dx.controlflow.hints !98

; <label>:1151                                    ; preds = %1147
  %1152 = call float @dx.op.unary.f32(i32 23, float %1101)  ; Log(value)
  %1153 = fmul fast float %1152, 0x3FE62E4300000000
  %1154 = fmul fast float %1098, %1153
  %1155 = fsub fast float -0.000000e+00, %1154
  %1156 = fsub fast float 1.000000e+00, %1101
  %1157 = fdiv fast float %1155, %1156
  br label %1158

; <label>:1158                                    ; preds = %1151, %1147
  %1159 = phi float [ %1157, %1151 ], [ %1098, %1147 ]
  %1160 = phi float [ %1153, %1151 ], [ 0.000000e+00, %1147 ]
  %1161 = fmul fast float %1124, %1108
  %1162 = fmul fast float %1125, %1108
  %1163 = fmul fast float %1126, %1108
  %1164 = fmul fast float %1127, %1108
  %1165 = fmul fast float %1137, %1106
  %1166 = fmul fast float %1148, %1106
  %1167 = fmul fast float %1159, %1106
  %1168 = fmul fast float %1138, %1106
  %1169 = fmul fast float %1149, %1106
  %1170 = fmul fast float %1160, %1106
  %1171 = fadd fast float %1165, %1161
  %1172 = fadd fast float %1166, %1162
  %1173 = fadd fast float %1167, %1163
  %1174 = fadd fast float %1168, %1164
  %1175 = fadd fast float %1169, %1164
  %1176 = fadd fast float %1170, %1164
  %1177 = fcmp fast une float %1174, 0.000000e+00
  br i1 %1177, label %1178, label %1185, !dx.controlflow.hints !99

; <label>:1178                                    ; preds = %1158
  %1179 = fmul fast float %1174, 0x3FF7154760000000
  %1180 = call float @dx.op.unary.f32(i32 21, float %1179)  ; Exp(value)
  %1181 = fsub fast float 1.000000e+00, %1180
  %1182 = fmul fast float %1171, %1181
  %1183 = fsub fast float -0.000000e+00, %1182
  %1184 = fdiv fast float %1183, %1174
  br label %1185

; <label>:1185                                    ; preds = %1178, %1158
  %1186 = phi float [ %1180, %1178 ], [ 1.000000e+00, %1158 ]
  %1187 = phi float [ %1184, %1178 ], [ %1171, %1158 ]
  %1188 = fcmp fast une float %1175, 0.000000e+00
  br i1 %1188, label %1189, label %1196, !dx.controlflow.hints !99

; <label>:1189                                    ; preds = %1185
  %1190 = fmul fast float %1175, 0x3FF7154760000000
  %1191 = call float @dx.op.unary.f32(i32 21, float %1190)  ; Exp(value)
  %1192 = fsub fast float 1.000000e+00, %1191
  %1193 = fmul fast float %1172, %1192
  %1194 = fsub fast float -0.000000e+00, %1193
  %1195 = fdiv fast float %1194, %1175
  br label %1196

; <label>:1196                                    ; preds = %1189, %1185
  %1197 = phi float [ %1191, %1189 ], [ 1.000000e+00, %1185 ]
  %1198 = phi float [ %1195, %1189 ], [ %1172, %1185 ]
  %1199 = fcmp fast une float %1176, 0.000000e+00
  br i1 %1199, label %1200, label %1207, !dx.controlflow.hints !99

; <label>:1200                                    ; preds = %1196
  %1201 = fmul fast float %1176, 0x3FF7154760000000
  %1202 = call float @dx.op.unary.f32(i32 21, float %1201)  ; Exp(value)
  %1203 = fsub fast float 1.000000e+00, %1202
  %1204 = fmul fast float %1173, %1203
  %1205 = fsub fast float -0.000000e+00, %1204
  %1206 = fdiv fast float %1205, %1176
  br label %1207

; <label>:1207                                    ; preds = %1200, %1196
  %1208 = phi float [ %1202, %1200 ], [ 1.000000e+00, %1196 ]
  %1209 = phi float [ %1206, %1200 ], [ %1173, %1196 ]
  %1210 = fcmp fast ogt float %1106, %1108
  br i1 %1210, label %1211, label %1231

; <label>:1211                                    ; preds = %1207
  %1212 = fsub fast float 1.000000e+00, %1108
  %1213 = fmul fast float %1124, %1212
  %1214 = fmul fast float %1125, %1212
  %1215 = fmul fast float %1126, %1212
  %1216 = fmul fast float %1127, %1212
  %1217 = fcmp fast une float %1216, 0.000000e+00
  br i1 %1217, label %1218, label %1269, !dx.controlflow.hints !100

; <label>:1218                                    ; preds = %1211
  %1219 = fmul fast float %1216, 0x3FF7154760000000
  %1220 = call float @dx.op.unary.f32(i32 21, float %1219)  ; Exp(value)
  %1221 = fsub fast float 1.000000e+00, %1220
  %1222 = fmul fast float %1213, %1221
  %1223 = fsub fast float -0.000000e+00, %1222
  %1224 = fmul fast float %1214, %1221
  %1225 = fsub fast float -0.000000e+00, %1224
  %1226 = fmul fast float %1215, %1221
  %1227 = fsub fast float -0.000000e+00, %1226
  %1228 = fdiv fast float %1223, %1216
  %1229 = fdiv fast float %1225, %1216
  %1230 = fdiv fast float %1227, %1216
  br label %1269

; <label>:1231                                    ; preds = %1207
  %1232 = fsub fast float 1.000000e+00, %1106
  %1233 = fmul fast float %1137, %1232
  %1234 = fmul fast float %1148, %1232
  %1235 = fmul fast float %1159, %1232
  %1236 = fmul fast float %1138, %1232
  %1237 = fmul fast float %1149, %1232
  %1238 = fmul fast float %1160, %1232
  %1239 = fcmp fast une float %1236, 0.000000e+00
  br i1 %1239, label %1240, label %1247, !dx.controlflow.hints !99

; <label>:1240                                    ; preds = %1231
  %1241 = fmul fast float %1236, 0x3FF7154760000000
  %1242 = call float @dx.op.unary.f32(i32 21, float %1241)  ; Exp(value)
  %1243 = fsub fast float 1.000000e+00, %1242
  %1244 = fmul fast float %1233, %1243
  %1245 = fsub fast float -0.000000e+00, %1244
  %1246 = fdiv fast float %1245, %1236
  br label %1247

; <label>:1247                                    ; preds = %1240, %1231
  %1248 = phi float [ %1246, %1240 ], [ %1233, %1231 ]
  %1249 = phi float [ %1242, %1240 ], [ 1.000000e+00, %1231 ]
  %1250 = fcmp fast une float %1237, 0.000000e+00
  br i1 %1250, label %1251, label %1258, !dx.controlflow.hints !99

; <label>:1251                                    ; preds = %1247
  %1252 = fmul fast float %1237, 0x3FF7154760000000
  %1253 = call float @dx.op.unary.f32(i32 21, float %1252)  ; Exp(value)
  %1254 = fsub fast float 1.000000e+00, %1253
  %1255 = fmul fast float %1234, %1254
  %1256 = fsub fast float -0.000000e+00, %1255
  %1257 = fdiv fast float %1256, %1237
  br label %1258

; <label>:1258                                    ; preds = %1251, %1247
  %1259 = phi float [ %1257, %1251 ], [ %1234, %1247 ]
  %1260 = phi float [ %1253, %1251 ], [ 1.000000e+00, %1247 ]
  %1261 = fcmp fast une float %1238, 0.000000e+00
  br i1 %1261, label %1262, label %1269, !dx.controlflow.hints !99

; <label>:1262                                    ; preds = %1258
  %1263 = fmul fast float %1238, 0x3FF7154760000000
  %1264 = call float @dx.op.unary.f32(i32 21, float %1263)  ; Exp(value)
  %1265 = fsub fast float 1.000000e+00, %1264
  %1266 = fmul fast float %1235, %1265
  %1267 = fsub fast float -0.000000e+00, %1266
  %1268 = fdiv fast float %1267, %1238
  br label %1269

; <label>:1269                                    ; preds = %1262, %1258, %1218, %1211
  %1270 = phi float [ %1268, %1262 ], [ %1230, %1218 ], [ %1215, %1211 ], [ %1235, %1258 ]
  %1271 = phi float [ %1259, %1262 ], [ %1229, %1218 ], [ %1214, %1211 ], [ %1259, %1258 ]
  %1272 = phi float [ %1248, %1262 ], [ %1228, %1218 ], [ %1213, %1211 ], [ %1248, %1258 ]
  %1273 = phi float [ %1264, %1262 ], [ %1220, %1218 ], [ 1.000000e+00, %1211 ], [ 1.000000e+00, %1258 ]
  %1274 = phi float [ %1260, %1262 ], [ %1220, %1218 ], [ 1.000000e+00, %1211 ], [ %1260, %1258 ]
  %1275 = phi float [ %1249, %1262 ], [ %1220, %1218 ], [ 1.000000e+00, %1211 ], [ %1249, %1258 ]
  %1276 = fmul fast float %1275, %1187
  %1277 = fmul fast float %1274, %1198
  %1278 = fmul fast float %1273, %1209
  %1279 = fadd fast float %1276, %1272
  %1280 = fadd fast float %1277, %1271
  %1281 = fadd fast float %1278, %1270
  %1282 = fmul fast float %1275, %1186
  %1283 = fmul fast float %1274, %1197
  %1284 = fmul fast float %1273, %1208
  br label %1285

; <label>:1285                                    ; preds = %1269, %1080
  %1286 = phi float [ %1284, %1269 ], [ %1086, %1080 ]
  %1287 = phi float [ %1283, %1269 ], [ %1085, %1080 ]
  %1288 = phi float [ %1282, %1269 ], [ %1084, %1080 ]
  %1289 = phi float [ %1281, %1269 ], [ %1083, %1080 ]
  %1290 = phi float [ %1280, %1269 ], [ %1082, %1080 ]
  %1291 = phi float [ %1279, %1269 ], [ %1081, %1080 ]
  %1292 = fmul fast float %1291, %354
  %1293 = fmul fast float %1290, %354
  %1294 = fmul fast float %1289, %354
  %1295 = fmul fast float %1288, %528
  %1296 = call float @dx.op.dot3.f32(i32 55, float %1288, float %1287, float %1286, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1297 = call float @dx.op.dot3.f32(i32 55, float %1292, float %1293, float %1294, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1298 = select i1 %107, float %1296, float %1288
  %1299 = select i1 %107, float %1296, float %1287
  %1300 = select i1 %107, float 1.000000e+00, float %1286
  %1301 = select i1 %107, float %1297, float %1292
  %1302 = select i1 %107, float 0.000000e+00, float %1293
  %1303 = select i1 %107, float 0.000000e+00, float %1294
  %1304 = fmul fast float %1298, %522
  %1305 = fmul fast float %1299, %523
  %1306 = fmul fast float %1300, %524
  %1307 = fadd fast float %1304, %1301
  %1308 = fadd fast float %1305, %1302
  %1309 = fadd fast float %1303, %1306
  %1310 = fmul fast float %1298, %525
  %1311 = fmul fast float %1299, %526
  %1312 = fmul fast float %1300, %527
  %1313 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1314 = extractvalue %dx.types.CBufRet.i32 %1313, 0
  %1315 = icmp eq i32 %1314, 0
  br i1 %1315, label %1683, label %1316, !dx.controlflow.hints !101

; <label>:1316                                    ; preds = %1285
  %1317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1318 = extractvalue %dx.types.CBufRet.f32 %1317, 2
  %1319 = extractvalue %dx.types.CBufRet.f32 %1317, 3
  %1320 = fmul fast float %1318, %37
  %1321 = fmul fast float %1319, %38
  %1322 = fmul fast float %1320, 2.000000e+00
  %1323 = fmul fast float %1321, 2.000000e+00
  %1324 = fsub fast float 1.000000e+00, %1322
  %1325 = fsub fast float 1.000000e+00, %1323
  %1326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1327 = extractvalue %dx.types.CBufRet.f32 %1326, 0
  %1328 = extractvalue %dx.types.CBufRet.f32 %1326, 1
  %1329 = extractvalue %dx.types.CBufRet.f32 %1326, 2
  %1330 = fmul fast float %1324, %1327
  %1331 = fmul fast float %1324, %1328
  %1332 = fmul fast float %1324, %1329
  %1333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1334 = extractvalue %dx.types.CBufRet.f32 %1333, 0
  %1335 = extractvalue %dx.types.CBufRet.f32 %1333, 1
  %1336 = extractvalue %dx.types.CBufRet.f32 %1333, 2
  %1337 = fmul fast float %1325, %1334
  %1338 = fmul fast float %1325, %1335
  %1339 = fmul fast float %1325, %1336
  %1340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1341 = extractvalue %dx.types.CBufRet.f32 %1340, 0
  %1342 = extractvalue %dx.types.CBufRet.f32 %1340, 1
  %1343 = extractvalue %dx.types.CBufRet.f32 %1340, 2
  %1344 = fadd fast float %1337, %1341
  %1345 = fadd fast float %1344, %1330
  %1346 = fadd fast float %1338, %1342
  %1347 = fadd fast float %1346, %1331
  %1348 = fadd fast float %1339, %1343
  %1349 = fadd fast float %1348, %1332
  %1350 = fmul fast float %1345, %521
  %1351 = fmul fast float %1347, %521
  %1352 = fmul fast float %1349, %521
  %1353 = fmul fast float %1350, %1350
  %1354 = fmul fast float %1351, %1351
  %1355 = fadd fast float %1353, %1354
  %1356 = fmul fast float %1352, %1352
  %1357 = fadd fast float %1355, %1356
  %1358 = call float @dx.op.unary.f32(i32 24, float %1357)  ; Sqrt(value)
  %1359 = extractvalue %dx.types.CBufRet.f32 %362, 0
  %1360 = fsub fast float %1358, %1359
  %1361 = extractvalue %dx.types.CBufRet.f32 %362, 2
  %1362 = fmul fast float %1360, %1361
  %1363 = call float @dx.op.unary.f32(i32 7, float %1362)  ; Saturate(value)
  %1364 = fadd fast float %1363, -5.000000e-01
  %1365 = fmul fast float %1364, 2.000000e+00
  %1366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1367 = extractvalue %dx.types.CBufRet.f32 %1366, 2
  %1368 = call float @dx.op.binary.f32(i32 36, float %1367, float %1365)  ; FMin(a,b)
  %1369 = fsub fast float -0.000000e+00, %1367
  %1370 = fcmp fast ogt float %1368, %1369
  br i1 %1370, label %1371, label %1683, !dx.controlflow.hints !102

; <label>:1371                                    ; preds = %1316
  %1372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %1373 = extractvalue %dx.types.CBufRet.f32 %1372, 3
  %1374 = fcmp fast ogt float %1373, 0.000000e+00
  br i1 %1374, label %1375, label %1450, !dx.controlflow.hints !103

; <label>:1375                                    ; preds = %1371
  %1376 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %12, i32 0)  ; GetDimensions(handle,mipLevel)
  %1377 = extractvalue %dx.types.Dimensions %1376, 0
  %1378 = sitofp i32 %1377 to float
  %1379 = extractvalue %dx.types.Dimensions %1376, 1
  %1380 = sitofp i32 %1379 to float
  %1381 = fmul fast float %1320, %1378
  %1382 = fmul fast float %1321, %1380
  %1383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1384 = extractvalue %dx.types.CBufRet.f32 %1383, 1
  %1385 = fsub fast float -0.000000e+00, %1384
  %1386 = fptoui float %1385 to i32
  %1387 = fptoui float %1381 to i32
  %1388 = fptoui float %1382 to i32
  %1389 = and i32 %1386, 31
  %1390 = lshr i32 %1387, %1389
  %1391 = lshr i32 %1388, %1389
  %1392 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %1386, i32 %1390, i32 %1391, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1393 = extractvalue %dx.types.ResRet.f32 %1392, 0
  %1394 = fcmp fast olt float %1393, -1.000000e+00
  %1395 = fcmp fast ogt float %1393, -1.000000e+00
  %1396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1397 = extractvalue %dx.types.CBufRet.f32 %1396, 1
  %1398 = select i1 %1395, float %1397, float 1.000000e+00
  %1399 = fadd fast float %1393, 1.000000e+00
  %1400 = fmul fast float %1398, %1399
  %1401 = call float @dx.op.unary.f32(i32 6, float %1400)  ; FAbs(value)
  %1402 = extractvalue %dx.types.CBufRet.f32 %1396, 3
  %1403 = fcmp fast oge float %1401, %1402
  %1404 = select i1 %1403, float 0x4197782600000000, float %1401
  %1405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %1406 = extractvalue %dx.types.CBufRet.f32 %1405, 0
  %1407 = extractvalue %dx.types.CBufRet.f32 %1405, 1
  %1408 = extractvalue %dx.types.CBufRet.f32 %1405, 2
  %1409 = select i1 %1394, float %1406, float %1327
  %1410 = select i1 %1394, float %1407, float %1328
  %1411 = select i1 %1394, float %1408, float %1329
  %1412 = fmul fast float %1409, %1324
  %1413 = fmul fast float %1410, %1324
  %1414 = fmul fast float %1411, %1324
  %1415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %1416 = extractvalue %dx.types.CBufRet.f32 %1415, 0
  %1417 = extractvalue %dx.types.CBufRet.f32 %1415, 1
  %1418 = extractvalue %dx.types.CBufRet.f32 %1415, 2
  %1419 = select i1 %1394, float %1416, float %1334
  %1420 = select i1 %1394, float %1417, float %1335
  %1421 = select i1 %1394, float %1418, float %1336
  %1422 = fmul fast float %1419, %1325
  %1423 = fmul fast float %1420, %1325
  %1424 = fmul fast float %1421, %1325
  %1425 = fadd fast float %1422, %1412
  %1426 = fadd fast float %1423, %1413
  %1427 = fadd fast float %1424, %1414
  %1428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %1429 = extractvalue %dx.types.CBufRet.f32 %1428, 0
  %1430 = extractvalue %dx.types.CBufRet.f32 %1428, 1
  %1431 = extractvalue %dx.types.CBufRet.f32 %1428, 2
  %1432 = select i1 %1394, float %1429, float %1341
  %1433 = select i1 %1394, float %1430, float %1342
  %1434 = select i1 %1394, float %1431, float %1343
  %1435 = fadd fast float %1425, %1432
  %1436 = fadd fast float %1426, %1433
  %1437 = fadd fast float %1427, %1434
  %1438 = fmul fast float %1435, %1404
  %1439 = fmul fast float %1436, %1404
  %1440 = fmul fast float %1437, %1404
  %1441 = fmul fast float %1438, %1438
  %1442 = fmul fast float %1439, %1439
  %1443 = fadd fast float %1441, %1442
  %1444 = fmul fast float %1440, %1440
  %1445 = fadd fast float %1443, %1444
  %1446 = call float @dx.op.unary.f32(i32 24, float %1445)  ; Sqrt(value)
  %1447 = fsub fast float %1446, %1359
  %1448 = fmul fast float %1447, %1361
  %1449 = call float @dx.op.unary.f32(i32 7, float %1448)  ; Saturate(value)
  br label %1450

; <label>:1450                                    ; preds = %1375, %1371
  %1451 = phi float [ %1449, %1375 ], [ 1.000000e+00, %1371 ]
  %1452 = fmul fast float %1368, 5.000000e-01
  %1453 = fadd fast float %1452, 5.000000e-01
  %1454 = call float @dx.op.unary.f32(i32 22, float %1453)  ; Frc(value)
  %1455 = call float @dx.op.unary.f32(i32 27, float %1454)  ; Round_ni(value)
  %1456 = call float @dx.op.unary.f32(i32 22, float %1454)  ; Frc(value)
  %1457 = fmul fast float %1456, 2.000000e+00
  %1458 = fadd fast float %1457, -1.000000e+00
  %1459 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %18, float %1320, float %1321, float %1455, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1460 = extractvalue %dx.types.ResRet.f32 %1459, 0
  %1461 = extractvalue %dx.types.ResRet.f32 %1459, 1
  %1462 = extractvalue %dx.types.ResRet.f32 %1459, 2
  %1463 = extractvalue %dx.types.ResRet.f32 %1459, 3
  %1464 = fadd fast float %1460, -5.000000e-01
  %1465 = fadd fast float %1462, -5.000000e-01
  %1466 = fmul fast float %1464, 0xBFD5555560000000
  %1467 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1465, float %1466)  ; FMad(a,b,c)
  %1468 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1461, float 0.000000e+00)  ; FMad(a,b,c)
  %1469 = fadd fast float %1468, %1463
  %1470 = fmul fast float %1464, -7.500000e-01
  %1471 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1465, float %1470)  ; FMad(a,b,c)
  %1472 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1461, float 0.000000e+00)  ; FMad(a,b,c)
  %1473 = fadd fast float %1472, %1463
  %1474 = call float @dx.op.binary.f32(i32 35, float %1467, float -1.000000e+00)  ; FMax(a,b)
  %1475 = call float @dx.op.binary.f32(i32 35, float %1469, float -1.000000e+00)  ; FMax(a,b)
  %1476 = call float @dx.op.binary.f32(i32 35, float %1471, float -1.000000e+00)  ; FMax(a,b)
  %1477 = call float @dx.op.binary.f32(i32 35, float %1473, float -1.000000e+00)  ; FMax(a,b)
  %1478 = call float @dx.op.binary.f32(i32 36, float %1474, float 1.000000e+00)  ; FMin(a,b)
  %1479 = call float @dx.op.binary.f32(i32 36, float %1475, float 1.000000e+00)  ; FMin(a,b)
  %1480 = call float @dx.op.binary.f32(i32 36, float %1476, float 1.000000e+00)  ; FMin(a,b)
  %1481 = call float @dx.op.binary.f32(i32 36, float %1477, float 1.000000e+00)  ; FMin(a,b)
  %1482 = fcmp fast olt float %1478, 0x3FEFFF8020000000
  br i1 %1482, label %1483, label %1598, !dx.controlflow.hints !104

; <label>:1483                                    ; preds = %1450
  %1484 = extractvalue %dx.types.CBufRet.f32 %1366, 3
  %1485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1486 = extractvalue %dx.types.CBufRet.f32 %1485, 0
  %1487 = extractvalue %dx.types.CBufRet.f32 %1485, 1
  %1488 = extractvalue %dx.types.CBufRet.f32 %1485, 2
  %1489 = extractvalue %dx.types.CBufRet.f32 %1485, 3
  %1490 = fsub fast float %1486, %1478
  %1491 = fsub fast float %1487, %1479
  %1492 = fsub fast float %1488, %1480
  %1493 = fsub fast float %1489, %1481
  %1494 = fmul fast float %1490, %1484
  %1495 = fmul fast float %1491, %1484
  %1496 = fmul fast float %1492, %1484
  %1497 = fmul fast float %1493, %1484
  %1498 = fadd fast float %1494, %1478
  %1499 = fadd fast float %1495, %1479
  %1500 = fsub fast float -0.000000e+00, %1499
  %1501 = fadd fast float %1496, %1480
  %1502 = fadd fast float %1497, %1481
  %1503 = fmul fast float %1498, %1498
  %1504 = fsub fast float %1499, %1503
  %1505 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1504)  ; FMax(a,b)
  %1506 = fdiv fast float 1.000000e+00, %1505
  %1507 = fmul fast float %1499, %1498
  %1508 = fsub fast float %1501, %1507
  %1509 = fsub fast float %1458, %1498
  %1510 = fmul fast float %1458, %1458
  %1511 = fsub fast float %1510, %1499
  %1512 = fmul fast float %1509, %1506
  %1513 = fmul fast float %1512, %1508
  %1514 = fsub fast float %1511, %1513
  %1515 = fmul fast float %1499, %1499
  %1516 = fsub fast float %1502, %1515
  %1517 = fmul fast float %1508, %1508
  %1518 = fmul fast float %1517, %1506
  %1519 = fsub fast float %1516, %1518
  %1520 = fdiv fast float %1514, %1519
  %1521 = fmul fast float %1508, %1520
  %1522 = fsub fast float %1509, %1521
  %1523 = fmul fast float %1522, %1506
  %1524 = fmul fast float %1523, %1498
  %1525 = fsub fast float 1.000000e+00, %1524
  %1526 = fmul fast float %1499, %1520
  %1527 = fsub fast float %1525, %1526
  %1528 = fmul fast float %1523, %1523
  %1529 = fmul fast float %1520, 4.000000e+00
  %1530 = fmul fast float %1529, %1527
  %1531 = fsub fast float %1528, %1530
  %1532 = call float @dx.op.unary.f32(i32 24, float %1531)  ; Sqrt(value)
  %1533 = fcmp fast oge float %1523, 0.000000e+00
  %1534 = fsub fast float -0.000000e+00, %1532
  %1535 = select i1 %1533, float %1534, float %1532
  %1536 = fsub fast float %1535, %1523
  %1537 = fdiv fast float %1536, %1520
  %1538 = fdiv fast float %1527, %1536
  %1539 = fmul fast float %1537, 5.000000e-01
  %1540 = fmul fast float %1538, 2.000000e+00
  %1541 = select i1 %1533, float %1539, float %1540
  %1542 = select i1 %1533, float %1540, float %1539
  %1543 = call float @dx.op.binary.f32(i32 35, float %1541, float %1542)  ; FMax(a,b)
  %1544 = call float @dx.op.binary.f32(i32 36, float %1541, float %1542)  ; FMin(a,b)
  %1545 = fcmp fast ogt float %1458, %1544
  br i1 %1545, label %1546, label %1556

; <label>:1546                                    ; preds = %1483
  %1547 = fsub fast float %1458, %1544
  %1548 = fsub fast float %1543, %1544
  %1549 = fmul fast float %1547, %1548
  %1550 = fmul fast float %1543, %1458
  %1551 = fadd fast float %1543, %1458
  %1552 = fmul fast float %1551, %1498
  %1553 = fadd fast float %1550, %1499
  %1554 = fsub fast float %1553, %1552
  %1555 = fdiv fast float %1554, %1549
  br label %1556

; <label>:1556                                    ; preds = %1546, %1483
  %1557 = phi float [ %1555, %1546 ], [ 0.000000e+00, %1483 ]
  %1558 = fcmp fast ogt float %1458, %1543
  %1559 = fsub fast float %1458, %1543
  br i1 %1558, label %1560, label %1570

; <label>:1560                                    ; preds = %1556
  %1561 = fsub fast float %1543, %1544
  %1562 = fmul fast float %1561, %1559
  %1563 = fmul fast float %1544, %1458
  %1564 = fadd fast float %1544, %1458
  %1565 = fmul fast float %1564, %1498
  %1566 = fsub fast float %1500, %1563
  %1567 = fadd fast float %1566, %1565
  %1568 = fdiv fast float %1567, %1562
  %1569 = fadd fast float %1568, %1557
  br label %1570

; <label>:1570                                    ; preds = %1560, %1556
  %1571 = phi float [ %1569, %1560 ], [ %1557, %1556 ]
  %1572 = fsub fast float %1458, %1544
  %1573 = fmul fast float %1572, %1559
  %1574 = fmul fast float %1544, %1543
  %1575 = fadd fast float %1544, %1543
  %1576 = fmul fast float %1575, %1498
  %1577 = fadd fast float %1574, %1499
  %1578 = fsub fast float %1577, %1576
  %1579 = fdiv fast float %1578, %1573
  %1580 = call float @dx.op.unary.f32(i32 7, float %1571)  ; Saturate(value)
  %1581 = fcmp fast oeq float %363, 0.000000e+00
  %1582 = extractvalue %dx.types.CBufRet.f32 %1366, 0
  %1583 = fcmp fast oeq float %1582, 0.000000e+00
  %1584 = or i1 %1581, %1583
  %1585 = fmul fast float %1582, 2.000000e+00
  %1586 = fadd fast float %1367, %1368
  %1587 = fdiv fast float %1586, %1585
  %1588 = call float @dx.op.unary.f32(i32 7, float %1587)  ; Saturate(value)
  %1589 = fmul fast float %1588, 2.000000e+00
  %1590 = fsub fast float 3.000000e+00, %1589
  %1591 = fmul fast float %1588, %1588
  %1592 = fmul fast float %1591, %1590
  %1593 = select i1 %1584, float 1.000000e+00, float %1592
  %1594 = fmul fast float %1579, %363
  %1595 = fadd fast float %1580, %1594
  %1596 = call float @dx.op.unary.f32(i32 7, float %1595)  ; Saturate(value)
  %1597 = fmul fast float %1593, %1596
  br label %1598

; <label>:1598                                    ; preds = %1570, %1450
  %1599 = phi float [ %1597, %1570 ], [ 0.000000e+00, %1450 ]
  %1600 = fsub fast float 1.000000e+00, %1599
  %1601 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %18, float %1320, float %1321, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1602 = extractvalue %dx.types.ResRet.f32 %1601, 0
  %1603 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1604 = extractvalue %dx.types.CBufRet.i32 %1603, 2
  %1605 = icmp eq i32 %1604, 0
  br i1 %1605, label %1611, label %1606

; <label>:1606                                    ; preds = %1598
  %1607 = call float @dx.op.unary.f32(i32 7, float %1599)  ; Saturate(value)
  %1608 = fadd fast float %1602, -1.000000e+00
  %1609 = fmul fast float %1607, %1608
  %1610 = fadd fast float %1609, 1.000000e+00
  br label %1611

; <label>:1611                                    ; preds = %1606, %1598
  %1612 = phi float [ %1610, %1606 ], [ %1600, %1598 ]
  br i1 %1374, label %1613, label %1631

; <label>:1613                                    ; preds = %1611
  %1614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1615 = extractvalue %dx.types.CBufRet.f32 %1614, 1
  %1616 = fsub fast float %1451, %1615
  %1617 = call float @dx.op.unary.f32(i32 7, float %1616)  ; Saturate(value)
  %1618 = fsub fast float %1451, %1373
  %1619 = call float @dx.op.unary.f32(i32 7, float %1618)  ; Saturate(value)
  %1620 = fsub fast float %1617, %1619
  %1621 = fsub fast float %1453, %1619
  %1622 = fdiv fast float %1621, %1620
  %1623 = call float @dx.op.unary.f32(i32 7, float %1622)  ; Saturate(value)
  %1624 = fmul fast float %1623, 2.000000e+00
  %1625 = fsub fast float 3.000000e+00, %1624
  %1626 = fsub fast float %1602, %1612
  %1627 = fmul fast float %1623, %1623
  %1628 = fmul fast float %1627, %1626
  %1629 = fmul fast float %1628, %1625
  %1630 = fadd fast float %1629, %1612
  br label %1631

; <label>:1631                                    ; preds = %1613, %1611
  %1632 = phi float [ %1630, %1613 ], [ %1612, %1611 ]
  %1633 = call float @dx.op.binary.f32(i32 35, float %1602, float %1632)  ; FMax(a,b)
  %1634 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1635 = extractvalue %dx.types.CBufRet.i32 %1634, 2
  %1636 = and i32 %1635, 1
  %1637 = icmp eq i32 %1636, 0
  %1638 = fcmp fast une float %1633, 1.000000e+00
  %1639 = and i1 %1638, %1637
  br i1 %1639, label %1640, label %1659

; <label>:1640                                    ; preds = %1631
  %1641 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %18, float %1320, float %1321, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1642 = extractvalue %dx.types.ResRet.f32 %1641, 0
  %1643 = extractvalue %dx.types.ResRet.f32 %1641, 1
  %1644 = extractvalue %dx.types.ResRet.f32 %1641, 2
  %1645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1646 = extractvalue %dx.types.CBufRet.f32 %1645, 1
  %1647 = fmul fast float %1646, %1642
  %1648 = fmul fast float %1646, %1643
  %1649 = fmul fast float %1646, %1644
  %1650 = fcmp fast ogt float %1602, 0x3FEFFF2E40000000
  %1651 = fsub fast float 1.000000e+00, %1633
  %1652 = fsub fast float 1.000000e+00, %1602
  %1653 = fdiv fast float %1651, %1652
  %1654 = call float @dx.op.unary.f32(i32 7, float %1653)  ; Saturate(value)
  %1655 = select i1 %1650, float 0.000000e+00, float %1654
  %1656 = fmul fast float %1647, %1655
  %1657 = fmul fast float %1648, %1655
  %1658 = fmul fast float %1649, %1655
  br label %1659

; <label>:1659                                    ; preds = %1640, %1631
  %1660 = phi float [ 0.000000e+00, %1631 ], [ %1656, %1640 ]
  %1661 = phi float [ 0.000000e+00, %1631 ], [ %1657, %1640 ]
  %1662 = phi float [ 0.000000e+00, %1631 ], [ %1658, %1640 ]
  %1663 = fmul fast float %1660, %354
  %1664 = fmul fast float %1661, %354
  %1665 = fmul fast float %1662, %354
  %1666 = fmul fast float %1633, %1295
  %1667 = call float @dx.op.dot3.f32(i32 55, float %1633, float %1633, float %1633, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1668 = call float @dx.op.dot3.f32(i32 55, float %1663, float %1664, float %1665, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1669 = select i1 %107, float %1667, float %1633
  %1670 = select i1 %107, float 1.000000e+00, float %1633
  %1671 = select i1 %107, float %1668, float %1663
  %1672 = select i1 %107, float 0.000000e+00, float %1664
  %1673 = select i1 %107, float 0.000000e+00, float %1665
  %1674 = fmul fast float %1669, %1307
  %1675 = fmul fast float %1669, %1308
  %1676 = fmul fast float %1670, %1309
  %1677 = fadd fast float %1674, %1671
  %1678 = fadd fast float %1675, %1672
  %1679 = fadd fast float %1673, %1676
  %1680 = fmul fast float %1669, %1310
  %1681 = fmul fast float %1669, %1311
  %1682 = fmul fast float %1670, %1312
  br label %1683

; <label>:1683                                    ; preds = %1659, %1316, %1285, %517
  %1684 = phi float [ %522, %517 ], [ %1307, %1285 ], [ %1677, %1659 ], [ %1307, %1316 ]
  %1685 = phi float [ %523, %517 ], [ %1308, %1285 ], [ %1678, %1659 ], [ %1308, %1316 ]
  %1686 = phi float [ %524, %517 ], [ %1309, %1285 ], [ %1679, %1659 ], [ %1309, %1316 ]
  %1687 = phi float [ %525, %517 ], [ %1310, %1285 ], [ %1680, %1659 ], [ %1310, %1316 ]
  %1688 = phi float [ %526, %517 ], [ %1311, %1285 ], [ %1681, %1659 ], [ %1311, %1316 ]
  %1689 = phi float [ %527, %517 ], [ %1312, %1285 ], [ %1682, %1659 ], [ %1312, %1316 ]
  %1690 = phi float [ %528, %517 ], [ %1295, %1285 ], [ %1666, %1659 ], [ %1295, %1316 ]
  %1691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1692 = extractvalue %dx.types.CBufRet.f32 %1691, 2
  %1693 = extractvalue %dx.types.CBufRet.f32 %1691, 3
  %1694 = fmul fast float %1692, %37
  %1695 = fmul fast float %1693, %38
  %1696 = call float @dx.op.unary.f32(i32 7, float %1694)  ; Saturate(value)
  %1697 = call float @dx.op.unary.f32(i32 7, float %1695)  ; Saturate(value)
  %1698 = select i1 %374, i32 2, i32 0
  %1699 = or i32 %1698, 1
  %1700 = uitofp i32 %1699 to float
  %1701 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %18, float %1696, float %1697, float %1700, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1702 = extractvalue %dx.types.ResRet.f32 %1701, 0
  %1703 = extractvalue %dx.types.ResRet.f32 %1701, 1
  %1704 = extractvalue %dx.types.ResRet.f32 %1701, 2
  %1705 = extractvalue %dx.types.ResRet.f32 %1701, 3
  %1706 = add nuw nsw i32 %1698, 2
  %1707 = uitofp i32 %1706 to float
  %1708 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %18, float %1696, float %1697, float %1707, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1709 = extractvalue %dx.types.ResRet.f32 %1708, 0
  %1710 = extractvalue %dx.types.ResRet.f32 %1708, 1
  %1711 = extractvalue %dx.types.ResRet.f32 %1708, 2
  %1712 = extractvalue %dx.types.ResRet.f32 %1708, 3
  %1713 = call float @dx.op.binary.f32(i32 35, float %1703, float %1704)  ; FMax(a,b)
  %1714 = call float @dx.op.binary.f32(i32 35, float %1702, float %1713)  ; FMax(a,b)
  %1715 = call float @dx.op.binary.f32(i32 35, float %1714, float %1705)  ; FMax(a,b)
  %1716 = call float @dx.op.binary.f32(i32 36, float %1710, float %1711)  ; FMin(a,b)
  %1717 = call float @dx.op.binary.f32(i32 36, float %1709, float %1716)  ; FMin(a,b)
  %1718 = call float @dx.op.binary.f32(i32 36, float %1717, float %1712)  ; FMin(a,b)
  %1719 = fmul fast float %1715, 2.550000e+02
  %1720 = fadd fast float %1719, 0x3F70101020000000
  %1721 = fptoui float %1720 to i32
  %1722 = fmul fast float %1718, 2.550000e+02
  %1723 = fadd fast float %1722, 0x3F70101020000000
  %1724 = fptoui float %1723 to i32
  %1725 = icmp ult i32 %1721, %1724
  br i1 %1725, label %1726, label %1778

; <label>:1726                                    ; preds = %1683
  %1727 = fcmp fast ogt float %29, 9.843750e-01
  %1728 = fadd fast float %521, -4.000000e+00
  %1729 = select i1 %1727, float -4.000000e+00, float %1728
  %1730 = call float @dx.op.binary.f32(i32 35, float %1729, float 0.000000e+00)  ; FMax(a,b)
  %1731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1732 = extractvalue %dx.types.CBufRet.f32 %1731, 0
  %1733 = fadd fast float %1732, %1730
  %1734 = extractvalue %dx.types.CBufRet.f32 %1731, 2
  %1735 = fmul fast float %1733, %1734
  %1736 = call float @dx.op.unary.f32(i32 23, float %1735)  ; Log(value)
  %1737 = extractvalue %dx.types.CBufRet.f32 %1731, 3
  %1738 = fmul fast float %1737, %1736
  %1739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1740 = extractvalue %dx.types.CBufRet.f32 %1739, 2
  %1741 = fmul fast float %1738, %1740
  %1742 = call float @dx.op.unary.f32(i32 7, float %1741)  ; Saturate(value)
  %1743 = uitofp i32 %1721 to float
  %1744 = uitofp i32 %1724 to float
  %1745 = fadd fast float %1743, 5.000000e-01
  %1746 = fadd fast float %1744, 5.000000e-01
  %1747 = fmul fast float %1740, %1745
  %1748 = fmul fast float %1740, %1746
  %1749 = fadd fast float %1747, 0x3F0FFB4800000000
  %1750 = fadd fast float %1748, 0xBF0FFB4800000000
  %1751 = call float @dx.op.binary.f32(i32 35, float %1742, float %1749)  ; FMax(a,b)
  %1752 = call float @dx.op.binary.f32(i32 36, float %1751, float %1750)  ; FMin(a,b)
  %1753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1754 = extractvalue %dx.types.CBufRet.f32 %1753, 1
  %1755 = extractvalue %dx.types.CBufRet.f32 %1753, 2
  %1756 = extractvalue %dx.types.CBufRet.f32 %1753, 0
  %1757 = select i1 %374, float %1756, float 0.000000e+00
  %1758 = fmul fast float %1754, %1752
  %1759 = fadd fast float %1757, %1758
  %1760 = fadd fast float %1757, %1755
  %1761 = fsub fast float %1754, %1755
  %1762 = fadd fast float %1761, %1757
  %1763 = call float @dx.op.binary.f32(i32 35, float %1759, float %1760)  ; FMax(a,b)
  %1764 = call float @dx.op.binary.f32(i32 36, float %1763, float %1762)  ; FMin(a,b)
  %1765 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %17, float %1696, float %1697, float %1764, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1766 = extractvalue %dx.types.ResRet.f32 %1765, 0
  %1767 = extractvalue %dx.types.ResRet.f32 %1765, 1
  %1768 = extractvalue %dx.types.ResRet.f32 %1765, 2
  %1769 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %1696, float %1697, float %1764, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1770 = extractvalue %dx.types.ResRet.f32 %1769, 0
  %1771 = extractvalue %dx.types.ResRet.f32 %1769, 1
  %1772 = extractvalue %dx.types.ResRet.f32 %1769, 2
  %1773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1774 = extractvalue %dx.types.CBufRet.f32 %1773, 1
  %1775 = fmul fast float %1774, %1770
  %1776 = fmul fast float %1774, %1771
  %1777 = fmul fast float %1774, %1772
  br label %1778

; <label>:1778                                    ; preds = %1726, %1683
  %1779 = phi float [ %1766, %1726 ], [ 1.000000e+00, %1683 ]
  %1780 = phi float [ %1767, %1726 ], [ 1.000000e+00, %1683 ]
  %1781 = phi float [ %1768, %1726 ], [ 1.000000e+00, %1683 ]
  %1782 = phi float [ %1775, %1726 ], [ 0.000000e+00, %1683 ]
  %1783 = phi float [ %1776, %1726 ], [ 0.000000e+00, %1683 ]
  %1784 = phi float [ %1777, %1726 ], [ 0.000000e+00, %1683 ]
  %1785 = fmul fast float %1782, %354
  %1786 = fmul fast float %1783, %354
  %1787 = fmul fast float %1784, %354
  %1788 = fmul fast float %1779, %1690
  %1789 = call float @dx.op.dot3.f32(i32 55, float %1779, float %1780, float %1781, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1790 = call float @dx.op.dot3.f32(i32 55, float %1785, float %1786, float %1787, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1791 = select i1 %107, float %1789, float %1779
  %1792 = select i1 %107, float %1789, float %1780
  %1793 = select i1 %107, float 1.000000e+00, float %1781
  %1794 = select i1 %107, float %1790, float %1785
  %1795 = select i1 %107, float 0.000000e+00, float %1786
  %1796 = select i1 %107, float 0.000000e+00, float %1787
  %1797 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1798 = extractvalue %dx.types.CBufRet.i32 %1797, 3
  %1799 = and i32 %1798, 3
  %1800 = icmp ne i32 %1799, 0
  %1801 = and i32 %1798, 4
  %1802 = icmp ne i32 %1801, 0
  %1803 = and i1 %1800, %1802
  %1804 = and i1 %107, %1803
  br i1 %1804, label %1805, label %1811

; <label>:1805                                    ; preds = %1778
  %1806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1807 = extractvalue %dx.types.CBufRet.f32 %1806, 1
  %1808 = fadd fast float %1788, -1.000000e+00
  %1809 = fmul fast float %1807, %1808
  %1810 = fadd fast float %1809, 1.000000e+00
  br label %1811

; <label>:1811                                    ; preds = %1805, %1778
  %1812 = phi float [ %1810, %1805 ], [ %1788, %1778 ]
  %1813 = fadd fast float %1687, %1684
  %1814 = fmul fast float %1791, %1813
  %1815 = fadd fast float %1814, %1794
  %1816 = fadd fast float %1688, %1685
  %1817 = fmul fast float %1792, %1816
  %1818 = fadd fast float %1817, %1795
  %1819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1820 = extractvalue %dx.types.CBufRet.f32 %1819, 0
  br i1 %107, label %1821, label %1842

; <label>:1821                                    ; preds = %1811
  %1822 = fadd fast float %1815, %1818
  %1823 = fmul fast float %1820, %1822
  %1824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1825 = extractvalue %dx.types.CBufRet.f32 %1824, 3
  %1826 = extractvalue %dx.types.CBufRet.f32 %358, 1
  %1827 = fsub fast float %361, %1826
  %1828 = extractvalue %dx.types.CBufRet.f32 %358, 2
  %1829 = fmul fast float %1827, %1828
  %1830 = call float @dx.op.unary.f32(i32 7, float %1829)  ; Saturate(value)
  %1831 = fsub fast float %1830, %1825
  %1832 = fmul fast float %1831, %1812
  %1833 = fadd fast float %1832, %1825
  %1834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1835 = extractvalue %dx.types.CBufRet.f32 %1834, 0
  %1836 = fsub fast float %1833, %1835
  %1837 = fmul fast float %1836, 1.000000e+01
  %1838 = call float @dx.op.unary.f32(i32 7, float %1837)  ; Saturate(value)
  %1839 = fmul fast float %1838, %354
  %1840 = fsub fast float %354, %1839
  %1841 = fmul fast float %1840, %1833
  br label %1854

; <label>:1842                                    ; preds = %1811
  %1843 = fadd fast float %1689, %1686
  %1844 = fmul fast float %1793, %1843
  %1845 = fadd fast float %1844, %1796
  %1846 = fmul fast float %1820, %1815
  %1847 = fmul fast float %1820, %1818
  %1848 = fmul fast float %1820, %1845
  %1849 = call float @dx.op.binary.f32(i32 35, float %1847, float %1848)  ; FMax(a,b)
  %1850 = call float @dx.op.binary.f32(i32 35, float %1846, float %1849)  ; FMax(a,b)
  %1851 = call float @dx.op.binary.f32(i32 35, float %1850, float %354)  ; FMax(a,b)
  %1852 = fcmp fast ugt float %1851, 0x3F10000000000000
  br i1 %1852, label %1854, label %1853

; <label>:1853                                    ; preds = %1842
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1854

; <label>:1854                                    ; preds = %1853, %1842, %1821
  %1855 = phi float [ %1823, %1821 ], [ %1846, %1853 ], [ %1846, %1842 ]
  %1856 = phi float [ %1841, %1821 ], [ %1847, %1853 ], [ %1847, %1842 ]
  %1857 = phi float [ %1840, %1821 ], [ %1848, %1853 ], [ %1848, %1842 ]
  %1858 = phi float [ %1840, %1821 ], [ %354, %1853 ], [ %354, %1842 ]
  %1859 = fadd fast float %216, 0x3FE3C6EF40000000
  %1860 = call float @dx.op.unary.f32(i32 22, float %1859)  ; Frc(value)
  %1861 = call float @dx.op.unary.f32(i32 23, float %1855)  ; Log(value)
  %1862 = fadd fast float %1861, -7.000000e+00
  %1863 = call float @dx.op.unary.f32(i32 21, float %1862)  ; Exp(value)
  %1864 = fmul fast float %1860, 2.000000e+00
  %1865 = fadd fast float %1864, -1.000000e+00
  %1866 = fmul fast float %1863, %1865
  %1867 = fcmp fast ogt float %1855, 0.000000e+00
  %1868 = select i1 %1867, float %1866, float 0.000000e+00
  %1869 = fadd fast float %1868, %1855
  %1870 = fadd fast float %216, 0x3FF3C6EF40000000
  %1871 = call float @dx.op.unary.f32(i32 22, float %1870)  ; Frc(value)
  %1872 = call float @dx.op.unary.f32(i32 23, float %1856)  ; Log(value)
  %1873 = fadd fast float %1872, -7.000000e+00
  %1874 = call float @dx.op.unary.f32(i32 21, float %1873)  ; Exp(value)
  %1875 = fmul fast float %1871, 2.000000e+00
  %1876 = fadd fast float %1875, -1.000000e+00
  %1877 = fmul fast float %1874, %1876
  %1878 = fcmp fast ogt float %1856, 0.000000e+00
  %1879 = select i1 %1878, float %1877, float 0.000000e+00
  %1880 = fadd fast float %1879, %1856
  %1881 = fadd fast float %216, 0x3FFDAA66E0000000
  %1882 = call float @dx.op.unary.f32(i32 22, float %1881)  ; Frc(value)
  %1883 = call float @dx.op.unary.f32(i32 23, float %1857)  ; Log(value)
  %1884 = fadd fast float %1883, -6.000000e+00
  %1885 = call float @dx.op.unary.f32(i32 21, float %1884)  ; Exp(value)
  %1886 = fmul fast float %1882, 2.000000e+00
  %1887 = fadd fast float %1886, -1.000000e+00
  %1888 = fmul fast float %1885, %1887
  %1889 = fcmp fast ogt float %1857, 0.000000e+00
  %1890 = select i1 %1889, float %1888, float 0.000000e+00
  %1891 = fadd fast float %1890, %1857
  %1892 = select i1 %107, float %1856, float %1880
  %1893 = select i1 %107, float %1857, float %1891
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
  %1897 = call float @dx.op.binary.f32(i32 36, float %1858, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1894)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1895)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1896)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1897)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1858)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1858)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1858)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1858)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

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
!53 = distinct !{!53, !"dx.controlflow.hints", i32 1}
!54 = !{!55, !55, i64 0}
!55 = !{!"float", !56, i64 0}
!56 = !{!"omnipotent char", !57, i64 0}
!57 = !{!"Simple C/C++ TBAA"}
!58 = !{!59, !61, !63, !64, !66, !67, !68, !70, !71, !72}
!59 = distinct !{!59, !60, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!60 = distinct !{!60, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!61 = distinct !{!61, !62, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!62 = distinct !{!62, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!63 = distinct !{!63, !62, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!64 = distinct !{!64, !65, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!65 = distinct !{!65, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!66 = distinct !{!66, !65, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!67 = distinct !{!67, !65, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!68 = distinct !{!68, !69, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!69 = distinct !{!69, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!70 = distinct !{!70, !69, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!71 = distinct !{!71, !69, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!72 = distinct !{!72, !73, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!73 = distinct !{!73, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!74 = !{!75}
!75 = distinct !{!75, !76, !"\01?sort@@YAXAIAM00@Z: %c"}
!76 = distinct !{!76, !"\01?sort@@YAXAIAM00@Z"}
!77 = !{!78, !79, !59, !61, !63, !64, !66, !67, !68, !70, !71, !72}
!78 = distinct !{!78, !76, !"\01?sort@@YAXAIAM00@Z: %a"}
!79 = distinct !{!79, !76, !"\01?sort@@YAXAIAM00@Z: %b"}
!80 = !{!79}
!81 = !{!78, !75, !59, !61, !63, !64, !66, !67, !68, !70, !71, !72}
!82 = !{!78}
!83 = !{!79, !75, !59, !61, !63, !64, !66, !67, !68, !70, !71, !72}
!84 = !{!85}
!85 = distinct !{!85, !86, !"\01?sort@@YAXAIAM00@Z: %c"}
!86 = distinct !{!86, !"\01?sort@@YAXAIAM00@Z"}
!87 = !{!88, !89, !59, !61, !63, !64, !66, !67, !68, !70, !71, !72}
!88 = distinct !{!88, !86, !"\01?sort@@YAXAIAM00@Z: %a"}
!89 = distinct !{!89, !86, !"\01?sort@@YAXAIAM00@Z: %b"}
!90 = !{!89}
!91 = !{!88, !85, !59, !61, !63, !64, !66, !67, !68, !70, !71, !72}
!92 = !{!88}
!93 = !{!89, !85, !59, !61, !63, !64, !66, !67, !68, !70, !71, !72}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}

