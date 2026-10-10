;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   x   
; TEXCOORDS                0   xyzw        2     NONE   float   xy  
; PACKED_TRI_DATA          0   xyzw        3     NONE    uint   x   
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
; shader hash: 208a0cb8af2b43a7b66725dbdeba7626
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
;                                   texture     f32          2d      T3     t69,space2     1
;                                   texture     f32          2d      T4             t0     1
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
;                                   texture    byte         r/o     T15             t1     1
;
;
; ViewId state:
;
; Number of inputs: 16, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call i32 @dx.op.loadInput.i32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = alloca [3 x float], align 4
  %30 = alloca [3 x float], align 4
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %34 = extractvalue %dx.types.CBufRet.f32 %33, 0
  %35 = fmul fast float %34, %25
  %36 = fmul fast float %34, %26
  %37 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %38 = extractvalue %dx.types.CBufRet.f32 %37, 2
  %39 = extractvalue %dx.types.CBufRet.f32 %37, 3
  %40 = fmul fast float %38, 2.000000e+00
  %41 = fmul fast float %40, %35
  %42 = fmul fast float %39, 2.000000e+00
  %43 = fmul fast float %42, %36
  %44 = fsub fast float 1.000000e+00, %41
  %45 = fsub fast float 1.000000e+00, %43
  %46 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.f32 %46, 0
  %48 = extractvalue %dx.types.CBufRet.f32 %46, 1
  %49 = extractvalue %dx.types.CBufRet.f32 %46, 2
  %50 = fmul fast float %44, %47
  %51 = fmul fast float %44, %48
  %52 = fmul fast float %44, %49
  %53 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.f32 %53, 0
  %55 = extractvalue %dx.types.CBufRet.f32 %53, 1
  %56 = extractvalue %dx.types.CBufRet.f32 %53, 2
  %57 = fmul fast float %45, %54
  %58 = fmul fast float %45, %55
  %59 = fmul fast float %45, %56
  %60 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.f32 %60, 0
  %62 = extractvalue %dx.types.CBufRet.f32 %60, 1
  %63 = extractvalue %dx.types.CBufRet.f32 %60, 2
  %64 = fadd fast float %57, %61
  %65 = fadd fast float %64, %50
  %66 = fadd fast float %58, %62
  %67 = fadd fast float %66, %51
  %68 = fadd fast float %59, %63
  %69 = fadd fast float %68, %52
  %70 = fmul fast float %65, %28
  %71 = fmul fast float %67, %28
  %72 = fmul fast float %69, %28
  %73 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.i32 %73, 3
  %75 = and i32 %74, 3
  %76 = icmp ne i32 %75, 0
  %77 = and i32 %74, 4
  %78 = icmp ne i32 %77, 0
  %79 = and i1 %76, %78
  br i1 %79, label %80, label %89

; <label>:80                                      ; preds = %0
  %81 = fmul fast float %39, %36
  %82 = fmul fast float %38, %35
  %83 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %82, float %81, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %84 = extractvalue %dx.types.ResRet.f32 %83, 0
  %85 = fsub fast float 1.000000e+00, %84
  %86 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.f32 %86, 0
  %88 = fcmp fast olt float %85, %87
  br label %97

; <label>:89                                      ; preds = %0
  %90 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.i32 %90, 3
  %92 = and i32 %91, 3
  %93 = icmp ne i32 %92, 0
  %94 = and i32 %91, 4
  %95 = icmp eq i32 %94, 0
  %96 = and i1 %93, %95
  br label %97

; <label>:97                                      ; preds = %89, %80
  %98 = phi i1 [ %88, %80 ], [ %96, %89 ]
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 2
  %101 = extractvalue %dx.types.CBufRet.f32 %99, 3
  %102 = fmul fast float %100, %35
  %103 = fmul fast float %101, %36
  %104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %105 = extractvalue %dx.types.ResRet.i32 %104, 0
  %106 = and i32 %105, 114688
  %107 = icmp ne i32 %106, 0
  %108 = select i1 %107, float %102, float 0.000000e+00
  %109 = select i1 %107, float %103, float 0.000000e+00
  %110 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %18, float %108, float %109, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %111 = extractvalue %dx.types.ResRet.f32 %110, 0
  %112 = fmul fast float %111, 2.550000e+02
  %113 = fptoui float %112 to i32
  %114 = select i1 %107, i32 %113, i32 0
  %115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 188, i32 undef)  ; BufferLoad(srv,index,wot)
  %116 = extractvalue %dx.types.ResRet.i32 %115, 0
  %117 = and i32 %116, 16
  %118 = icmp ne i32 %117, 0
  %119 = select i1 %118, float 1.000000e+00, float %24
  %120 = add i32 %21, 80
  %121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %120, i32 undef)  ; BufferLoad(srv,index,wot)
  %122 = extractvalue %dx.types.ResRet.i32 %121, 0
  %123 = add i32 %122, 0
  %124 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %123, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.f32 %125, 2
  %127 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %124, %dx.types.Handle %32, float %22, float %23, float undef, float undef, i32 0, i32 0, i32 undef, float %126, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %128 = extractvalue %dx.types.ResRet.f32 %127, 0
  %129 = fcmp fast ogt float %128, 0x3FE0101020000000
  %130 = uitofp i1 %129 to float
  %131 = fmul fast float %130, %119
  %132 = fcmp fast ogt float %131, 0.000000e+00
  br i1 %132, label %134, label %133

; <label>:133                                     ; preds = %97
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %134

; <label>:134                                     ; preds = %133, %97
  %135 = call float @dx.op.unary.f32(i32 7, float %131)  ; Saturate(value)
  %136 = fmul fast float %35, 5.000000e-01
  %137 = fmul fast float %36, 5.000000e-01
  %138 = fptosi float %136 to i32
  %139 = fptosi float %137 to i32
  %140 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %138, i32 %139, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %141 = extractvalue %dx.types.ResRet.i32 %140, 0
  %142 = lshr i32 %141, 18
  %143 = uitofp i32 %142 to float
  %144 = fmul fast float %143, 0x3F4C00EBA0000000
  %145 = call float @dx.op.unary.f32(i32 21, float %144)  ; Exp(value)
  %146 = fadd fast float %145, -1.000000e+00
  %147 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %148 = extractvalue %dx.types.Dimensions %147, 0
  %149 = sitofp i32 %148 to float
  %150 = extractvalue %dx.types.Dimensions %147, 1
  %151 = sitofp i32 %150 to float
  %152 = fcmp fast oge float %136, %149
  %153 = fcmp fast oge float %137, %151
  %154 = or i1 %152, %153
  %155 = select i1 %154, float 0x4197782600000000, float %146
  %156 = fsub fast float %155, %28
  %157 = fcmp fast ogt float %156, 0.000000e+00
  %158 = and i32 %114, -2
  %159 = icmp eq i32 %158, 2
  %160 = and i1 %159, %157
  %161 = xor i1 %157, true
  %162 = icmp eq i32 %114, 1
  %163 = and i1 %162, %161
  %164 = or i1 %160, %163
  %165 = and i32 %116, 262144
  %166 = icmp ne i32 %165, 0
  %167 = and i1 %166, %164
  %168 = xor i1 %164, true
  %169 = and i32 %116, 131072
  %170 = icmp ne i32 %169, 0
  %171 = and i1 %170, %168
  %172 = or i1 %167, %171
  br i1 %172, label %173, label %174

; <label>:173                                     ; preds = %134
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %174

; <label>:174                                     ; preds = %173, %134
  %175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = extractvalue %dx.types.CBufRet.f32 %175, 2
  %177 = fptosi float %28 to i32
  %178 = sitofp i32 %177 to float
  %179 = fadd fast float %176, %178
  %180 = fmul fast float %179, 0x3FE3C6EF40000000
  %181 = frem fast float %35, 2.560000e+02
  %182 = frem fast float %36, 2.560000e+02
  %183 = fptoui float %181 to i32
  %184 = fptoui float %182 to i32
  %185 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %183, i32 %184, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %186 = extractvalue %dx.types.ResRet.f32 %185, 0
  %187 = fadd fast float %186, %180
  %188 = call float @dx.op.unary.f32(i32 22, float %187)  ; Frc(value)
  %189 = add i32 %21, 72
  %190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %189, i32 undef)  ; BufferLoad(srv,index,wot)
  %191 = extractvalue %dx.types.ResRet.i32 %190, 0
  %192 = add i32 %191, 0
  %193 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %192, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %194 = add i32 %21, 24
  %195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %194, i32 undef)  ; BufferLoad(srv,index,wot)
  %196 = extractvalue %dx.types.ResRet.i32 %195, 0
  %197 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %193, %dx.types.Handle %31, float %22, float %23, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %198 = extractvalue %dx.types.ResRet.f32 %197, 0
  %199 = extractvalue %dx.types.ResRet.f32 %197, 1
  %200 = extractvalue %dx.types.ResRet.f32 %197, 2
  %201 = extractvalue %dx.types.ResRet.f32 %197, 3
  %202 = and i32 %196, 255
  %203 = uitofp i32 %202 to float
  %204 = lshr i32 %196, 8
  %205 = and i32 %204, 255
  %206 = uitofp i32 %205 to float
  %207 = fmul fast float %201, %203
  %208 = fadd fast float %207, %206
  %209 = fmul fast float %208, 0x3F70101000000000
  %210 = add i32 %21, 56
  %211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
  %212 = extractvalue %dx.types.ResRet.i32 %211, 0
  %213 = and i32 %212, 255
  %214 = uitofp i32 %213 to float
  %215 = fmul fast float %214, 0x3F70101020000000
  %216 = lshr i32 %212, 8
  %217 = and i32 %216, 255
  %218 = uitofp i32 %217 to float
  %219 = fmul fast float %218, 0x3F70101020000000
  %220 = lshr i32 %212, 16
  %221 = and i32 %220, 255
  %222 = uitofp i32 %221 to float
  %223 = fmul fast float %222, 0x3F70101020000000
  %224 = fadd fast float %209, 0xBFB99999A0000000
  %225 = call float @dx.op.unary.f32(i32 7, float %224)  ; Saturate(value)
  %226 = fmul fast float %225, 0x3FF1C71C80000000
  %227 = fsub fast float 1.000000e+00, %226
  %228 = call float @dx.op.unary.f32(i32 7, float %227)  ; Saturate(value)
  %229 = fmul fast float %228, %198
  %230 = fmul fast float %215, %215
  %231 = fmul fast float %230, %229
  %232 = fmul fast float %228, %199
  %233 = fmul fast float %219, %219
  %234 = fmul fast float %233, %232
  %235 = fmul fast float %228, %200
  %236 = fmul fast float %223, %223
  %237 = fmul fast float %236, %235
  %238 = call float @dx.op.unary.f32(i32 7, float %231)  ; Saturate(value)
  %239 = call float @dx.op.unary.f32(i32 7, float %234)  ; Saturate(value)
  %240 = call float @dx.op.unary.f32(i32 7, float %237)  ; Saturate(value)
  %241 = call float @dx.op.dot3.f32(i32 55, float %238, float %239, float %240, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %242 = add i32 %21, 32
  %243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %242, i32 undef)  ; BufferLoad(srv,index,wot)
  %244 = extractvalue %dx.types.ResRet.i32 %243, 0
  %245 = and i32 %244, 255
  %246 = uitofp i32 %245 to float
  %247 = lshr i32 %244, 8
  %248 = and i32 %247, 255
  %249 = uitofp i32 %248 to float
  %250 = fmul fast float %249, %241
  %251 = fadd fast float %250, %246
  %252 = fmul fast float %251, 0x3F70101020000000
  %253 = call float @dx.op.unary.f32(i32 7, float %252)  ; Saturate(value)
  %254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %255 = extractvalue %dx.types.CBufRet.f32 %254, 0
  %256 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %138, i32 %139, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = lshr i32 %257, 18
  %259 = uitofp i32 %258 to float
  %260 = fmul fast float %259, 0x3F4C00EBA0000000
  %261 = call float @dx.op.unary.f32(i32 21, float %260)  ; Exp(value)
  %262 = fadd fast float %261, -1.000000e+00
  %263 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %264 = extractvalue %dx.types.Dimensions %263, 0
  %265 = sitofp i32 %264 to float
  %266 = extractvalue %dx.types.Dimensions %263, 1
  %267 = sitofp i32 %266 to float
  %268 = fcmp fast oge float %136, %265
  %269 = fcmp fast oge float %137, %267
  %270 = or i1 %268, %269
  %271 = select i1 %270, float 0x4197782600000000, float %262
  %272 = fsub fast float 1.000000e+00, %135
  %273 = call float @dx.op.dot3.f32(i32 55, float %272, float %272, float %272, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %274 = fsub fast float 1.000000e+00, %273
  %275 = fmul fast float %255, %253
  %276 = fsub fast float 1.000000e+00, %253
  %277 = call float @dx.op.unary.f32(i32 7, float %276)  ; Saturate(value)
  %278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %279 = extractvalue %dx.types.CBufRet.f32 %278, 3
  %280 = fmul fast float %279, %277
  %281 = fadd fast float %280, %275
  %282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %283 = extractvalue %dx.types.CBufRet.f32 %282, 3
  %284 = fmul fast float %238, %135
  %285 = fmul fast float %239, %135
  %286 = fmul fast float %240, %135
  %287 = icmp eq i32 %114, 3
  %288 = fcmp fast ogt float %28, %271
  %289 = and i1 %162, %288
  %290 = or i1 %287, %289
  %291 = icmp eq i32 %114, 2
  %292 = fcmp fast ole float %28, %271
  %293 = and i1 %291, %292
  %294 = or i1 %293, %290
  br i1 %289, label %295, label %434

; <label>:295                                     ; preds = %174
  %296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %297 = extractvalue %dx.types.CBufRet.f32 %296, 2
  %298 = extractvalue %dx.types.CBufRet.f32 %296, 3
  %299 = fmul fast float %297, %35
  %300 = fmul fast float %298, %36
  %301 = call float @dx.op.unary.f32(i32 7, float %299)  ; Saturate(value)
  %302 = call float @dx.op.unary.f32(i32 7, float %300)  ; Saturate(value)
  %303 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %17, float %301, float %302, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %304 = extractvalue %dx.types.ResRet.f32 %303, 0
  %305 = extractvalue %dx.types.ResRet.f32 %303, 1
  %306 = extractvalue %dx.types.ResRet.f32 %303, 2
  %307 = extractvalue %dx.types.ResRet.f32 %303, 3
  %308 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %17, float %301, float %302, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %309 = extractvalue %dx.types.ResRet.f32 %308, 0
  %310 = extractvalue %dx.types.ResRet.f32 %308, 1
  %311 = extractvalue %dx.types.ResRet.f32 %308, 2
  %312 = extractvalue %dx.types.ResRet.f32 %308, 3
  %313 = call float @dx.op.binary.f32(i32 35, float %305, float %306)  ; FMax(a,b)
  %314 = call float @dx.op.binary.f32(i32 35, float %304, float %313)  ; FMax(a,b)
  %315 = call float @dx.op.binary.f32(i32 35, float %314, float %307)  ; FMax(a,b)
  %316 = call float @dx.op.binary.f32(i32 36, float %310, float %311)  ; FMin(a,b)
  %317 = call float @dx.op.binary.f32(i32 36, float %309, float %316)  ; FMin(a,b)
  %318 = call float @dx.op.binary.f32(i32 36, float %317, float %312)  ; FMin(a,b)
  %319 = fmul fast float %315, 2.550000e+02
  %320 = fadd fast float %319, 0x3F70101020000000
  %321 = fptoui float %320 to i32
  %322 = fmul fast float %318, 2.550000e+02
  %323 = fadd fast float %322, 0x3F70101020000000
  %324 = fptoui float %323 to i32
  %325 = icmp ult i32 %321, %324
  br i1 %325, label %326, label %377

; <label>:326                                     ; preds = %295
  %327 = fcmp fast ogt float %27, 9.843750e-01
  %328 = fadd fast float %28, -4.000000e+00
  %329 = select i1 %327, float -4.000000e+00, float %328
  %330 = call float @dx.op.binary.f32(i32 35, float %329, float 0.000000e+00)  ; FMax(a,b)
  %331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %332 = extractvalue %dx.types.CBufRet.f32 %331, 0
  %333 = fadd fast float %332, %330
  %334 = extractvalue %dx.types.CBufRet.f32 %331, 2
  %335 = fmul fast float %333, %334
  %336 = call float @dx.op.unary.f32(i32 23, float %335)  ; Log(value)
  %337 = extractvalue %dx.types.CBufRet.f32 %331, 3
  %338 = fmul fast float %337, %336
  %339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %340 = extractvalue %dx.types.CBufRet.f32 %339, 2
  %341 = fmul fast float %338, %340
  %342 = call float @dx.op.unary.f32(i32 7, float %341)  ; Saturate(value)
  %343 = uitofp i32 %321 to float
  %344 = uitofp i32 %324 to float
  %345 = fadd fast float %343, 5.000000e-01
  %346 = fadd fast float %344, 5.000000e-01
  %347 = fmul fast float %340, %345
  %348 = fmul fast float %340, %346
  %349 = fadd fast float %347, 0x3F0FFB4800000000
  %350 = fadd fast float %348, 0xBF0FFB4800000000
  %351 = call float @dx.op.binary.f32(i32 35, float %342, float %349)  ; FMax(a,b)
  %352 = call float @dx.op.binary.f32(i32 36, float %351, float %350)  ; FMin(a,b)
  %353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %354 = extractvalue %dx.types.CBufRet.f32 %353, 1
  %355 = extractvalue %dx.types.CBufRet.f32 %353, 2
  %356 = extractvalue %dx.types.CBufRet.f32 %353, 0
  %357 = fmul fast float %354, %352
  %358 = fadd fast float %356, %357
  %359 = fadd fast float %356, %355
  %360 = fsub fast float %354, %355
  %361 = fadd fast float %360, %356
  %362 = call float @dx.op.binary.f32(i32 35, float %358, float %359)  ; FMax(a,b)
  %363 = call float @dx.op.binary.f32(i32 36, float %362, float %361)  ; FMin(a,b)
  %364 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %16, float %301, float %302, float %363, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %365 = extractvalue %dx.types.ResRet.f32 %364, 0
  %366 = extractvalue %dx.types.ResRet.f32 %364, 1
  %367 = extractvalue %dx.types.ResRet.f32 %364, 2
  %368 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %301, float %302, float %363, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %369 = extractvalue %dx.types.ResRet.f32 %368, 0
  %370 = extractvalue %dx.types.ResRet.f32 %368, 1
  %371 = extractvalue %dx.types.ResRet.f32 %368, 2
  %372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %373 = extractvalue %dx.types.CBufRet.f32 %372, 1
  %374 = fmul fast float %373, %369
  %375 = fmul fast float %373, %370
  %376 = fmul fast float %373, %371
  br label %377

; <label>:377                                     ; preds = %326, %295
  %378 = phi float [ %365, %326 ], [ 1.000000e+00, %295 ]
  %379 = phi float [ %366, %326 ], [ 1.000000e+00, %295 ]
  %380 = phi float [ %367, %326 ], [ 1.000000e+00, %295 ]
  %381 = phi float [ %374, %326 ], [ 0.000000e+00, %295 ]
  %382 = phi float [ %375, %326 ], [ 0.000000e+00, %295 ]
  %383 = phi float [ %376, %326 ], [ 0.000000e+00, %295 ]
  %384 = fmul fast float %381, %274
  %385 = fmul fast float %382, %274
  %386 = fmul fast float %383, %274
  %387 = call float @dx.op.dot3.f32(i32 55, float %378, float %379, float %380, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %388 = call float @dx.op.dot3.f32(i32 55, float %384, float %385, float %386, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %389 = select i1 %98, float %387, float %378
  %390 = select i1 %98, float %387, float %379
  %391 = select i1 %98, float 1.000000e+00, float %380
  %392 = select i1 %98, float %388, float %384
  %393 = select i1 %98, float 0.000000e+00, float %385
  %394 = select i1 %98, float 0.000000e+00, float %386
  %395 = fmul fast float %389, %284
  %396 = fmul fast float %390, %285
  %397 = fmul fast float %391, %286
  %398 = fadd fast float %395, %392
  %399 = fadd fast float %396, %393
  %400 = fadd fast float %394, %397
  %401 = fmul fast float %35, 2.000000e+00
  %402 = fmul fast float %401, %297
  %403 = fmul fast float %36, 2.000000e+00
  %404 = fmul fast float %403, %298
  %405 = fsub fast float 1.000000e+00, %402
  %406 = fsub fast float 1.000000e+00, %404
  %407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %408 = extractvalue %dx.types.CBufRet.f32 %407, 0
  %409 = extractvalue %dx.types.CBufRet.f32 %407, 1
  %410 = extractvalue %dx.types.CBufRet.f32 %407, 2
  %411 = fmul fast float %405, %408
  %412 = fmul fast float %405, %409
  %413 = fmul fast float %405, %410
  %414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %415 = extractvalue %dx.types.CBufRet.f32 %414, 0
  %416 = extractvalue %dx.types.CBufRet.f32 %414, 1
  %417 = extractvalue %dx.types.CBufRet.f32 %414, 2
  %418 = fmul fast float %406, %415
  %419 = fmul fast float %406, %416
  %420 = fmul fast float %406, %417
  %421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %422 = extractvalue %dx.types.CBufRet.f32 %421, 0
  %423 = extractvalue %dx.types.CBufRet.f32 %421, 1
  %424 = extractvalue %dx.types.CBufRet.f32 %421, 2
  %425 = fadd fast float %418, %422
  %426 = fadd fast float %425, %411
  %427 = fadd fast float %419, %423
  %428 = fadd fast float %427, %412
  %429 = fadd fast float %420, %424
  %430 = fadd fast float %429, %413
  %431 = fmul fast float %426, %271
  %432 = fmul fast float %428, %271
  %433 = fmul fast float %430, %271
  br label %434

; <label>:434                                     ; preds = %377, %174
  %435 = phi float [ %431, %377 ], [ %70, %174 ]
  %436 = phi float [ %432, %377 ], [ %71, %174 ]
  %437 = phi float [ %433, %377 ], [ %72, %174 ]
  %438 = phi float [ %271, %377 ], [ %28, %174 ]
  %439 = phi float [ %398, %377 ], [ %284, %174 ]
  %440 = phi float [ %399, %377 ], [ %285, %174 ]
  %441 = phi float [ %400, %377 ], [ %286, %174 ]
  %442 = phi float [ %378, %377 ], [ 1.000000e+00, %174 ]
  br i1 %294, label %1591, label %443

; <label>:443                                     ; preds = %434
  %444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %445 = extractvalue %dx.types.CBufRet.f32 %444, 0
  %446 = extractvalue %dx.types.CBufRet.f32 %444, 1
  %447 = extractvalue %dx.types.CBufRet.f32 %444, 2
  %448 = extractvalue %dx.types.CBufRet.f32 %444, 3
  %449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %450 = extractvalue %dx.types.CBufRet.f32 %449, 0
  %451 = extractvalue %dx.types.CBufRet.f32 %449, 1
  %452 = extractvalue %dx.types.CBufRet.f32 %449, 2
  %453 = extractvalue %dx.types.CBufRet.f32 %449, 3
  %454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %455 = extractvalue %dx.types.CBufRet.f32 %454, 0
  %456 = extractvalue %dx.types.CBufRet.f32 %454, 1
  %457 = extractvalue %dx.types.CBufRet.f32 %454, 2
  %458 = extractvalue %dx.types.CBufRet.f32 %454, 3
  %459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %460 = extractvalue %dx.types.CBufRet.f32 %459, 0
  %461 = extractvalue %dx.types.CBufRet.f32 %459, 1
  %462 = extractvalue %dx.types.CBufRet.f32 %459, 2
  %463 = extractvalue %dx.types.CBufRet.f32 %459, 3
  %464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %465 = extractvalue %dx.types.CBufRet.f32 %464, 3
  %466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %467 = extractvalue %dx.types.CBufRet.f32 %466, 3
  %468 = extractvalue %dx.types.CBufRet.f32 %466, 0
  %469 = extractvalue %dx.types.CBufRet.f32 %466, 1
  %470 = extractvalue %dx.types.CBufRet.f32 %466, 2
  %471 = fcmp fast olt float %470, -5.000000e-01
  %472 = call float @dx.op.dot3.f32(i32 55, float %435, float %436, float %437, float %435, float %436, float %437)  ; Dot3(ax,ay,az,bx,by,bz)
  %473 = call float @dx.op.unary.f32(i32 25, float %472)  ; Rsqrt(value)
  %474 = fmul fast float %473, %472
  %475 = fmul fast float %473, %435
  %476 = fmul fast float %473, %436
  %477 = fmul fast float %473, %437
  %478 = fadd fast float %474, %448
  %479 = call float @dx.op.dot3.f32(i32 55, float %475, float %476, float %477, float %445, float %446, float %447)  ; Dot3(ax,ay,az,bx,by,bz)
  %480 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %481 = extractvalue %dx.types.CBufRet.i32 %480, 1
  %482 = and i32 %481, 1
  %483 = icmp ne i32 %482, 0
  %484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %485 = extractvalue %dx.types.CBufRet.f32 %484, 2
  %486 = fcmp fast ogt float %485, 0.000000e+00
  %487 = and i1 %483, %486
  br i1 %487, label %488, label %894, !dx.controlflow.hints !51

; <label>:488                                     ; preds = %443
  %489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %490 = extractvalue %dx.types.CBufRet.f32 %489, 3
  %491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %492 = extractvalue %dx.types.CBufRet.f32 %491, 2
  %493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %494 = extractvalue %dx.types.CBufRet.f32 %493, 2
  %495 = fsub fast float %492, %494
  %496 = and i32 %481, 2
  %497 = extractvalue %dx.types.CBufRet.i32 %480, 0
  %498 = call i32 @dx.op.binary.i32(i32 40, i32 %497, i32 3)  ; UMin(a,b)
  %499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %500 = extractvalue %dx.types.CBufRet.f32 %499, 0
  %501 = extractvalue %dx.types.CBufRet.f32 %499, 1
  %502 = extractvalue %dx.types.CBufRet.f32 %493, 0
  %503 = extractvalue %dx.types.CBufRet.f32 %493, 1
  %504 = fsub fast float %500, %502
  %505 = fsub fast float %501, %503
  %506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %507 = extractvalue %dx.types.CBufRet.f32 %506, 0
  %508 = fcmp fast ogt float %507, 0.000000e+00
  %509 = fsub fast float -0.000000e+00, %504
  %510 = fsub fast float -0.000000e+00, %505
  %511 = call float @dx.op.dot2.f32(i32 54, float %475, float %476, float %475, float %476)  ; Dot2(ax,ay,bx,by)
  %512 = call float @dx.op.dot2.f32(i32 54, float %475, float %476, float %509, float %510)  ; Dot2(ax,ay,bx,by)
  %513 = fmul fast float %512, 2.000000e+00
  %514 = call float @dx.op.dot2.f32(i32 54, float %509, float %510, float %509, float %510)  ; Dot2(ax,ay,bx,by)
  %515 = fmul fast float %507, %507
  %516 = fsub fast float %514, %515
  %517 = fmul fast float %513, %513
  %518 = fmul fast float %511, 4.000000e+00
  %519 = fmul fast float %518, %516
  %520 = fsub fast float %517, %519
  %521 = fcmp fast ogt float %520, 0.000000e+00
  br i1 %521, label %522, label %537

; <label>:522                                     ; preds = %488
  %523 = fcmp fast ogt float %513, 0.000000e+00
  %524 = call float @dx.op.unary.f32(i32 24, float %520)  ; Sqrt(value)
  %525 = fsub fast float -0.000000e+00, %524
  %526 = select i1 %523, float %524, float %525
  %527 = fadd fast float %526, %513
  %528 = fmul float %527, -5.000000e-01
  %529 = fdiv fast float %528, %511
  %530 = call float @dx.op.binary.f32(i32 35, float %529, float 0.000000e+00)  ; FMax(a,b)
  %531 = call float @dx.op.binary.f32(i32 36, float %474, float %530)  ; FMin(a,b)
  %532 = fdiv fast float %516, %528
  %533 = call float @dx.op.binary.f32(i32 35, float %532, float 0.000000e+00)  ; FMax(a,b)
  %534 = call float @dx.op.binary.f32(i32 36, float %474, float %533)  ; FMin(a,b)
  %535 = call float @dx.op.binary.f32(i32 36, float %531, float %534)  ; FMin(a,b)
  %536 = call float @dx.op.binary.f32(i32 35, float %531, float %534)  ; FMax(a,b)
  br label %537

; <label>:537                                     ; preds = %522, %488
  %538 = phi float [ %536, %522 ], [ -1.000000e+00, %488 ]
  %539 = phi float [ %535, %522 ], [ -1.000000e+00, %488 ]
  %540 = phi i1 [ true, %522 ], [ false, %488 ]
  %541 = and i1 %508, %540
  br i1 %541, label %542, label %544

; <label>:542                                     ; preds = %537
  %543 = fcmp fast oeq float %539, %538
  br i1 %543, label %847, label %545

; <label>:544                                     ; preds = %537
  br i1 %508, label %847, label %545

; <label>:545                                     ; preds = %544, %542
  %546 = phi float [ %474, %544 ], [ %538, %542 ]
  %547 = phi float [ 0.000000e+00, %544 ], [ %539, %542 ]
  %548 = icmp ne i32 %496, 0
  %549 = fmul fast float %546, %477
  %550 = fadd fast float %549, %490
  %551 = fmul fast float %550, %546
  %552 = select i1 %548, float 0.000000e+00, float %551
  %553 = fcmp fast oeq float %477, 0.000000e+00
  %554 = fdiv fast float %495, %477
  %555 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %554)  ; FMax(a,b)
  %556 = select i1 %553, float %546, float %555
  %557 = call float @dx.op.binary.f32(i32 36, float %546, float %556)  ; FMin(a,b)
  %558 = fcmp fast ogt float %477, 0.000000e+00
  %559 = fcmp fast olt float %495, 0.000000e+00
  br i1 %558, label %560, label %617

; <label>:560                                     ; preds = %545
  %561 = icmp eq i32 %496, 0
  br i1 %559, label %562, label %606

; <label>:562                                     ; preds = %560
  %563 = select i1 %561, float %546, float 0.000000e+00
  %564 = fsub fast float -0.000000e+00, %563
  %565 = call float @dx.op.unary.f32(i32 6, float %564)  ; FAbs(value)
  %566 = fmul fast float %563, %477
  %567 = fadd fast float %566, %490
  %568 = fmul fast float %565, %567
  %569 = fsub fast float %552, %568
  %570 = fsub fast float %546, %565
  %571 = select i1 %561, float %570, float 0.000000e+00
  %572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %573 = extractvalue %dx.types.CBufRet.f32 %572, 0
  %574 = extractvalue %dx.types.CBufRet.f32 %572, 1
  %575 = extractvalue %dx.types.CBufRet.f32 %572, 2
  %576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %577 = extractvalue %dx.types.CBufRet.f32 %576, 0
  %578 = extractvalue %dx.types.CBufRet.f32 %576, 1
  %579 = extractvalue %dx.types.CBufRet.f32 %576, 2
  %580 = extractvalue %dx.types.CBufRet.f32 %576, 3
  %581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %582 = extractvalue %dx.types.CBufRet.f32 %581, 3
  %583 = call float @dx.op.binary.f32(i32 36, float %569, float %582)  ; FMin(a,b)
  %584 = fmul fast float %580, %571
  %585 = call float @dx.op.unary.f32(i32 7, float %584)  ; Saturate(value)
  %586 = fsub fast float %577, %573
  %587 = fsub fast float %578, %574
  %588 = fsub fast float %579, %575
  %589 = fmul fast float %585, %586
  %590 = fmul fast float %585, %587
  %591 = fmul fast float %585, %588
  %592 = fadd fast float %589, %573
  %593 = fadd fast float %590, %574
  %594 = fadd fast float %591, %575
  %595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %596 = extractvalue %dx.types.CBufRet.f32 %595, 0
  %597 = extractvalue %dx.types.CBufRet.f32 %595, 1
  %598 = fadd fast float %597, %596
  %599 = call float @dx.op.unary.f32(i32 7, float %598)  ; Saturate(value)
  %600 = extractvalue %dx.types.CBufRet.f32 %595, 2
  %601 = extractvalue %dx.types.CBufRet.f32 %595, 3
  %602 = fadd fast float %601, %600
  %603 = call float @dx.op.unary.f32(i32 7, float %602)  ; Saturate(value)
  %604 = fmul fast float %599, %583
  %605 = fmul fast float %604, %603
  br label %847

; <label>:606                                     ; preds = %560
  br i1 %561, label %607, label %628

; <label>:607                                     ; preds = %606
  %608 = call float @dx.op.binary.f32(i32 36, float %557, float %547)  ; FMin(a,b)
  %609 = fsub fast float %557, %608
  %610 = fsub fast float %609, %546
  %611 = call float @dx.op.unary.f32(i32 6, float %610)  ; FAbs(value)
  %612 = fadd fast float %609, %546
  %613 = fmul fast float %612, %477
  %614 = fadd fast float %613, %490
  %615 = fmul fast float %614, %611
  %616 = fsub fast float %552, %615
  br label %628

; <label>:617                                     ; preds = %545
  br i1 %559, label %618, label %628

; <label>:618                                     ; preds = %617
  %619 = call float @dx.op.binary.f32(i32 35, float %547, float %557)  ; FMax(a,b)
  %620 = icmp eq i32 %496, 0
  %621 = select i1 %620, float %557, float 0.000000e+00
  %622 = fsub fast float -0.000000e+00, %621
  %623 = call float @dx.op.unary.f32(i32 6, float %622)  ; FAbs(value)
  %624 = fmul fast float %621, %477
  %625 = fadd fast float %624, %490
  %626 = fmul fast float %623, %625
  %627 = fsub fast float %552, %626
  br label %628

; <label>:628                                     ; preds = %618, %617, %607, %606
  %629 = phi float [ %547, %606 ], [ %547, %607 ], [ %619, %618 ], [ %547, %617 ]
  %630 = phi float [ 0.000000e+00, %606 ], [ %611, %607 ], [ %623, %618 ], [ 0.000000e+00, %617 ]
  %631 = phi float [ %552, %606 ], [ %616, %607 ], [ %627, %618 ], [ %552, %617 ]
  %632 = phi float [ %557, %606 ], [ %557, %607 ], [ %546, %618 ], [ %546, %617 ]
  %633 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 0
  store float -1.000000e+00, float* %633, align 4, !tbaa !52, !noalias !56
  %634 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 1
  store float -1.000000e+00, float* %634, align 4, !tbaa !52, !noalias !56
  %635 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 2
  store float -1.000000e+00, float* %635, align 4, !tbaa !52, !noalias !56
  %636 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 0
  store float -1.000000e+00, float* %636, align 4, !tbaa !52, !noalias !56
  %637 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 1
  store float -1.000000e+00, float* %637, align 4, !tbaa !52, !noalias !56
  %638 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 2
  store float -1.000000e+00, float* %638, align 4, !tbaa !52, !noalias !56
  %639 = icmp sgt i32 %498, 0
  br i1 %639, label %640, label %701

; <label>:640                                     ; preds = %628
  br label %641

; <label>:641                                     ; preds = %690, %640
  %642 = phi i32 [ %691, %690 ], [ 0, %640 ]
  %643 = phi i32 [ %692, %690 ], [ 0, %640 ]
  %644 = add nuw i32 %643, 171
  %645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 %644)  ; CBufferLoadLegacy(handle,regIndex)
  %646 = extractvalue %dx.types.CBufRet.f32 %645, 0
  %647 = extractvalue %dx.types.CBufRet.f32 %645, 1
  %648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %649 = extractvalue %dx.types.CBufRet.f32 %648, 0
  %650 = extractvalue %dx.types.CBufRet.f32 %648, 1
  %651 = fsub fast float %646, %649
  %652 = fsub fast float %647, %650
  %653 = extractvalue %dx.types.CBufRet.f32 %645, 2
  %654 = fsub fast float -0.000000e+00, %651
  %655 = fsub fast float -0.000000e+00, %652
  %656 = call float @dx.op.dot2.f32(i32 54, float %475, float %476, float %654, float %655)  ; Dot2(ax,ay,bx,by)
  %657 = fmul fast float %656, 2.000000e+00
  %658 = call float @dx.op.dot2.f32(i32 54, float %654, float %655, float %654, float %655)  ; Dot2(ax,ay,bx,by)
  %659 = fmul fast float %653, %653
  %660 = fsub fast float %658, %659
  %661 = fmul fast float %657, %657
  %662 = fmul fast float %518, %660
  %663 = fsub fast float %661, %662
  %664 = fcmp fast ogt float %663, 0.000000e+00
  br i1 %664, label %665, label %680

; <label>:665                                     ; preds = %641
  %666 = fcmp fast ogt float %657, 0.000000e+00
  %667 = call float @dx.op.unary.f32(i32 24, float %663)  ; Sqrt(value)
  %668 = fsub fast float -0.000000e+00, %667
  %669 = select i1 %666, float %667, float %668
  %670 = fadd fast float %669, %657
  %671 = fmul float %670, -5.000000e-01
  %672 = fdiv fast float %671, %511
  %673 = call float @dx.op.binary.f32(i32 35, float %672, float 0.000000e+00)  ; FMax(a,b)
  %674 = call float @dx.op.binary.f32(i32 36, float %546, float %673)  ; FMin(a,b)
  %675 = fdiv fast float %660, %671
  %676 = call float @dx.op.binary.f32(i32 35, float %675, float 0.000000e+00)  ; FMax(a,b)
  %677 = call float @dx.op.binary.f32(i32 36, float %546, float %676)  ; FMin(a,b)
  %678 = call float @dx.op.binary.f32(i32 36, float %674, float %677)  ; FMin(a,b)
  %679 = call float @dx.op.binary.f32(i32 35, float %674, float %677)  ; FMax(a,b)
  br label %680

; <label>:680                                     ; preds = %665, %641
  %681 = phi float [ %679, %665 ], [ -1.000000e+00, %641 ]
  %682 = phi float [ %678, %665 ], [ -1.000000e+00, %641 ]
  %683 = phi i1 [ true, %665 ], [ false, %641 ]
  br i1 %683, label %684, label %690

; <label>:684                                     ; preds = %680
  %685 = call float @dx.op.binary.f32(i32 35, float %629, float %682)  ; FMax(a,b)
  %686 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %643
  store float %685, float* %686, align 4, !tbaa !52, !noalias !56
  %687 = call float @dx.op.binary.f32(i32 35, float %629, float %681)  ; FMax(a,b)
  %688 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 %643
  store float %687, float* %688, align 4, !tbaa !52, !noalias !56
  %689 = add nsw i32 %642, 1
  br label %690

; <label>:690                                     ; preds = %684, %680
  %691 = phi i32 [ %689, %684 ], [ %642, %680 ]
  %692 = add nuw nsw i32 %643, 1
  %693 = icmp eq i32 %692, %498
  br i1 %693, label %694, label %641

; <label>:694                                     ; preds = %690
  %695 = load float, float* %635, align 4, !tbaa !52, !alias.scope !72, !noalias !75
  %696 = load float, float* %634, align 4, !tbaa !52, !alias.scope !78, !noalias !79
  %697 = load float, float* %633, align 4, !tbaa !52, !alias.scope !80, !noalias !81
  %698 = load float, float* %638, align 4, !tbaa !52, !alias.scope !82, !noalias !85
  %699 = load float, float* %637, align 4, !tbaa !52, !alias.scope !88, !noalias !89
  %700 = load float, float* %636, align 4, !tbaa !52, !alias.scope !90, !noalias !91
  br label %701

; <label>:701                                     ; preds = %694, %628
  %702 = phi float [ -1.000000e+00, %628 ], [ %700, %694 ]
  %703 = phi float [ -1.000000e+00, %628 ], [ %699, %694 ]
  %704 = phi float [ -1.000000e+00, %628 ], [ %698, %694 ]
  %705 = phi float [ -1.000000e+00, %628 ], [ %697, %694 ]
  %706 = phi float [ -1.000000e+00, %628 ], [ %696, %694 ]
  %707 = phi float [ -1.000000e+00, %628 ], [ %695, %694 ]
  %708 = phi i32 [ 0, %628 ], [ %691, %694 ]
  %709 = call float @dx.op.binary.f32(i32 36, float %706, float %707)  ; FMin(a,b)
  %710 = call float @dx.op.binary.f32(i32 36, float %705, float %709)  ; FMin(a,b)
  %711 = call float @dx.op.binary.f32(i32 35, float %705, float %706)  ; FMax(a,b)
  %712 = call float @dx.op.binary.f32(i32 36, float %711, float %707)  ; FMin(a,b)
  %713 = call float @dx.op.binary.f32(i32 36, float %705, float %706)  ; FMin(a,b)
  %714 = call float @dx.op.binary.f32(i32 35, float %713, float %712)  ; FMax(a,b)
  %715 = call float @dx.op.binary.f32(i32 35, float %706, float %707)  ; FMax(a,b)
  %716 = call float @dx.op.binary.f32(i32 35, float %705, float %715)  ; FMax(a,b)
  store float %710, float* %633, align 4, !tbaa !52, !alias.scope !80, !noalias !81
  store float %714, float* %634, align 4, !tbaa !52, !alias.scope !78, !noalias !79
  store float %716, float* %635, align 4, !tbaa !52, !alias.scope !72, !noalias !75
  %717 = call float @dx.op.binary.f32(i32 36, float %703, float %704)  ; FMin(a,b)
  %718 = call float @dx.op.binary.f32(i32 36, float %702, float %717)  ; FMin(a,b)
  %719 = call float @dx.op.binary.f32(i32 35, float %702, float %703)  ; FMax(a,b)
  %720 = call float @dx.op.binary.f32(i32 36, float %719, float %704)  ; FMin(a,b)
  %721 = call float @dx.op.binary.f32(i32 36, float %702, float %703)  ; FMin(a,b)
  %722 = call float @dx.op.binary.f32(i32 35, float %721, float %720)  ; FMax(a,b)
  %723 = call float @dx.op.binary.f32(i32 35, float %703, float %704)  ; FMax(a,b)
  %724 = call float @dx.op.binary.f32(i32 35, float %702, float %723)  ; FMax(a,b)
  store float %718, float* %636, align 4, !tbaa !52, !alias.scope !90, !noalias !91
  store float %722, float* %637, align 4, !tbaa !52, !alias.scope !88, !noalias !89
  store float %724, float* %638, align 4, !tbaa !52, !alias.scope !82, !noalias !85
  %725 = sub nsw i32 3, %708
  %726 = icmp sgt i32 %725, 2
  br i1 %726, label %727, label %765

; <label>:727                                     ; preds = %701
  %728 = icmp eq i32 %496, 0
  %729 = fsub fast float %546, %630
  %730 = select i1 %728, float %729, float %630
  %731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %732 = extractvalue %dx.types.CBufRet.f32 %731, 0
  %733 = extractvalue %dx.types.CBufRet.f32 %731, 1
  %734 = extractvalue %dx.types.CBufRet.f32 %731, 2
  %735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %736 = extractvalue %dx.types.CBufRet.f32 %735, 0
  %737 = extractvalue %dx.types.CBufRet.f32 %735, 1
  %738 = extractvalue %dx.types.CBufRet.f32 %735, 2
  %739 = extractvalue %dx.types.CBufRet.f32 %735, 3
  %740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %741 = extractvalue %dx.types.CBufRet.f32 %740, 3
  %742 = call float @dx.op.binary.f32(i32 36, float %631, float %741)  ; FMin(a,b)
  %743 = fmul fast float %739, %730
  %744 = call float @dx.op.unary.f32(i32 7, float %743)  ; Saturate(value)
  %745 = fsub fast float %736, %732
  %746 = fsub fast float %737, %733
  %747 = fsub fast float %738, %734
  %748 = fmul fast float %744, %745
  %749 = fmul fast float %744, %746
  %750 = fmul fast float %744, %747
  %751 = fadd fast float %748, %732
  %752 = fadd fast float %749, %733
  %753 = fadd fast float %750, %734
  %754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %755 = extractvalue %dx.types.CBufRet.f32 %754, 0
  %756 = extractvalue %dx.types.CBufRet.f32 %754, 1
  %757 = fadd fast float %756, %755
  %758 = call float @dx.op.unary.f32(i32 7, float %757)  ; Saturate(value)
  %759 = extractvalue %dx.types.CBufRet.f32 %754, 2
  %760 = extractvalue %dx.types.CBufRet.f32 %754, 3
  %761 = fadd fast float %760, %759
  %762 = call float @dx.op.unary.f32(i32 7, float %761)  ; Saturate(value)
  %763 = fmul fast float %758, %742
  %764 = fmul fast float %763, %762
  br label %847

; <label>:765                                     ; preds = %701
  %766 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %725
  %767 = load float, float* %766, align 4, !tbaa !52, !noalias !56
  %768 = fcmp fast olt float %767, %632
  %769 = icmp sgt i32 %708, 0
  %770 = and i1 %769, %768
  br i1 %770, label %771, label %808

; <label>:771                                     ; preds = %765
  br label %772

; <label>:772                                     ; preds = %801, %771
  %773 = phi float [ %802, %801 ], [ %630, %771 ]
  %774 = phi float [ %803, %801 ], [ %631, %771 ]
  %775 = phi float [ %783, %801 ], [ %767, %771 ]
  %776 = phi i32 [ %780, %801 ], [ %725, %771 ]
  %777 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 %776
  %778 = load float, float* %777, align 4, !tbaa !52, !noalias !56
  %779 = icmp slt i32 %776, 2
  %780 = add nsw i32 %776, 1
  %781 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %780
  %782 = load float, float* %781, align 4, !tbaa !52, !noalias !56
  %783 = select i1 %779, float %782, float %546
  %784 = call float @dx.op.binary.f32(i32 36, float %783, float %778)  ; FMin(a,b)
  %785 = call float @dx.op.binary.f32(i32 36, float %632, float %784)  ; FMin(a,b)
  %786 = icmp eq i32 %496, 0
  %787 = fadd fast float %785, %775
  %788 = fmul fast float %787, %477
  %789 = fadd fast float %788, %490
  br i1 %786, label %795, label %790

; <label>:790                                     ; preds = %772
  %791 = fsub fast float %785, %775
  %792 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %791)  ; FMax(a,b)
  %793 = fmul fast float %792, %789
  %794 = fadd fast float %793, %774
  br label %801

; <label>:795                                     ; preds = %772
  %796 = fsub fast float %775, %785
  %797 = call float @dx.op.unary.f32(i32 6, float %796)  ; FAbs(value)
  %798 = fadd fast float %797, %773
  %799 = fmul fast float %797, %789
  %800 = fsub fast float %774, %799
  br label %801

; <label>:801                                     ; preds = %795, %790
  %802 = phi float [ %792, %790 ], [ %798, %795 ]
  %803 = phi float [ %794, %790 ], [ %800, %795 ]
  %804 = fcmp fast olt float %783, %632
  %805 = icmp slt i32 %780, 3
  %806 = and i1 %805, %804
  br i1 %806, label %772, label %807

; <label>:807                                     ; preds = %801
  br label %808

; <label>:808                                     ; preds = %807, %765
  %809 = phi float [ %630, %765 ], [ %802, %807 ]
  %810 = phi float [ %631, %765 ], [ %803, %807 ]
  %811 = fsub fast float %546, %809
  %812 = select i1 %548, float %809, float %811
  %813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %814 = extractvalue %dx.types.CBufRet.f32 %813, 0
  %815 = extractvalue %dx.types.CBufRet.f32 %813, 1
  %816 = extractvalue %dx.types.CBufRet.f32 %813, 2
  %817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %818 = extractvalue %dx.types.CBufRet.f32 %817, 0
  %819 = extractvalue %dx.types.CBufRet.f32 %817, 1
  %820 = extractvalue %dx.types.CBufRet.f32 %817, 2
  %821 = extractvalue %dx.types.CBufRet.f32 %817, 3
  %822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %823 = extractvalue %dx.types.CBufRet.f32 %822, 3
  %824 = call float @dx.op.binary.f32(i32 36, float %810, float %823)  ; FMin(a,b)
  %825 = fmul fast float %821, %812
  %826 = call float @dx.op.unary.f32(i32 7, float %825)  ; Saturate(value)
  %827 = fsub fast float %818, %814
  %828 = fsub fast float %819, %815
  %829 = fsub fast float %820, %816
  %830 = fmul fast float %826, %827
  %831 = fmul fast float %826, %828
  %832 = fmul fast float %826, %829
  %833 = fadd fast float %830, %814
  %834 = fadd fast float %831, %815
  %835 = fadd fast float %832, %816
  %836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %837 = extractvalue %dx.types.CBufRet.f32 %836, 0
  %838 = extractvalue %dx.types.CBufRet.f32 %836, 1
  %839 = fadd fast float %838, %837
  %840 = call float @dx.op.unary.f32(i32 7, float %839)  ; Saturate(value)
  %841 = extractvalue %dx.types.CBufRet.f32 %836, 2
  %842 = extractvalue %dx.types.CBufRet.f32 %836, 3
  %843 = fadd fast float %842, %841
  %844 = call float @dx.op.unary.f32(i32 7, float %843)  ; Saturate(value)
  %845 = fmul fast float %840, %824
  %846 = fmul fast float %845, %844
  br label %847

; <label>:847                                     ; preds = %808, %727, %562, %544, %542
  %848 = phi float [ %571, %562 ], [ %730, %727 ], [ %812, %808 ], [ 0.000000e+00, %542 ], [ 0.000000e+00, %544 ]
  %849 = phi float [ %605, %562 ], [ %764, %727 ], [ %846, %808 ], [ 0.000000e+00, %542 ], [ 0.000000e+00, %544 ]
  %850 = phi float [ %592, %562 ], [ %751, %727 ], [ %833, %808 ], [ 0.000000e+00, %542 ], [ 0.000000e+00, %544 ]
  %851 = phi float [ %593, %562 ], [ %752, %727 ], [ %834, %808 ], [ 0.000000e+00, %542 ], [ 0.000000e+00, %544 ]
  %852 = phi float [ %594, %562 ], [ %753, %727 ], [ %835, %808 ], [ 0.000000e+00, %542 ], [ 0.000000e+00, %544 ]
  %853 = fmul fast float %485, %849
  %854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %855 = extractvalue %dx.types.CBufRet.f32 %854, 2
  %856 = fsub fast float %492, %855
  %857 = fcmp fast olt float %853, -2.000000e+01
  %858 = call float @dx.op.unary.f32(i32 21, float %853)  ; Exp(value)
  %859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %860 = extractvalue %dx.types.CBufRet.f32 %859, 2
  %861 = extractvalue %dx.types.CBufRet.f32 %859, 3
  %862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %863 = extractvalue %dx.types.CBufRet.f32 %862, 2
  %864 = fmul fast float %861, %856
  %865 = call float @dx.op.unary.f32(i32 7, float %864)  ; Saturate(value)
  %866 = fsub fast float 1.000000e+00, %865
  %867 = fmul fast float %477, 5.000000e-01
  %868 = fadd fast float %867, 5.000000e-01
  %869 = call float @dx.op.unary.f32(i32 7, float %868)  ; Saturate(value)
  %870 = fsub fast float 1.000000e+00, %869
  %871 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %866)  ; FMax(a,b)
  %872 = fdiv fast float %870, %871
  %873 = fsub fast float %856, %437
  %874 = call float @dx.op.unary.f32(i32 6, float %873)  ; FAbs(value)
  %875 = fmul fast float %874, %860
  %876 = call float @dx.op.unary.f32(i32 7, float %872)  ; Saturate(value)
  %877 = fsub fast float 1.000000e+00, %875
  %878 = fmul fast float %877, %876
  %879 = fadd fast float %878, %875
  %880 = fmul fast float %863, %856
  %881 = call float @dx.op.unary.f32(i32 7, float %880)  ; Saturate(value)
  %882 = fsub fast float 1.000000e+00, %879
  %883 = fmul fast float %882, %881
  %884 = fadd fast float %883, %879
  %885 = call float @dx.op.unary.f32(i32 7, float %884)  ; Saturate(value)
  %886 = fadd fast float %858, -1.000000e+00
  %887 = select i1 %857, float -1.000000e+00, float %886
  %888 = fmul fast float %885, %887
  %889 = fadd fast float %888, 1.000000e+00
  %890 = fsub fast float -0.000000e+00, %888
  %891 = fmul fast float %850, %890
  %892 = fmul fast float %851, %890
  %893 = fmul fast float %852, %890
  br label %894

; <label>:894                                     ; preds = %847, %443
  %895 = phi float [ %848, %847 ], [ 0.000000e+00, %443 ]
  %896 = phi float [ %889, %847 ], [ 1.000000e+00, %443 ]
  %897 = phi float [ %891, %847 ], [ 0.000000e+00, %443 ]
  %898 = phi float [ %892, %847 ], [ 0.000000e+00, %443 ]
  %899 = phi float [ %893, %847 ], [ 0.000000e+00, %443 ]
  %900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %901 = extractvalue %dx.types.CBufRet.f32 %900, 1
  %902 = fsub fast float 1.000000e+00, %896
  %903 = fmul fast float %902, %478
  %904 = fmul fast float %903, %901
  %905 = fsub fast float %478, %904
  br i1 %471, label %906, label %935, !dx.controlflow.hints !92

; <label>:906                                     ; preds = %894
  %907 = fmul fast float %479, %468
  %908 = fadd fast float %907, %469
  %909 = call float @dx.op.unary.f32(i32 7, float %908)  ; Saturate(value)
  %910 = fmul fast float %450, %905
  %911 = fsub fast float -0.000000e+00, %910
  %912 = fmul fast float %451, %905
  %913 = fsub fast float -0.000000e+00, %912
  %914 = call float @dx.op.unary.f32(i32 21, float %911)  ; Exp(value)
  %915 = call float @dx.op.unary.f32(i32 21, float %913)  ; Exp(value)
  %916 = call float @dx.op.binary.f32(i32 35, float %458, float %914)  ; FMax(a,b)
  %917 = call float @dx.op.binary.f32(i32 35, float %458, float %915)  ; FMax(a,b)
  %918 = fsub fast float %917, %916
  %919 = fmul fast float %918, %909
  %920 = fadd fast float %919, %916
  %921 = call float @dx.op.unary.f32(i32 7, float %920)  ; Saturate(value)
  %922 = fsub fast float %455, %460
  %923 = fsub fast float %456, %461
  %924 = fsub fast float %457, %462
  %925 = fmul fast float %909, %922
  %926 = fmul fast float %909, %923
  %927 = fmul fast float %909, %924
  %928 = fadd fast float %925, %460
  %929 = fadd fast float %926, %461
  %930 = fadd fast float %927, %462
  %931 = fsub fast float 1.000000e+00, %921
  %932 = fmul fast float %931, %928
  %933 = fmul fast float %931, %929
  %934 = fmul fast float %931, %930
  br label %994

; <label>:935                                     ; preds = %894
  %936 = fmul fast float %905, %467
  %937 = call float @dx.op.unary.f32(i32 7, float %936)  ; Saturate(value)
  %938 = fsub fast float 2.000000e+00, %937
  %939 = fmul fast float %937, 9.921875e-01
  %940 = fmul fast float %939, %938
  %941 = fadd fast float %940, 3.906250e-03
  %942 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %941, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %943 = extractvalue %dx.types.ResRet.f32 %942, 0
  %944 = fsub fast float %937, %943
  %945 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %944)  ; FMax(a,b)
  %946 = fmul fast float %453, %437
  %947 = call float @dx.op.unary.f32(i32 6, float %946)  ; FAbs(value)
  %948 = fcmp fast ogt float %947, 0x3EB0C6F7A0000000
  br i1 %948, label %949, label %955, !dx.controlflow.hints !93

; <label>:949                                     ; preds = %935
  %950 = fmul fast float %946, 0xBFF7154760000000
  %951 = call float @dx.op.unary.f32(i32 21, float %950)  ; Exp(value)
  %952 = fsub fast float 1.000000e+00, %951
  %953 = fdiv fast float %952, %946
  %954 = fmul fast float %953, %463
  br label %955

; <label>:955                                     ; preds = %949, %935
  %956 = phi float [ %954, %949 ], [ %463, %935 ]
  %957 = fadd fast float %956, %465
  %958 = fmul fast float %957, %945
  %959 = fmul fast float %450, %958
  %960 = fsub fast float -0.000000e+00, %959
  %961 = fmul fast float %451, %958
  %962 = fsub fast float -0.000000e+00, %961
  %963 = fmul fast float %452, %958
  %964 = fsub fast float -0.000000e+00, %963
  %965 = call float @dx.op.unary.f32(i32 21, float %960)  ; Exp(value)
  %966 = call float @dx.op.unary.f32(i32 21, float %962)  ; Exp(value)
  %967 = call float @dx.op.unary.f32(i32 21, float %964)  ; Exp(value)
  %968 = fmul fast float %479, %479
  %969 = fadd fast float %968, 1.000000e+00
  %970 = fmul fast float %969, 0x3FAE8EC8A0000000
  %971 = fmul fast float %970, %460
  %972 = fmul fast float %970, %461
  %973 = fmul fast float %970, %462
  %974 = fmul fast float %479, %458
  %975 = fsub fast float 1.000000e+00, %974
  %976 = fmul fast float %458, %458
  %977 = fsub fast float 1.000000e+00, %976
  %978 = fmul fast float %977, 0x3FB45F3060000000
  %979 = fmul fast float %975, %975
  %980 = fdiv fast float 1.000000e+00, %979
  %981 = fmul fast float %978, %980
  %982 = fmul fast float %981, %455
  %983 = fmul fast float %981, %456
  %984 = fmul fast float %981, %457
  %985 = fadd fast float %982, %971
  %986 = fadd fast float %983, %972
  %987 = fadd fast float %984, %973
  %988 = fsub fast float 1.000000e+00, %965
  %989 = fsub fast float 1.000000e+00, %966
  %990 = fsub fast float 1.000000e+00, %967
  %991 = fmul fast float %985, %988
  %992 = fmul fast float %986, %989
  %993 = fmul fast float %987, %990
  br label %994

; <label>:994                                     ; preds = %955, %906
  %995 = phi float [ %932, %906 ], [ %991, %955 ]
  %996 = phi float [ %933, %906 ], [ %992, %955 ]
  %997 = phi float [ %934, %906 ], [ %993, %955 ]
  %998 = phi float [ %921, %906 ], [ %965, %955 ]
  %999 = phi float [ %921, %906 ], [ %966, %955 ]
  %1000 = phi float [ %921, %906 ], [ %967, %955 ]
  br i1 %487, label %1001, label %1199, !dx.controlflow.hints !94

; <label>:1001                                    ; preds = %994
  %1002 = extractvalue %dx.types.CBufRet.f32 %900, 0
  %1003 = fmul fast float %1002, %902
  %1004 = fsub fast float %897, %995
  %1005 = fsub fast float %898, %996
  %1006 = fsub fast float %899, %997
  %1007 = fmul fast float %1003, %1004
  %1008 = fmul fast float %1003, %1005
  %1009 = fmul fast float %1003, %1006
  %1010 = fadd fast float %1007, %995
  %1011 = fadd fast float %1008, %996
  %1012 = fadd fast float %1009, %997
  %1013 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %998)  ; FMax(a,b)
  %1014 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %999)  ; FMax(a,b)
  %1015 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1000)  ; FMax(a,b)
  %1016 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %896)  ; FMax(a,b)
  %1017 = call float @dx.op.binary.f32(i32 35, float %895, float %905)  ; FMax(a,b)
  %1018 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1017)  ; FMax(a,b)
  %1019 = fdiv fast float %895, %1018
  %1020 = call float @dx.op.unary.f32(i32 7, float %1019)  ; Saturate(value)
  %1021 = fdiv fast float %905, %1018
  %1022 = call float @dx.op.unary.f32(i32 7, float %1021)  ; Saturate(value)
  %1023 = fcmp fast une float %1016, 1.000000e+00
  br i1 %1023, label %1024, label %1037, !dx.controlflow.hints !95

; <label>:1024                                    ; preds = %1001
  %1025 = call float @dx.op.unary.f32(i32 23, float %1016)  ; Log(value)
  %1026 = fmul fast float %1025, 0x3FE62E4300000000
  %1027 = fmul fast float %897, %1026
  %1028 = fsub fast float -0.000000e+00, %1027
  %1029 = fmul fast float %898, %1026
  %1030 = fsub fast float -0.000000e+00, %1029
  %1031 = fmul fast float %899, %1026
  %1032 = fsub fast float -0.000000e+00, %1031
  %1033 = fsub fast float 1.000000e+00, %1016
  %1034 = fdiv fast float %1028, %1033
  %1035 = fdiv fast float %1030, %1033
  %1036 = fdiv fast float %1032, %1033
  br label %1037

; <label>:1037                                    ; preds = %1024, %1001
  %1038 = phi float [ %1034, %1024 ], [ %897, %1001 ]
  %1039 = phi float [ %1035, %1024 ], [ %898, %1001 ]
  %1040 = phi float [ %1036, %1024 ], [ %899, %1001 ]
  %1041 = phi float [ %1026, %1024 ], [ 0.000000e+00, %1001 ]
  %1042 = fcmp fast une float %1013, 1.000000e+00
  br i1 %1042, label %1043, label %1050, !dx.controlflow.hints !96

; <label>:1043                                    ; preds = %1037
  %1044 = call float @dx.op.unary.f32(i32 23, float %1013)  ; Log(value)
  %1045 = fmul fast float %1044, 0x3FE62E4300000000
  %1046 = fmul fast float %1010, %1045
  %1047 = fsub fast float -0.000000e+00, %1046
  %1048 = fsub fast float 1.000000e+00, %1013
  %1049 = fdiv fast float %1047, %1048
  br label %1050

; <label>:1050                                    ; preds = %1043, %1037
  %1051 = phi float [ %1049, %1043 ], [ %1010, %1037 ]
  %1052 = phi float [ %1045, %1043 ], [ 0.000000e+00, %1037 ]
  %1053 = fcmp fast une float %1014, 1.000000e+00
  br i1 %1053, label %1054, label %1061, !dx.controlflow.hints !96

; <label>:1054                                    ; preds = %1050
  %1055 = call float @dx.op.unary.f32(i32 23, float %1014)  ; Log(value)
  %1056 = fmul fast float %1055, 0x3FE62E4300000000
  %1057 = fmul fast float %1011, %1056
  %1058 = fsub fast float -0.000000e+00, %1057
  %1059 = fsub fast float 1.000000e+00, %1014
  %1060 = fdiv fast float %1058, %1059
  br label %1061

; <label>:1061                                    ; preds = %1054, %1050
  %1062 = phi float [ %1060, %1054 ], [ %1011, %1050 ]
  %1063 = phi float [ %1056, %1054 ], [ 0.000000e+00, %1050 ]
  %1064 = fcmp fast une float %1015, 1.000000e+00
  br i1 %1064, label %1065, label %1072, !dx.controlflow.hints !96

; <label>:1065                                    ; preds = %1061
  %1066 = call float @dx.op.unary.f32(i32 23, float %1015)  ; Log(value)
  %1067 = fmul fast float %1066, 0x3FE62E4300000000
  %1068 = fmul fast float %1012, %1067
  %1069 = fsub fast float -0.000000e+00, %1068
  %1070 = fsub fast float 1.000000e+00, %1015
  %1071 = fdiv fast float %1069, %1070
  br label %1072

; <label>:1072                                    ; preds = %1065, %1061
  %1073 = phi float [ %1071, %1065 ], [ %1012, %1061 ]
  %1074 = phi float [ %1067, %1065 ], [ 0.000000e+00, %1061 ]
  %1075 = fmul fast float %1038, %1022
  %1076 = fmul fast float %1039, %1022
  %1077 = fmul fast float %1040, %1022
  %1078 = fmul fast float %1041, %1022
  %1079 = fmul fast float %1051, %1020
  %1080 = fmul fast float %1062, %1020
  %1081 = fmul fast float %1073, %1020
  %1082 = fmul fast float %1052, %1020
  %1083 = fmul fast float %1063, %1020
  %1084 = fmul fast float %1074, %1020
  %1085 = fadd fast float %1079, %1075
  %1086 = fadd fast float %1080, %1076
  %1087 = fadd fast float %1081, %1077
  %1088 = fadd fast float %1082, %1078
  %1089 = fadd fast float %1083, %1078
  %1090 = fadd fast float %1084, %1078
  %1091 = fcmp fast une float %1088, 0.000000e+00
  br i1 %1091, label %1092, label %1099, !dx.controlflow.hints !97

; <label>:1092                                    ; preds = %1072
  %1093 = fmul fast float %1088, 0x3FF7154760000000
  %1094 = call float @dx.op.unary.f32(i32 21, float %1093)  ; Exp(value)
  %1095 = fsub fast float 1.000000e+00, %1094
  %1096 = fmul fast float %1085, %1095
  %1097 = fsub fast float -0.000000e+00, %1096
  %1098 = fdiv fast float %1097, %1088
  br label %1099

; <label>:1099                                    ; preds = %1092, %1072
  %1100 = phi float [ %1094, %1092 ], [ 1.000000e+00, %1072 ]
  %1101 = phi float [ %1098, %1092 ], [ %1085, %1072 ]
  %1102 = fcmp fast une float %1089, 0.000000e+00
  br i1 %1102, label %1103, label %1110, !dx.controlflow.hints !97

; <label>:1103                                    ; preds = %1099
  %1104 = fmul fast float %1089, 0x3FF7154760000000
  %1105 = call float @dx.op.unary.f32(i32 21, float %1104)  ; Exp(value)
  %1106 = fsub fast float 1.000000e+00, %1105
  %1107 = fmul fast float %1086, %1106
  %1108 = fsub fast float -0.000000e+00, %1107
  %1109 = fdiv fast float %1108, %1089
  br label %1110

; <label>:1110                                    ; preds = %1103, %1099
  %1111 = phi float [ %1105, %1103 ], [ 1.000000e+00, %1099 ]
  %1112 = phi float [ %1109, %1103 ], [ %1086, %1099 ]
  %1113 = fcmp fast une float %1090, 0.000000e+00
  br i1 %1113, label %1114, label %1121, !dx.controlflow.hints !97

; <label>:1114                                    ; preds = %1110
  %1115 = fmul fast float %1090, 0x3FF7154760000000
  %1116 = call float @dx.op.unary.f32(i32 21, float %1115)  ; Exp(value)
  %1117 = fsub fast float 1.000000e+00, %1116
  %1118 = fmul fast float %1087, %1117
  %1119 = fsub fast float -0.000000e+00, %1118
  %1120 = fdiv fast float %1119, %1090
  br label %1121

; <label>:1121                                    ; preds = %1114, %1110
  %1122 = phi float [ %1116, %1114 ], [ 1.000000e+00, %1110 ]
  %1123 = phi float [ %1120, %1114 ], [ %1087, %1110 ]
  %1124 = fcmp fast ogt float %1020, %1022
  br i1 %1124, label %1125, label %1145

; <label>:1125                                    ; preds = %1121
  %1126 = fsub fast float 1.000000e+00, %1022
  %1127 = fmul fast float %1038, %1126
  %1128 = fmul fast float %1039, %1126
  %1129 = fmul fast float %1040, %1126
  %1130 = fmul fast float %1041, %1126
  %1131 = fcmp fast une float %1130, 0.000000e+00
  br i1 %1131, label %1132, label %1183, !dx.controlflow.hints !98

; <label>:1132                                    ; preds = %1125
  %1133 = fmul fast float %1130, 0x3FF7154760000000
  %1134 = call float @dx.op.unary.f32(i32 21, float %1133)  ; Exp(value)
  %1135 = fsub fast float 1.000000e+00, %1134
  %1136 = fmul fast float %1127, %1135
  %1137 = fsub fast float -0.000000e+00, %1136
  %1138 = fmul fast float %1128, %1135
  %1139 = fsub fast float -0.000000e+00, %1138
  %1140 = fmul fast float %1129, %1135
  %1141 = fsub fast float -0.000000e+00, %1140
  %1142 = fdiv fast float %1137, %1130
  %1143 = fdiv fast float %1139, %1130
  %1144 = fdiv fast float %1141, %1130
  br label %1183

; <label>:1145                                    ; preds = %1121
  %1146 = fsub fast float 1.000000e+00, %1020
  %1147 = fmul fast float %1051, %1146
  %1148 = fmul fast float %1062, %1146
  %1149 = fmul fast float %1073, %1146
  %1150 = fmul fast float %1052, %1146
  %1151 = fmul fast float %1063, %1146
  %1152 = fmul fast float %1074, %1146
  %1153 = fcmp fast une float %1150, 0.000000e+00
  br i1 %1153, label %1154, label %1161, !dx.controlflow.hints !97

; <label>:1154                                    ; preds = %1145
  %1155 = fmul fast float %1150, 0x3FF7154760000000
  %1156 = call float @dx.op.unary.f32(i32 21, float %1155)  ; Exp(value)
  %1157 = fsub fast float 1.000000e+00, %1156
  %1158 = fmul fast float %1147, %1157
  %1159 = fsub fast float -0.000000e+00, %1158
  %1160 = fdiv fast float %1159, %1150
  br label %1161

; <label>:1161                                    ; preds = %1154, %1145
  %1162 = phi float [ %1160, %1154 ], [ %1147, %1145 ]
  %1163 = phi float [ %1156, %1154 ], [ 1.000000e+00, %1145 ]
  %1164 = fcmp fast une float %1151, 0.000000e+00
  br i1 %1164, label %1165, label %1172, !dx.controlflow.hints !97

; <label>:1165                                    ; preds = %1161
  %1166 = fmul fast float %1151, 0x3FF7154760000000
  %1167 = call float @dx.op.unary.f32(i32 21, float %1166)  ; Exp(value)
  %1168 = fsub fast float 1.000000e+00, %1167
  %1169 = fmul fast float %1148, %1168
  %1170 = fsub fast float -0.000000e+00, %1169
  %1171 = fdiv fast float %1170, %1151
  br label %1172

; <label>:1172                                    ; preds = %1165, %1161
  %1173 = phi float [ %1171, %1165 ], [ %1148, %1161 ]
  %1174 = phi float [ %1167, %1165 ], [ 1.000000e+00, %1161 ]
  %1175 = fcmp fast une float %1152, 0.000000e+00
  br i1 %1175, label %1176, label %1183, !dx.controlflow.hints !97

; <label>:1176                                    ; preds = %1172
  %1177 = fmul fast float %1152, 0x3FF7154760000000
  %1178 = call float @dx.op.unary.f32(i32 21, float %1177)  ; Exp(value)
  %1179 = fsub fast float 1.000000e+00, %1178
  %1180 = fmul fast float %1149, %1179
  %1181 = fsub fast float -0.000000e+00, %1180
  %1182 = fdiv fast float %1181, %1152
  br label %1183

; <label>:1183                                    ; preds = %1176, %1172, %1132, %1125
  %1184 = phi float [ %1182, %1176 ], [ %1144, %1132 ], [ %1129, %1125 ], [ %1149, %1172 ]
  %1185 = phi float [ %1173, %1176 ], [ %1143, %1132 ], [ %1128, %1125 ], [ %1173, %1172 ]
  %1186 = phi float [ %1162, %1176 ], [ %1142, %1132 ], [ %1127, %1125 ], [ %1162, %1172 ]
  %1187 = phi float [ %1178, %1176 ], [ %1134, %1132 ], [ 1.000000e+00, %1125 ], [ 1.000000e+00, %1172 ]
  %1188 = phi float [ %1174, %1176 ], [ %1134, %1132 ], [ 1.000000e+00, %1125 ], [ %1174, %1172 ]
  %1189 = phi float [ %1163, %1176 ], [ %1134, %1132 ], [ 1.000000e+00, %1125 ], [ %1163, %1172 ]
  %1190 = fmul fast float %1189, %1101
  %1191 = fmul fast float %1188, %1112
  %1192 = fmul fast float %1187, %1123
  %1193 = fadd fast float %1190, %1186
  %1194 = fadd fast float %1191, %1185
  %1195 = fadd fast float %1192, %1184
  %1196 = fmul fast float %1189, %1100
  %1197 = fmul fast float %1188, %1111
  %1198 = fmul fast float %1187, %1122
  br label %1199

; <label>:1199                                    ; preds = %1183, %994
  %1200 = phi float [ %1198, %1183 ], [ %1000, %994 ]
  %1201 = phi float [ %1197, %1183 ], [ %999, %994 ]
  %1202 = phi float [ %1196, %1183 ], [ %998, %994 ]
  %1203 = phi float [ %1195, %1183 ], [ %997, %994 ]
  %1204 = phi float [ %1194, %1183 ], [ %996, %994 ]
  %1205 = phi float [ %1193, %1183 ], [ %995, %994 ]
  %1206 = fmul fast float %1205, %274
  %1207 = fmul fast float %1204, %274
  %1208 = fmul fast float %1203, %274
  %1209 = fmul fast float %1202, %442
  %1210 = call float @dx.op.dot3.f32(i32 55, float %1202, float %1201, float %1200, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1211 = call float @dx.op.dot3.f32(i32 55, float %1206, float %1207, float %1208, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1212 = select i1 %98, float %1210, float %1202
  %1213 = select i1 %98, float %1210, float %1201
  %1214 = select i1 %98, float 1.000000e+00, float %1200
  %1215 = select i1 %98, float %1211, float %1206
  %1216 = select i1 %98, float 0.000000e+00, float %1207
  %1217 = select i1 %98, float 0.000000e+00, float %1208
  %1218 = fmul fast float %1212, %439
  %1219 = fmul fast float %1213, %440
  %1220 = fmul fast float %1214, %441
  %1221 = fadd fast float %1218, %1215
  %1222 = fadd fast float %1219, %1216
  %1223 = fadd fast float %1217, %1220
  %1224 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1225 = extractvalue %dx.types.CBufRet.i32 %1224, 0
  %1226 = icmp eq i32 %1225, 0
  br i1 %1226, label %1591, label %1227, !dx.controlflow.hints !99

; <label>:1227                                    ; preds = %1199
  %1228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1229 = extractvalue %dx.types.CBufRet.f32 %1228, 2
  %1230 = extractvalue %dx.types.CBufRet.f32 %1228, 3
  %1231 = fmul fast float %1229, %35
  %1232 = fmul fast float %1230, %36
  %1233 = fmul fast float %1231, 2.000000e+00
  %1234 = fmul fast float %1232, 2.000000e+00
  %1235 = fsub fast float 1.000000e+00, %1233
  %1236 = fsub fast float 1.000000e+00, %1234
  %1237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1238 = extractvalue %dx.types.CBufRet.f32 %1237, 0
  %1239 = extractvalue %dx.types.CBufRet.f32 %1237, 1
  %1240 = extractvalue %dx.types.CBufRet.f32 %1237, 2
  %1241 = fmul fast float %1235, %1238
  %1242 = fmul fast float %1235, %1239
  %1243 = fmul fast float %1235, %1240
  %1244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1245 = extractvalue %dx.types.CBufRet.f32 %1244, 0
  %1246 = extractvalue %dx.types.CBufRet.f32 %1244, 1
  %1247 = extractvalue %dx.types.CBufRet.f32 %1244, 2
  %1248 = fmul fast float %1236, %1245
  %1249 = fmul fast float %1236, %1246
  %1250 = fmul fast float %1236, %1247
  %1251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1252 = extractvalue %dx.types.CBufRet.f32 %1251, 0
  %1253 = extractvalue %dx.types.CBufRet.f32 %1251, 1
  %1254 = extractvalue %dx.types.CBufRet.f32 %1251, 2
  %1255 = fadd fast float %1248, %1252
  %1256 = fadd fast float %1255, %1241
  %1257 = fadd fast float %1249, %1253
  %1258 = fadd fast float %1257, %1242
  %1259 = fadd fast float %1250, %1254
  %1260 = fadd fast float %1259, %1243
  %1261 = fmul fast float %1256, %438
  %1262 = fmul fast float %1258, %438
  %1263 = fmul fast float %1260, %438
  %1264 = fmul fast float %1261, %1261
  %1265 = fmul fast float %1262, %1262
  %1266 = fadd fast float %1264, %1265
  %1267 = fmul fast float %1263, %1263
  %1268 = fadd fast float %1266, %1267
  %1269 = call float @dx.op.unary.f32(i32 24, float %1268)  ; Sqrt(value)
  %1270 = extractvalue %dx.types.CBufRet.f32 %282, 0
  %1271 = fsub fast float %1269, %1270
  %1272 = extractvalue %dx.types.CBufRet.f32 %282, 2
  %1273 = fmul fast float %1271, %1272
  %1274 = call float @dx.op.unary.f32(i32 7, float %1273)  ; Saturate(value)
  %1275 = fadd fast float %1274, -5.000000e-01
  %1276 = fmul fast float %1275, 2.000000e+00
  %1277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1278 = extractvalue %dx.types.CBufRet.f32 %1277, 2
  %1279 = call float @dx.op.binary.f32(i32 36, float %1278, float %1276)  ; FMin(a,b)
  %1280 = fsub fast float -0.000000e+00, %1278
  %1281 = fcmp fast ogt float %1279, %1280
  br i1 %1281, label %1282, label %1591, !dx.controlflow.hints !100

; <label>:1282                                    ; preds = %1227
  %1283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %1284 = extractvalue %dx.types.CBufRet.f32 %1283, 3
  %1285 = fcmp fast ogt float %1284, 0.000000e+00
  br i1 %1285, label %1286, label %1361, !dx.controlflow.hints !101

; <label>:1286                                    ; preds = %1282
  %1287 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %12, i32 0)  ; GetDimensions(handle,mipLevel)
  %1288 = extractvalue %dx.types.Dimensions %1287, 0
  %1289 = sitofp i32 %1288 to float
  %1290 = extractvalue %dx.types.Dimensions %1287, 1
  %1291 = sitofp i32 %1290 to float
  %1292 = fmul fast float %1231, %1289
  %1293 = fmul fast float %1232, %1291
  %1294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1295 = extractvalue %dx.types.CBufRet.f32 %1294, 1
  %1296 = fsub fast float -0.000000e+00, %1295
  %1297 = fptoui float %1296 to i32
  %1298 = fptoui float %1292 to i32
  %1299 = fptoui float %1293 to i32
  %1300 = and i32 %1297, 31
  %1301 = lshr i32 %1298, %1300
  %1302 = lshr i32 %1299, %1300
  %1303 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %1297, i32 %1301, i32 %1302, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1304 = extractvalue %dx.types.ResRet.f32 %1303, 0
  %1305 = fcmp fast olt float %1304, -1.000000e+00
  %1306 = fcmp fast ogt float %1304, -1.000000e+00
  %1307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1308 = extractvalue %dx.types.CBufRet.f32 %1307, 1
  %1309 = select i1 %1306, float %1308, float 1.000000e+00
  %1310 = fadd fast float %1304, 1.000000e+00
  %1311 = fmul fast float %1309, %1310
  %1312 = call float @dx.op.unary.f32(i32 6, float %1311)  ; FAbs(value)
  %1313 = extractvalue %dx.types.CBufRet.f32 %1307, 3
  %1314 = fcmp fast oge float %1312, %1313
  %1315 = select i1 %1314, float 0x4197782600000000, float %1312
  %1316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %1317 = extractvalue %dx.types.CBufRet.f32 %1316, 0
  %1318 = extractvalue %dx.types.CBufRet.f32 %1316, 1
  %1319 = extractvalue %dx.types.CBufRet.f32 %1316, 2
  %1320 = select i1 %1305, float %1317, float %1238
  %1321 = select i1 %1305, float %1318, float %1239
  %1322 = select i1 %1305, float %1319, float %1240
  %1323 = fmul fast float %1320, %1235
  %1324 = fmul fast float %1321, %1235
  %1325 = fmul fast float %1322, %1235
  %1326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %1327 = extractvalue %dx.types.CBufRet.f32 %1326, 0
  %1328 = extractvalue %dx.types.CBufRet.f32 %1326, 1
  %1329 = extractvalue %dx.types.CBufRet.f32 %1326, 2
  %1330 = select i1 %1305, float %1327, float %1245
  %1331 = select i1 %1305, float %1328, float %1246
  %1332 = select i1 %1305, float %1329, float %1247
  %1333 = fmul fast float %1330, %1236
  %1334 = fmul fast float %1331, %1236
  %1335 = fmul fast float %1332, %1236
  %1336 = fadd fast float %1333, %1323
  %1337 = fadd fast float %1334, %1324
  %1338 = fadd fast float %1335, %1325
  %1339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %1340 = extractvalue %dx.types.CBufRet.f32 %1339, 0
  %1341 = extractvalue %dx.types.CBufRet.f32 %1339, 1
  %1342 = extractvalue %dx.types.CBufRet.f32 %1339, 2
  %1343 = select i1 %1305, float %1340, float %1252
  %1344 = select i1 %1305, float %1341, float %1253
  %1345 = select i1 %1305, float %1342, float %1254
  %1346 = fadd fast float %1336, %1343
  %1347 = fadd fast float %1337, %1344
  %1348 = fadd fast float %1338, %1345
  %1349 = fmul fast float %1346, %1315
  %1350 = fmul fast float %1347, %1315
  %1351 = fmul fast float %1348, %1315
  %1352 = fmul fast float %1349, %1349
  %1353 = fmul fast float %1350, %1350
  %1354 = fadd fast float %1352, %1353
  %1355 = fmul fast float %1351, %1351
  %1356 = fadd fast float %1354, %1355
  %1357 = call float @dx.op.unary.f32(i32 24, float %1356)  ; Sqrt(value)
  %1358 = fsub fast float %1357, %1270
  %1359 = fmul fast float %1358, %1272
  %1360 = call float @dx.op.unary.f32(i32 7, float %1359)  ; Saturate(value)
  br label %1361

; <label>:1361                                    ; preds = %1286, %1282
  %1362 = phi float [ %1360, %1286 ], [ 1.000000e+00, %1282 ]
  %1363 = fmul fast float %1279, 5.000000e-01
  %1364 = fadd fast float %1363, 5.000000e-01
  %1365 = call float @dx.op.unary.f32(i32 22, float %1364)  ; Frc(value)
  %1366 = call float @dx.op.unary.f32(i32 27, float %1365)  ; Round_ni(value)
  %1367 = call float @dx.op.unary.f32(i32 22, float %1365)  ; Frc(value)
  %1368 = fmul fast float %1367, 2.000000e+00
  %1369 = fadd fast float %1368, -1.000000e+00
  %1370 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %17, float %1231, float %1232, float %1366, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1371 = extractvalue %dx.types.ResRet.f32 %1370, 0
  %1372 = extractvalue %dx.types.ResRet.f32 %1370, 1
  %1373 = extractvalue %dx.types.ResRet.f32 %1370, 2
  %1374 = extractvalue %dx.types.ResRet.f32 %1370, 3
  %1375 = fadd fast float %1371, -5.000000e-01
  %1376 = fadd fast float %1373, -5.000000e-01
  %1377 = fmul fast float %1375, 0xBFD5555560000000
  %1378 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1376, float %1377)  ; FMad(a,b,c)
  %1379 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1372, float 0.000000e+00)  ; FMad(a,b,c)
  %1380 = fadd fast float %1379, %1374
  %1381 = fmul fast float %1375, -7.500000e-01
  %1382 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1376, float %1381)  ; FMad(a,b,c)
  %1383 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1372, float 0.000000e+00)  ; FMad(a,b,c)
  %1384 = fadd fast float %1383, %1374
  %1385 = call float @dx.op.binary.f32(i32 35, float %1378, float -1.000000e+00)  ; FMax(a,b)
  %1386 = call float @dx.op.binary.f32(i32 35, float %1380, float -1.000000e+00)  ; FMax(a,b)
  %1387 = call float @dx.op.binary.f32(i32 35, float %1382, float -1.000000e+00)  ; FMax(a,b)
  %1388 = call float @dx.op.binary.f32(i32 35, float %1384, float -1.000000e+00)  ; FMax(a,b)
  %1389 = call float @dx.op.binary.f32(i32 36, float %1385, float 1.000000e+00)  ; FMin(a,b)
  %1390 = call float @dx.op.binary.f32(i32 36, float %1386, float 1.000000e+00)  ; FMin(a,b)
  %1391 = call float @dx.op.binary.f32(i32 36, float %1387, float 1.000000e+00)  ; FMin(a,b)
  %1392 = call float @dx.op.binary.f32(i32 36, float %1388, float 1.000000e+00)  ; FMin(a,b)
  %1393 = fcmp fast olt float %1389, 0x3FEFFF8020000000
  br i1 %1393, label %1394, label %1509, !dx.controlflow.hints !102

; <label>:1394                                    ; preds = %1361
  %1395 = extractvalue %dx.types.CBufRet.f32 %1277, 3
  %1396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1397 = extractvalue %dx.types.CBufRet.f32 %1396, 0
  %1398 = extractvalue %dx.types.CBufRet.f32 %1396, 1
  %1399 = extractvalue %dx.types.CBufRet.f32 %1396, 2
  %1400 = extractvalue %dx.types.CBufRet.f32 %1396, 3
  %1401 = fsub fast float %1397, %1389
  %1402 = fsub fast float %1398, %1390
  %1403 = fsub fast float %1399, %1391
  %1404 = fsub fast float %1400, %1392
  %1405 = fmul fast float %1401, %1395
  %1406 = fmul fast float %1402, %1395
  %1407 = fmul fast float %1403, %1395
  %1408 = fmul fast float %1404, %1395
  %1409 = fadd fast float %1405, %1389
  %1410 = fadd fast float %1406, %1390
  %1411 = fsub fast float -0.000000e+00, %1410
  %1412 = fadd fast float %1407, %1391
  %1413 = fadd fast float %1408, %1392
  %1414 = fmul fast float %1409, %1409
  %1415 = fsub fast float %1410, %1414
  %1416 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1415)  ; FMax(a,b)
  %1417 = fdiv fast float 1.000000e+00, %1416
  %1418 = fmul fast float %1410, %1409
  %1419 = fsub fast float %1412, %1418
  %1420 = fsub fast float %1369, %1409
  %1421 = fmul fast float %1369, %1369
  %1422 = fsub fast float %1421, %1410
  %1423 = fmul fast float %1420, %1417
  %1424 = fmul fast float %1423, %1419
  %1425 = fsub fast float %1422, %1424
  %1426 = fmul fast float %1410, %1410
  %1427 = fsub fast float %1413, %1426
  %1428 = fmul fast float %1419, %1419
  %1429 = fmul fast float %1428, %1417
  %1430 = fsub fast float %1427, %1429
  %1431 = fdiv fast float %1425, %1430
  %1432 = fmul fast float %1419, %1431
  %1433 = fsub fast float %1420, %1432
  %1434 = fmul fast float %1433, %1417
  %1435 = fmul fast float %1434, %1409
  %1436 = fsub fast float 1.000000e+00, %1435
  %1437 = fmul fast float %1410, %1431
  %1438 = fsub fast float %1436, %1437
  %1439 = fmul fast float %1434, %1434
  %1440 = fmul fast float %1431, 4.000000e+00
  %1441 = fmul fast float %1440, %1438
  %1442 = fsub fast float %1439, %1441
  %1443 = call float @dx.op.unary.f32(i32 24, float %1442)  ; Sqrt(value)
  %1444 = fcmp fast oge float %1434, 0.000000e+00
  %1445 = fsub fast float -0.000000e+00, %1443
  %1446 = select i1 %1444, float %1445, float %1443
  %1447 = fsub fast float %1446, %1434
  %1448 = fdiv fast float %1447, %1431
  %1449 = fdiv fast float %1438, %1447
  %1450 = fmul fast float %1448, 5.000000e-01
  %1451 = fmul fast float %1449, 2.000000e+00
  %1452 = select i1 %1444, float %1450, float %1451
  %1453 = select i1 %1444, float %1451, float %1450
  %1454 = call float @dx.op.binary.f32(i32 35, float %1452, float %1453)  ; FMax(a,b)
  %1455 = call float @dx.op.binary.f32(i32 36, float %1452, float %1453)  ; FMin(a,b)
  %1456 = fcmp fast ogt float %1369, %1455
  br i1 %1456, label %1457, label %1467

; <label>:1457                                    ; preds = %1394
  %1458 = fsub fast float %1369, %1455
  %1459 = fsub fast float %1454, %1455
  %1460 = fmul fast float %1458, %1459
  %1461 = fmul fast float %1454, %1369
  %1462 = fadd fast float %1454, %1369
  %1463 = fmul fast float %1462, %1409
  %1464 = fadd fast float %1461, %1410
  %1465 = fsub fast float %1464, %1463
  %1466 = fdiv fast float %1465, %1460
  br label %1467

; <label>:1467                                    ; preds = %1457, %1394
  %1468 = phi float [ %1466, %1457 ], [ 0.000000e+00, %1394 ]
  %1469 = fcmp fast ogt float %1369, %1454
  %1470 = fsub fast float %1369, %1454
  br i1 %1469, label %1471, label %1481

; <label>:1471                                    ; preds = %1467
  %1472 = fsub fast float %1454, %1455
  %1473 = fmul fast float %1472, %1470
  %1474 = fmul fast float %1455, %1369
  %1475 = fadd fast float %1455, %1369
  %1476 = fmul fast float %1475, %1409
  %1477 = fsub fast float %1411, %1474
  %1478 = fadd fast float %1477, %1476
  %1479 = fdiv fast float %1478, %1473
  %1480 = fadd fast float %1479, %1468
  br label %1481

; <label>:1481                                    ; preds = %1471, %1467
  %1482 = phi float [ %1480, %1471 ], [ %1468, %1467 ]
  %1483 = fsub fast float %1369, %1455
  %1484 = fmul fast float %1483, %1470
  %1485 = fmul fast float %1455, %1454
  %1486 = fadd fast float %1455, %1454
  %1487 = fmul fast float %1486, %1409
  %1488 = fadd fast float %1485, %1410
  %1489 = fsub fast float %1488, %1487
  %1490 = fdiv fast float %1489, %1484
  %1491 = call float @dx.op.unary.f32(i32 7, float %1482)  ; Saturate(value)
  %1492 = fcmp fast oeq float %283, 0.000000e+00
  %1493 = extractvalue %dx.types.CBufRet.f32 %1277, 0
  %1494 = fcmp fast oeq float %1493, 0.000000e+00
  %1495 = or i1 %1492, %1494
  %1496 = fmul fast float %1493, 2.000000e+00
  %1497 = fadd fast float %1278, %1279
  %1498 = fdiv fast float %1497, %1496
  %1499 = call float @dx.op.unary.f32(i32 7, float %1498)  ; Saturate(value)
  %1500 = fmul fast float %1499, 2.000000e+00
  %1501 = fsub fast float 3.000000e+00, %1500
  %1502 = fmul fast float %1499, %1499
  %1503 = fmul fast float %1502, %1501
  %1504 = select i1 %1495, float 1.000000e+00, float %1503
  %1505 = fmul fast float %1490, %283
  %1506 = fadd fast float %1491, %1505
  %1507 = call float @dx.op.unary.f32(i32 7, float %1506)  ; Saturate(value)
  %1508 = fmul fast float %1504, %1507
  br label %1509

; <label>:1509                                    ; preds = %1481, %1361
  %1510 = phi float [ %1508, %1481 ], [ 0.000000e+00, %1361 ]
  %1511 = fsub fast float 1.000000e+00, %1510
  %1512 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %1231, float %1232, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1513 = extractvalue %dx.types.ResRet.f32 %1512, 0
  %1514 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1515 = extractvalue %dx.types.CBufRet.i32 %1514, 2
  %1516 = icmp eq i32 %1515, 0
  br i1 %1516, label %1522, label %1517

; <label>:1517                                    ; preds = %1509
  %1518 = call float @dx.op.unary.f32(i32 7, float %1510)  ; Saturate(value)
  %1519 = fadd fast float %1513, -1.000000e+00
  %1520 = fmul fast float %1518, %1519
  %1521 = fadd fast float %1520, 1.000000e+00
  br label %1522

; <label>:1522                                    ; preds = %1517, %1509
  %1523 = phi float [ %1521, %1517 ], [ %1511, %1509 ]
  br i1 %1285, label %1524, label %1542

; <label>:1524                                    ; preds = %1522
  %1525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1526 = extractvalue %dx.types.CBufRet.f32 %1525, 1
  %1527 = fsub fast float %1362, %1526
  %1528 = call float @dx.op.unary.f32(i32 7, float %1527)  ; Saturate(value)
  %1529 = fsub fast float %1362, %1284
  %1530 = call float @dx.op.unary.f32(i32 7, float %1529)  ; Saturate(value)
  %1531 = fsub fast float %1528, %1530
  %1532 = fsub fast float %1364, %1530
  %1533 = fdiv fast float %1532, %1531
  %1534 = call float @dx.op.unary.f32(i32 7, float %1533)  ; Saturate(value)
  %1535 = fmul fast float %1534, 2.000000e+00
  %1536 = fsub fast float 3.000000e+00, %1535
  %1537 = fsub fast float %1513, %1523
  %1538 = fmul fast float %1534, %1534
  %1539 = fmul fast float %1538, %1537
  %1540 = fmul fast float %1539, %1536
  %1541 = fadd fast float %1540, %1523
  br label %1542

; <label>:1542                                    ; preds = %1524, %1522
  %1543 = phi float [ %1541, %1524 ], [ %1523, %1522 ]
  %1544 = call float @dx.op.binary.f32(i32 35, float %1513, float %1543)  ; FMax(a,b)
  %1545 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1546 = extractvalue %dx.types.CBufRet.i32 %1545, 2
  %1547 = and i32 %1546, 1
  %1548 = icmp eq i32 %1547, 0
  %1549 = fcmp fast une float %1544, 1.000000e+00
  %1550 = and i1 %1549, %1548
  br i1 %1550, label %1551, label %1570

; <label>:1551                                    ; preds = %1542
  %1552 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %17, float %1231, float %1232, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1553 = extractvalue %dx.types.ResRet.f32 %1552, 0
  %1554 = extractvalue %dx.types.ResRet.f32 %1552, 1
  %1555 = extractvalue %dx.types.ResRet.f32 %1552, 2
  %1556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1557 = extractvalue %dx.types.CBufRet.f32 %1556, 1
  %1558 = fmul fast float %1557, %1553
  %1559 = fmul fast float %1557, %1554
  %1560 = fmul fast float %1557, %1555
  %1561 = fcmp fast ogt float %1513, 0x3FEFFF2E40000000
  %1562 = fsub fast float 1.000000e+00, %1544
  %1563 = fsub fast float 1.000000e+00, %1513
  %1564 = fdiv fast float %1562, %1563
  %1565 = call float @dx.op.unary.f32(i32 7, float %1564)  ; Saturate(value)
  %1566 = select i1 %1561, float 0.000000e+00, float %1565
  %1567 = fmul fast float %1558, %1566
  %1568 = fmul fast float %1559, %1566
  %1569 = fmul fast float %1560, %1566
  br label %1570

; <label>:1570                                    ; preds = %1551, %1542
  %1571 = phi float [ 0.000000e+00, %1542 ], [ %1567, %1551 ]
  %1572 = phi float [ 0.000000e+00, %1542 ], [ %1568, %1551 ]
  %1573 = phi float [ 0.000000e+00, %1542 ], [ %1569, %1551 ]
  %1574 = fmul fast float %1571, %274
  %1575 = fmul fast float %1572, %274
  %1576 = fmul fast float %1573, %274
  %1577 = fmul fast float %1544, %1209
  %1578 = call float @dx.op.dot3.f32(i32 55, float %1544, float %1544, float %1544, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1579 = call float @dx.op.dot3.f32(i32 55, float %1574, float %1575, float %1576, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1580 = select i1 %98, float %1578, float %1544
  %1581 = select i1 %98, float 1.000000e+00, float %1544
  %1582 = select i1 %98, float %1579, float %1574
  %1583 = select i1 %98, float 0.000000e+00, float %1575
  %1584 = select i1 %98, float 0.000000e+00, float %1576
  %1585 = fmul fast float %1580, %1221
  %1586 = fmul fast float %1580, %1222
  %1587 = fmul fast float %1581, %1223
  %1588 = fadd fast float %1585, %1582
  %1589 = fadd fast float %1586, %1583
  %1590 = fadd fast float %1584, %1587
  br label %1591

; <label>:1591                                    ; preds = %1570, %1227, %1199, %434
  %1592 = phi float [ %439, %434 ], [ %1221, %1199 ], [ %1588, %1570 ], [ %1221, %1227 ]
  %1593 = phi float [ %440, %434 ], [ %1222, %1199 ], [ %1589, %1570 ], [ %1222, %1227 ]
  %1594 = phi float [ %441, %434 ], [ %1223, %1199 ], [ %1590, %1570 ], [ %1223, %1227 ]
  %1595 = phi float [ %442, %434 ], [ %1209, %1199 ], [ %1577, %1570 ], [ %1209, %1227 ]
  %1596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1597 = extractvalue %dx.types.CBufRet.f32 %1596, 2
  %1598 = extractvalue %dx.types.CBufRet.f32 %1596, 3
  %1599 = fmul fast float %1597, %35
  %1600 = fmul fast float %1598, %36
  %1601 = call float @dx.op.unary.f32(i32 7, float %1599)  ; Saturate(value)
  %1602 = call float @dx.op.unary.f32(i32 7, float %1600)  ; Saturate(value)
  %1603 = select i1 %294, i32 2, i32 0
  %1604 = or i32 %1603, 1
  %1605 = uitofp i32 %1604 to float
  %1606 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %17, float %1601, float %1602, float %1605, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1607 = extractvalue %dx.types.ResRet.f32 %1606, 0
  %1608 = extractvalue %dx.types.ResRet.f32 %1606, 1
  %1609 = extractvalue %dx.types.ResRet.f32 %1606, 2
  %1610 = extractvalue %dx.types.ResRet.f32 %1606, 3
  %1611 = add nuw nsw i32 %1603, 2
  %1612 = uitofp i32 %1611 to float
  %1613 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %17, float %1601, float %1602, float %1612, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1614 = extractvalue %dx.types.ResRet.f32 %1613, 0
  %1615 = extractvalue %dx.types.ResRet.f32 %1613, 1
  %1616 = extractvalue %dx.types.ResRet.f32 %1613, 2
  %1617 = extractvalue %dx.types.ResRet.f32 %1613, 3
  %1618 = call float @dx.op.binary.f32(i32 35, float %1608, float %1609)  ; FMax(a,b)
  %1619 = call float @dx.op.binary.f32(i32 35, float %1607, float %1618)  ; FMax(a,b)
  %1620 = call float @dx.op.binary.f32(i32 35, float %1619, float %1610)  ; FMax(a,b)
  %1621 = call float @dx.op.binary.f32(i32 36, float %1615, float %1616)  ; FMin(a,b)
  %1622 = call float @dx.op.binary.f32(i32 36, float %1614, float %1621)  ; FMin(a,b)
  %1623 = call float @dx.op.binary.f32(i32 36, float %1622, float %1617)  ; FMin(a,b)
  %1624 = fmul fast float %1620, 2.550000e+02
  %1625 = fadd fast float %1624, 0x3F70101020000000
  %1626 = fptoui float %1625 to i32
  %1627 = fmul fast float %1623, 2.550000e+02
  %1628 = fadd fast float %1627, 0x3F70101020000000
  %1629 = fptoui float %1628 to i32
  %1630 = icmp ult i32 %1626, %1629
  br i1 %1630, label %1631, label %1683

; <label>:1631                                    ; preds = %1591
  %1632 = fcmp fast ogt float %27, 9.843750e-01
  %1633 = fadd fast float %438, -4.000000e+00
  %1634 = select i1 %1632, float -4.000000e+00, float %1633
  %1635 = call float @dx.op.binary.f32(i32 35, float %1634, float 0.000000e+00)  ; FMax(a,b)
  %1636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1637 = extractvalue %dx.types.CBufRet.f32 %1636, 0
  %1638 = fadd fast float %1637, %1635
  %1639 = extractvalue %dx.types.CBufRet.f32 %1636, 2
  %1640 = fmul fast float %1638, %1639
  %1641 = call float @dx.op.unary.f32(i32 23, float %1640)  ; Log(value)
  %1642 = extractvalue %dx.types.CBufRet.f32 %1636, 3
  %1643 = fmul fast float %1642, %1641
  %1644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1645 = extractvalue %dx.types.CBufRet.f32 %1644, 2
  %1646 = fmul fast float %1643, %1645
  %1647 = call float @dx.op.unary.f32(i32 7, float %1646)  ; Saturate(value)
  %1648 = uitofp i32 %1626 to float
  %1649 = uitofp i32 %1629 to float
  %1650 = fadd fast float %1648, 5.000000e-01
  %1651 = fadd fast float %1649, 5.000000e-01
  %1652 = fmul fast float %1645, %1650
  %1653 = fmul fast float %1645, %1651
  %1654 = fadd fast float %1652, 0x3F0FFB4800000000
  %1655 = fadd fast float %1653, 0xBF0FFB4800000000
  %1656 = call float @dx.op.binary.f32(i32 35, float %1647, float %1654)  ; FMax(a,b)
  %1657 = call float @dx.op.binary.f32(i32 36, float %1656, float %1655)  ; FMin(a,b)
  %1658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1659 = extractvalue %dx.types.CBufRet.f32 %1658, 1
  %1660 = extractvalue %dx.types.CBufRet.f32 %1658, 2
  %1661 = extractvalue %dx.types.CBufRet.f32 %1658, 0
  %1662 = select i1 %294, float %1661, float 0.000000e+00
  %1663 = fmul fast float %1659, %1657
  %1664 = fadd fast float %1662, %1663
  %1665 = fadd fast float %1662, %1660
  %1666 = fsub fast float %1659, %1660
  %1667 = fadd fast float %1666, %1662
  %1668 = call float @dx.op.binary.f32(i32 35, float %1664, float %1665)  ; FMax(a,b)
  %1669 = call float @dx.op.binary.f32(i32 36, float %1668, float %1667)  ; FMin(a,b)
  %1670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %16, float %1601, float %1602, float %1669, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1671 = extractvalue %dx.types.ResRet.f32 %1670, 0
  %1672 = extractvalue %dx.types.ResRet.f32 %1670, 1
  %1673 = extractvalue %dx.types.ResRet.f32 %1670, 2
  %1674 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1601, float %1602, float %1669, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1675 = extractvalue %dx.types.ResRet.f32 %1674, 0
  %1676 = extractvalue %dx.types.ResRet.f32 %1674, 1
  %1677 = extractvalue %dx.types.ResRet.f32 %1674, 2
  %1678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1679 = extractvalue %dx.types.CBufRet.f32 %1678, 1
  %1680 = fmul fast float %1679, %1675
  %1681 = fmul fast float %1679, %1676
  %1682 = fmul fast float %1679, %1677
  br label %1683

; <label>:1683                                    ; preds = %1631, %1591
  %1684 = phi float [ %1671, %1631 ], [ 1.000000e+00, %1591 ]
  %1685 = phi float [ %1672, %1631 ], [ 1.000000e+00, %1591 ]
  %1686 = phi float [ %1673, %1631 ], [ 1.000000e+00, %1591 ]
  %1687 = phi float [ %1680, %1631 ], [ 0.000000e+00, %1591 ]
  %1688 = phi float [ %1681, %1631 ], [ 0.000000e+00, %1591 ]
  %1689 = phi float [ %1682, %1631 ], [ 0.000000e+00, %1591 ]
  %1690 = fmul fast float %1687, %274
  %1691 = fmul fast float %1688, %274
  %1692 = fmul fast float %1689, %274
  %1693 = fmul fast float %1684, %1595
  %1694 = call float @dx.op.dot3.f32(i32 55, float %1684, float %1685, float %1686, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1695 = call float @dx.op.dot3.f32(i32 55, float %1690, float %1691, float %1692, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1696 = select i1 %98, float %1694, float %1684
  %1697 = select i1 %98, float %1694, float %1685
  %1698 = select i1 %98, float 1.000000e+00, float %1686
  %1699 = select i1 %98, float %1695, float %1690
  %1700 = select i1 %98, float 0.000000e+00, float %1691
  %1701 = select i1 %98, float 0.000000e+00, float %1692
  %1702 = fmul fast float %1696, %1592
  %1703 = fmul fast float %1697, %1593
  %1704 = fmul fast float %1698, %1594
  %1705 = fadd fast float %1702, %1699
  %1706 = fadd fast float %1703, %1700
  %1707 = fadd fast float %1701, %1704
  %1708 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1709 = extractvalue %dx.types.CBufRet.i32 %1708, 3
  %1710 = and i32 %1709, 3
  %1711 = icmp ne i32 %1710, 0
  %1712 = and i32 %1709, 4
  %1713 = icmp ne i32 %1712, 0
  %1714 = and i1 %1711, %1713
  %1715 = and i1 %98, %1714
  br i1 %1715, label %1716, label %1722

; <label>:1716                                    ; preds = %1683
  %1717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1718 = extractvalue %dx.types.CBufRet.f32 %1717, 1
  %1719 = fadd fast float %1693, -1.000000e+00
  %1720 = fmul fast float %1718, %1719
  %1721 = fadd fast float %1720, 1.000000e+00
  br label %1722

; <label>:1722                                    ; preds = %1716, %1683
  %1723 = phi float [ %1721, %1716 ], [ %1693, %1683 ]
  %1724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1725 = extractvalue %dx.types.CBufRet.f32 %1724, 0
  br i1 %98, label %1726, label %1747

; <label>:1726                                    ; preds = %1722
  %1727 = fadd fast float %1705, %1706
  %1728 = fmul fast float %1725, %1727
  %1729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1730 = extractvalue %dx.types.CBufRet.f32 %1729, 3
  %1731 = extractvalue %dx.types.CBufRet.f32 %278, 1
  %1732 = fsub fast float %281, %1731
  %1733 = extractvalue %dx.types.CBufRet.f32 %278, 2
  %1734 = fmul fast float %1732, %1733
  %1735 = call float @dx.op.unary.f32(i32 7, float %1734)  ; Saturate(value)
  %1736 = fsub fast float %1735, %1730
  %1737 = fmul fast float %1736, %1723
  %1738 = fadd fast float %1737, %1730
  %1739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1740 = extractvalue %dx.types.CBufRet.f32 %1739, 0
  %1741 = fsub fast float %1738, %1740
  %1742 = fmul fast float %1741, 1.000000e+01
  %1743 = call float @dx.op.unary.f32(i32 7, float %1742)  ; Saturate(value)
  %1744 = fmul fast float %1743, %274
  %1745 = fsub fast float %274, %1744
  %1746 = fmul fast float %1745, %1738
  br label %1756

; <label>:1747                                    ; preds = %1722
  %1748 = fmul fast float %1725, %1705
  %1749 = fmul fast float %1725, %1706
  %1750 = fmul fast float %1725, %1707
  %1751 = call float @dx.op.binary.f32(i32 35, float %1749, float %1750)  ; FMax(a,b)
  %1752 = call float @dx.op.binary.f32(i32 35, float %1748, float %1751)  ; FMax(a,b)
  %1753 = call float @dx.op.binary.f32(i32 35, float %1752, float %274)  ; FMax(a,b)
  %1754 = fcmp fast ugt float %1753, 0x3F10000000000000
  br i1 %1754, label %1756, label %1755

; <label>:1755                                    ; preds = %1747
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1756

; <label>:1756                                    ; preds = %1755, %1747, %1726
  %1757 = phi float [ %1728, %1726 ], [ %1748, %1755 ], [ %1748, %1747 ]
  %1758 = phi float [ %1746, %1726 ], [ %1749, %1755 ], [ %1749, %1747 ]
  %1759 = phi float [ %1745, %1726 ], [ %1750, %1755 ], [ %1750, %1747 ]
  %1760 = phi float [ %1745, %1726 ], [ %274, %1755 ], [ %274, %1747 ]
  %1761 = fadd fast float %188, 0x3FE3C6EF40000000
  %1762 = call float @dx.op.unary.f32(i32 22, float %1761)  ; Frc(value)
  %1763 = call float @dx.op.unary.f32(i32 23, float %1757)  ; Log(value)
  %1764 = fadd fast float %1763, -7.000000e+00
  %1765 = call float @dx.op.unary.f32(i32 21, float %1764)  ; Exp(value)
  %1766 = fmul fast float %1762, 2.000000e+00
  %1767 = fadd fast float %1766, -1.000000e+00
  %1768 = fmul fast float %1765, %1767
  %1769 = fcmp fast ogt float %1757, 0.000000e+00
  %1770 = select i1 %1769, float %1768, float 0.000000e+00
  %1771 = fadd fast float %1770, %1757
  %1772 = fadd fast float %188, 0x3FF3C6EF40000000
  %1773 = call float @dx.op.unary.f32(i32 22, float %1772)  ; Frc(value)
  %1774 = call float @dx.op.unary.f32(i32 23, float %1758)  ; Log(value)
  %1775 = fadd fast float %1774, -7.000000e+00
  %1776 = call float @dx.op.unary.f32(i32 21, float %1775)  ; Exp(value)
  %1777 = fmul fast float %1773, 2.000000e+00
  %1778 = fadd fast float %1777, -1.000000e+00
  %1779 = fmul fast float %1776, %1778
  %1780 = fcmp fast ogt float %1758, 0.000000e+00
  %1781 = select i1 %1780, float %1779, float 0.000000e+00
  %1782 = fadd fast float %1781, %1758
  %1783 = fadd fast float %188, 0x3FFDAA66E0000000
  %1784 = call float @dx.op.unary.f32(i32 22, float %1783)  ; Frc(value)
  %1785 = call float @dx.op.unary.f32(i32 23, float %1759)  ; Log(value)
  %1786 = fadd fast float %1785, -6.000000e+00
  %1787 = call float @dx.op.unary.f32(i32 21, float %1786)  ; Exp(value)
  %1788 = fmul fast float %1784, 2.000000e+00
  %1789 = fadd fast float %1788, -1.000000e+00
  %1790 = fmul fast float %1787, %1789
  %1791 = fcmp fast ogt float %1759, 0.000000e+00
  %1792 = select i1 %1791, float %1790, float 0.000000e+00
  %1793 = fadd fast float %1792, %1759
  %1794 = select i1 %98, float %1758, float %1782
  %1795 = select i1 %98, float %1759, float %1793
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1796 = call float @dx.op.binary.f32(i32 36, float %1771, float 3.225500e+04)  ; FMin(a,b)
  %1797 = call float @dx.op.binary.f32(i32 36, float %1794, float 3.225500e+04)  ; FMin(a,b)
  %1798 = call float @dx.op.binary.f32(i32 36, float %1795, float 3.225500e+04)  ; FMin(a,b)
  %1799 = call float @dx.op.binary.f32(i32 36, float %1760, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1796)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1797)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1798)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1799)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1760)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1760)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1760)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1760)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
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
!24 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!25 = !{!26, !27}
!26 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!27 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!28 = !{!29, !30, !31, !32}
!29 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!30 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!31 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!32 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!33 = !{[18 x i32] [i32 16, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 0, i32 0, i32 255, i32 255, i32 0, i32 0, i32 255, i32 0, i32 0, i32 0]}
!34 = !{void ()* @ps_main, !"ps_main", !35, !4, !50}
!35 = !{!36, !46, null}
!36 = !{!37, !40, !42, !44, !45}
!37 = !{i32 0, !"SV_Position", i8 9, i8 3, !38, i8 4, i32 1, i8 4, i32 0, i8 0, !39}
!38 = !{i32 0}
!39 = !{i32 3, i32 15}
!40 = !{i32 1, !"COLOR", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 1, i8 0, !41}
!41 = !{i32 3, i32 1}
!42 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 2, i8 0, !43}
!43 = !{i32 3, i32 3}
!44 = !{i32 3, !"PACKED_TRI_DATA", i8 5, i8 0, !38, i8 1, i32 1, i8 4, i32 3, i8 0, !41}
!45 = !{i32 4, !"SV_SampleIndex", i8 5, i8 12, !38, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!46 = !{!47, !48}
!47 = !{i32 0, !"SV_Target", i8 9, i8 16, !38, i8 0, i32 1, i8 4, i32 0, i8 0, !39}
!48 = !{i32 1, !"SV_Target", i8 9, i8 16, !49, i8 0, i32 1, i8 4, i32 1, i8 0, !39}
!49 = !{i32 1}
!50 = !{i32 0, i64 24}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 1}
!52 = !{!53, !53, i64 0}
!53 = !{!"float", !54, i64 0}
!54 = !{!"omnipotent char", !55, i64 0}
!55 = !{!"Simple C/C++ TBAA"}
!56 = !{!57, !59, !61, !62, !64, !65, !66, !68, !69, !70}
!57 = distinct !{!57, !58, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!58 = distinct !{!58, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!59 = distinct !{!59, !60, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!60 = distinct !{!60, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!61 = distinct !{!61, !60, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!62 = distinct !{!62, !63, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!63 = distinct !{!63, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!64 = distinct !{!64, !63, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!65 = distinct !{!65, !63, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!66 = distinct !{!66, !67, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!67 = distinct !{!67, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!68 = distinct !{!68, !67, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!69 = distinct !{!69, !67, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!70 = distinct !{!70, !71, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!71 = distinct !{!71, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!72 = !{!73}
!73 = distinct !{!73, !74, !"\01?sort@@YAXAIAM00@Z: %c"}
!74 = distinct !{!74, !"\01?sort@@YAXAIAM00@Z"}
!75 = !{!76, !77, !57, !59, !61, !62, !64, !65, !66, !68, !69, !70}
!76 = distinct !{!76, !74, !"\01?sort@@YAXAIAM00@Z: %a"}
!77 = distinct !{!77, !74, !"\01?sort@@YAXAIAM00@Z: %b"}
!78 = !{!77}
!79 = !{!76, !73, !57, !59, !61, !62, !64, !65, !66, !68, !69, !70}
!80 = !{!76}
!81 = !{!77, !73, !57, !59, !61, !62, !64, !65, !66, !68, !69, !70}
!82 = !{!83}
!83 = distinct !{!83, !84, !"\01?sort@@YAXAIAM00@Z: %c"}
!84 = distinct !{!84, !"\01?sort@@YAXAIAM00@Z"}
!85 = !{!86, !87, !57, !59, !61, !62, !64, !65, !66, !68, !69, !70}
!86 = distinct !{!86, !84, !"\01?sort@@YAXAIAM00@Z: %a"}
!87 = distinct !{!87, !84, !"\01?sort@@YAXAIAM00@Z: %b"}
!88 = !{!87}
!89 = !{!86, !83, !57, !59, !61, !62, !64, !65, !66, !68, !69, !70}
!90 = !{!86}
!91 = !{!87, !83, !57, !59, !61, !62, !64, !65, !66, !68, !69, !70}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}

