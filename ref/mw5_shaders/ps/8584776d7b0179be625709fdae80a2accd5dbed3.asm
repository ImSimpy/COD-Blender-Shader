;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; TEXCOORD                 0   xy          1     NONE   float   xy  
; COLOR                    4   x           2     NONE    uint       
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
; shader hash: ef8ee0c75bf8dcaee510f5a5d711d65e
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
; TEXCOORD                 0                 linear       
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
; Number of inputs: 9, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 5 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 5 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 5 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 5 }
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
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = alloca [3 x float], align 4
  %28 = alloca [3 x float], align 4
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %32 = extractvalue %dx.types.CBufRet.f32 %31, 0
  %33 = fmul fast float %32, %23
  %34 = fmul fast float %32, %24
  %35 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %36 = extractvalue %dx.types.CBufRet.f32 %35, 2
  %37 = extractvalue %dx.types.CBufRet.f32 %35, 3
  %38 = fmul fast float %36, 2.000000e+00
  %39 = fmul fast float %38, %33
  %40 = fmul fast float %37, 2.000000e+00
  %41 = fmul fast float %40, %34
  %42 = fsub fast float 1.000000e+00, %39
  %43 = fsub fast float 1.000000e+00, %41
  %44 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %45 = extractvalue %dx.types.CBufRet.f32 %44, 0
  %46 = extractvalue %dx.types.CBufRet.f32 %44, 1
  %47 = extractvalue %dx.types.CBufRet.f32 %44, 2
  %48 = fmul fast float %42, %45
  %49 = fmul fast float %42, %46
  %50 = fmul fast float %42, %47
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 0
  %53 = extractvalue %dx.types.CBufRet.f32 %51, 1
  %54 = extractvalue %dx.types.CBufRet.f32 %51, 2
  %55 = fmul fast float %43, %52
  %56 = fmul fast float %43, %53
  %57 = fmul fast float %43, %54
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 0
  %60 = extractvalue %dx.types.CBufRet.f32 %58, 1
  %61 = extractvalue %dx.types.CBufRet.f32 %58, 2
  %62 = fadd fast float %55, %59
  %63 = fadd fast float %62, %48
  %64 = fadd fast float %56, %60
  %65 = fadd fast float %64, %49
  %66 = fadd fast float %57, %61
  %67 = fadd fast float %66, %50
  %68 = fmul fast float %63, %26
  %69 = fmul fast float %65, %26
  %70 = fmul fast float %67, %26
  %71 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.i32 %71, 3
  %73 = and i32 %72, 3
  %74 = icmp ne i32 %73, 0
  %75 = and i32 %72, 4
  %76 = icmp ne i32 %75, 0
  %77 = and i1 %74, %76
  br i1 %77, label %78, label %87

; <label>:78                                      ; preds = %0
  %79 = fmul fast float %37, %34
  %80 = fmul fast float %36, %33
  %81 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %80, float %79, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %82 = extractvalue %dx.types.ResRet.f32 %81, 0
  %83 = fsub fast float 1.000000e+00, %82
  %84 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %85 = extractvalue %dx.types.CBufRet.f32 %84, 0
  %86 = fcmp fast olt float %83, %85
  br label %95

; <label>:87                                      ; preds = %0
  %88 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.i32 %88, 3
  %90 = and i32 %89, 3
  %91 = icmp ne i32 %90, 0
  %92 = and i32 %89, 4
  %93 = icmp eq i32 %92, 0
  %94 = and i1 %91, %93
  br label %95

; <label>:95                                      ; preds = %87, %78
  %96 = phi i1 [ %86, %78 ], [ %94, %87 ]
  %97 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %98 = extractvalue %dx.types.CBufRet.f32 %97, 2
  %99 = extractvalue %dx.types.CBufRet.f32 %97, 3
  %100 = fmul fast float %98, %33
  %101 = fmul fast float %99, %34
  %102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %103 = extractvalue %dx.types.ResRet.i32 %102, 0
  %104 = and i32 %103, 114688
  %105 = icmp ne i32 %104, 0
  %106 = select i1 %105, float %100, float 0.000000e+00
  %107 = select i1 %105, float %101, float 0.000000e+00
  %108 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %18, float %106, float %107, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %109 = extractvalue %dx.types.ResRet.f32 %108, 0
  %110 = fmul fast float %109, 2.550000e+02
  %111 = fptoui float %110 to i32
  %112 = select i1 %105, i32 %111, i32 0
  %113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 188, i32 undef)  ; BufferLoad(srv,index,wot)
  %114 = extractvalue %dx.types.ResRet.i32 %113, 0
  %115 = fmul fast float %33, 5.000000e-01
  %116 = fmul fast float %34, 5.000000e-01
  %117 = fptosi float %115 to i32
  %118 = fptosi float %116 to i32
  %119 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %117, i32 %118, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %120 = extractvalue %dx.types.ResRet.i32 %119, 0
  %121 = lshr i32 %120, 18
  %122 = uitofp i32 %121 to float
  %123 = fmul fast float %122, 0x3F4C00EBA0000000
  %124 = call float @dx.op.unary.f32(i32 21, float %123)  ; Exp(value)
  %125 = fadd fast float %124, -1.000000e+00
  %126 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %127 = extractvalue %dx.types.Dimensions %126, 0
  %128 = sitofp i32 %127 to float
  %129 = extractvalue %dx.types.Dimensions %126, 1
  %130 = sitofp i32 %129 to float
  %131 = fcmp fast oge float %115, %128
  %132 = fcmp fast oge float %116, %130
  %133 = or i1 %131, %132
  %134 = select i1 %133, float 0x4197782600000000, float %125
  %135 = fsub fast float %134, %26
  %136 = fcmp fast ogt float %135, 0.000000e+00
  %137 = and i32 %112, -2
  %138 = icmp eq i32 %137, 2
  %139 = and i1 %138, %136
  %140 = xor i1 %136, true
  %141 = icmp eq i32 %112, 1
  %142 = and i1 %141, %140
  %143 = or i1 %139, %142
  %144 = and i32 %114, 262144
  %145 = icmp ne i32 %144, 0
  %146 = and i1 %145, %143
  %147 = xor i1 %143, true
  %148 = and i32 %114, 131072
  %149 = icmp ne i32 %148, 0
  %150 = and i1 %149, %147
  %151 = or i1 %146, %150
  br i1 %151, label %152, label %153

; <label>:152                                     ; preds = %95
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %153

; <label>:153                                     ; preds = %152, %95
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 2
  %156 = fptosi float %26 to i32
  %157 = sitofp i32 %156 to float
  %158 = fadd fast float %155, %157
  %159 = fmul fast float %158, 0x3FE3C6EF40000000
  %160 = frem fast float %33, 2.560000e+02
  %161 = frem fast float %34, 2.560000e+02
  %162 = fptoui float %160 to i32
  %163 = fptoui float %161 to i32
  %164 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %162, i32 %163, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %165 = extractvalue %dx.types.ResRet.f32 %164, 0
  %166 = fadd fast float %165, %159
  %167 = call float @dx.op.unary.f32(i32 22, float %166)  ; Frc(value)
  %168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %169 = extractvalue %dx.types.ResRet.i32 %168, 0
  %170 = add i32 %169, 0
  %171 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %170, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %172 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %171, %dx.types.Handle %29, float %21, float %22, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %173 = extractvalue %dx.types.ResRet.f32 %172, 0
  %174 = extractvalue %dx.types.ResRet.f32 %172, 1
  %175 = extractvalue %dx.types.ResRet.f32 %172, 2
  %176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %177 = extractvalue %dx.types.ResRet.i32 %176, 0
  %178 = and i32 %177, 255
  %179 = uitofp i32 %178 to float
  %180 = fmul fast float %179, 0x3F70101020000000
  %181 = lshr i32 %177, 8
  %182 = and i32 %181, 255
  %183 = uitofp i32 %182 to float
  %184 = fmul fast float %183, 0x3F70101020000000
  %185 = lshr i32 %177, 16
  %186 = and i32 %185, 255
  %187 = uitofp i32 %186 to float
  %188 = fmul fast float %187, 0x3F70101020000000
  %189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %190 = extractvalue %dx.types.ResRet.i32 %189, 0
  %191 = and i32 %190, 255
  %192 = uitofp i32 %191 to float
  %193 = fmul fast float %192, 0x3F70101020000000
  %194 = fmul fast float %193, %193
  %195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %196 = extractvalue %dx.types.ResRet.i32 %195, 0
  %197 = add i32 %196, 0
  %198 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %197, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %199 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %198, %dx.types.Handle %30, float %21, float %22, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %200 = extractvalue %dx.types.ResRet.f32 %199, 0
  %201 = fmul fast float %194, %200
  %202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %203 = extractvalue %dx.types.CBufRet.f32 %202, 0
  %204 = fmul fast float %180, %180
  %205 = fmul fast float %204, %173
  %206 = fmul fast float %205, %203
  %207 = fmul fast float %184, %184
  %208 = fmul fast float %207, %174
  %209 = fmul fast float %208, %203
  %210 = fmul fast float %188, %188
  %211 = fmul fast float %210, %175
  %212 = fmul fast float %211, %203
  %213 = call float @dx.op.dot3.f32(i32 55, float %206, float %209, float %212, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = extractvalue %dx.types.ResRet.i32 %214, 0
  %216 = and i32 %215, 255
  %217 = uitofp i32 %216 to float
  %218 = lshr i32 %215, 8
  %219 = and i32 %218, 255
  %220 = uitofp i32 %219 to float
  %221 = fmul fast float %220, %213
  %222 = fadd fast float %221, %217
  %223 = fmul fast float %222, 0x3F70101020000000
  %224 = call float @dx.op.unary.f32(i32 7, float %223)  ; Saturate(value)
  %225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %226 = extractvalue %dx.types.ResRet.i32 %225, 0
  %227 = bitcast i32 %226 to float
  %228 = fcmp fast oge float %227, 0.000000e+00
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.f32 %229, 0
  %231 = select i1 %228, float %227, float %230
  %232 = fsub fast float 1.000000e+00, %201
  %233 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %117, i32 %118, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %234 = extractvalue %dx.types.ResRet.i32 %233, 0
  %235 = lshr i32 %234, 18
  %236 = uitofp i32 %235 to float
  %237 = fmul fast float %236, 0x3F4C00EBA0000000
  %238 = call float @dx.op.unary.f32(i32 21, float %237)  ; Exp(value)
  %239 = fadd fast float %238, -1.000000e+00
  %240 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %241 = extractvalue %dx.types.Dimensions %240, 0
  %242 = sitofp i32 %241 to float
  %243 = extractvalue %dx.types.Dimensions %240, 1
  %244 = sitofp i32 %243 to float
  %245 = fcmp fast oge float %115, %242
  %246 = fcmp fast oge float %116, %244
  %247 = or i1 %245, %246
  %248 = select i1 %247, float 0x4197782600000000, float %239
  %249 = call float @dx.op.dot3.f32(i32 55, float %201, float %201, float %201, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %250 = fsub fast float 1.000000e+00, %249
  %251 = fmul fast float %231, %224
  %252 = fsub fast float %201, %224
  %253 = call float @dx.op.unary.f32(i32 7, float %252)  ; Saturate(value)
  %254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %255 = extractvalue %dx.types.CBufRet.f32 %254, 3
  %256 = fmul fast float %255, %253
  %257 = fadd fast float %256, %251
  %258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %259 = extractvalue %dx.types.CBufRet.f32 %258, 3
  %260 = icmp eq i32 %112, 3
  %261 = fcmp fast ogt float %26, %248
  %262 = and i1 %141, %261
  %263 = or i1 %260, %262
  %264 = icmp eq i32 %112, 2
  %265 = fcmp fast ole float %26, %248
  %266 = and i1 %264, %265
  %267 = or i1 %266, %263
  br i1 %262, label %268, label %407

; <label>:268                                     ; preds = %153
  %269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %270 = extractvalue %dx.types.CBufRet.f32 %269, 2
  %271 = extractvalue %dx.types.CBufRet.f32 %269, 3
  %272 = fmul fast float %270, %33
  %273 = fmul fast float %271, %34
  %274 = call float @dx.op.unary.f32(i32 7, float %272)  ; Saturate(value)
  %275 = call float @dx.op.unary.f32(i32 7, float %273)  ; Saturate(value)
  %276 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %17, float %274, float %275, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %277 = extractvalue %dx.types.ResRet.f32 %276, 0
  %278 = extractvalue %dx.types.ResRet.f32 %276, 1
  %279 = extractvalue %dx.types.ResRet.f32 %276, 2
  %280 = extractvalue %dx.types.ResRet.f32 %276, 3
  %281 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %17, float %274, float %275, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %282 = extractvalue %dx.types.ResRet.f32 %281, 0
  %283 = extractvalue %dx.types.ResRet.f32 %281, 1
  %284 = extractvalue %dx.types.ResRet.f32 %281, 2
  %285 = extractvalue %dx.types.ResRet.f32 %281, 3
  %286 = call float @dx.op.binary.f32(i32 35, float %278, float %279)  ; FMax(a,b)
  %287 = call float @dx.op.binary.f32(i32 35, float %277, float %286)  ; FMax(a,b)
  %288 = call float @dx.op.binary.f32(i32 35, float %287, float %280)  ; FMax(a,b)
  %289 = call float @dx.op.binary.f32(i32 36, float %283, float %284)  ; FMin(a,b)
  %290 = call float @dx.op.binary.f32(i32 36, float %282, float %289)  ; FMin(a,b)
  %291 = call float @dx.op.binary.f32(i32 36, float %290, float %285)  ; FMin(a,b)
  %292 = fmul fast float %288, 2.550000e+02
  %293 = fadd fast float %292, 0x3F70101020000000
  %294 = fptoui float %293 to i32
  %295 = fmul fast float %291, 2.550000e+02
  %296 = fadd fast float %295, 0x3F70101020000000
  %297 = fptoui float %296 to i32
  %298 = icmp ult i32 %294, %297
  br i1 %298, label %299, label %350

; <label>:299                                     ; preds = %268
  %300 = fcmp fast ogt float %25, 9.843750e-01
  %301 = fadd fast float %26, -4.000000e+00
  %302 = select i1 %300, float -4.000000e+00, float %301
  %303 = call float @dx.op.binary.f32(i32 35, float %302, float 0.000000e+00)  ; FMax(a,b)
  %304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %305 = extractvalue %dx.types.CBufRet.f32 %304, 0
  %306 = fadd fast float %305, %303
  %307 = extractvalue %dx.types.CBufRet.f32 %304, 2
  %308 = fmul fast float %306, %307
  %309 = call float @dx.op.unary.f32(i32 23, float %308)  ; Log(value)
  %310 = extractvalue %dx.types.CBufRet.f32 %304, 3
  %311 = fmul fast float %310, %309
  %312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %313 = extractvalue %dx.types.CBufRet.f32 %312, 2
  %314 = fmul fast float %311, %313
  %315 = call float @dx.op.unary.f32(i32 7, float %314)  ; Saturate(value)
  %316 = uitofp i32 %294 to float
  %317 = uitofp i32 %297 to float
  %318 = fadd fast float %316, 5.000000e-01
  %319 = fadd fast float %317, 5.000000e-01
  %320 = fmul fast float %313, %318
  %321 = fmul fast float %313, %319
  %322 = fadd fast float %320, 0x3F0FFB4800000000
  %323 = fadd fast float %321, 0xBF0FFB4800000000
  %324 = call float @dx.op.binary.f32(i32 35, float %315, float %322)  ; FMax(a,b)
  %325 = call float @dx.op.binary.f32(i32 36, float %324, float %323)  ; FMin(a,b)
  %326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %327 = extractvalue %dx.types.CBufRet.f32 %326, 1
  %328 = extractvalue %dx.types.CBufRet.f32 %326, 2
  %329 = extractvalue %dx.types.CBufRet.f32 %326, 0
  %330 = fmul fast float %327, %325
  %331 = fadd fast float %329, %330
  %332 = fadd fast float %329, %328
  %333 = fsub fast float %327, %328
  %334 = fadd fast float %333, %329
  %335 = call float @dx.op.binary.f32(i32 35, float %331, float %332)  ; FMax(a,b)
  %336 = call float @dx.op.binary.f32(i32 36, float %335, float %334)  ; FMin(a,b)
  %337 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %16, float %274, float %275, float %336, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %338 = extractvalue %dx.types.ResRet.f32 %337, 0
  %339 = extractvalue %dx.types.ResRet.f32 %337, 1
  %340 = extractvalue %dx.types.ResRet.f32 %337, 2
  %341 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %274, float %275, float %336, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %342 = extractvalue %dx.types.ResRet.f32 %341, 0
  %343 = extractvalue %dx.types.ResRet.f32 %341, 1
  %344 = extractvalue %dx.types.ResRet.f32 %341, 2
  %345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %346 = extractvalue %dx.types.CBufRet.f32 %345, 1
  %347 = fmul fast float %346, %342
  %348 = fmul fast float %346, %343
  %349 = fmul fast float %346, %344
  br label %350

; <label>:350                                     ; preds = %299, %268
  %351 = phi float [ %338, %299 ], [ 1.000000e+00, %268 ]
  %352 = phi float [ %339, %299 ], [ 1.000000e+00, %268 ]
  %353 = phi float [ %340, %299 ], [ 1.000000e+00, %268 ]
  %354 = phi float [ %347, %299 ], [ 0.000000e+00, %268 ]
  %355 = phi float [ %348, %299 ], [ 0.000000e+00, %268 ]
  %356 = phi float [ %349, %299 ], [ 0.000000e+00, %268 ]
  %357 = fmul fast float %354, %250
  %358 = fmul fast float %355, %250
  %359 = fmul fast float %356, %250
  %360 = call float @dx.op.dot3.f32(i32 55, float %351, float %352, float %353, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %361 = call float @dx.op.dot3.f32(i32 55, float %357, float %358, float %359, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %362 = select i1 %96, float %360, float %351
  %363 = select i1 %96, float %360, float %352
  %364 = select i1 %96, float 1.000000e+00, float %353
  %365 = select i1 %96, float %361, float %357
  %366 = select i1 %96, float 0.000000e+00, float %358
  %367 = select i1 %96, float 0.000000e+00, float %359
  %368 = fmul fast float %362, %206
  %369 = fmul fast float %363, %209
  %370 = fmul fast float %364, %212
  %371 = fadd fast float %368, %365
  %372 = fadd fast float %369, %366
  %373 = fadd fast float %367, %370
  %374 = fmul fast float %33, 2.000000e+00
  %375 = fmul fast float %374, %270
  %376 = fmul fast float %34, 2.000000e+00
  %377 = fmul fast float %376, %271
  %378 = fsub fast float 1.000000e+00, %375
  %379 = fsub fast float 1.000000e+00, %377
  %380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %381 = extractvalue %dx.types.CBufRet.f32 %380, 0
  %382 = extractvalue %dx.types.CBufRet.f32 %380, 1
  %383 = extractvalue %dx.types.CBufRet.f32 %380, 2
  %384 = fmul fast float %378, %381
  %385 = fmul fast float %378, %382
  %386 = fmul fast float %378, %383
  %387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %388 = extractvalue %dx.types.CBufRet.f32 %387, 0
  %389 = extractvalue %dx.types.CBufRet.f32 %387, 1
  %390 = extractvalue %dx.types.CBufRet.f32 %387, 2
  %391 = fmul fast float %379, %388
  %392 = fmul fast float %379, %389
  %393 = fmul fast float %379, %390
  %394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %395 = extractvalue %dx.types.CBufRet.f32 %394, 0
  %396 = extractvalue %dx.types.CBufRet.f32 %394, 1
  %397 = extractvalue %dx.types.CBufRet.f32 %394, 2
  %398 = fadd fast float %391, %395
  %399 = fadd fast float %398, %384
  %400 = fadd fast float %392, %396
  %401 = fadd fast float %400, %385
  %402 = fadd fast float %393, %397
  %403 = fadd fast float %402, %386
  %404 = fmul fast float %399, %248
  %405 = fmul fast float %401, %248
  %406 = fmul fast float %403, %248
  br label %407

; <label>:407                                     ; preds = %350, %153
  %408 = phi float [ %404, %350 ], [ %68, %153 ]
  %409 = phi float [ %405, %350 ], [ %69, %153 ]
  %410 = phi float [ %406, %350 ], [ %70, %153 ]
  %411 = phi float [ %248, %350 ], [ %26, %153 ]
  %412 = phi float [ %371, %350 ], [ %206, %153 ]
  %413 = phi float [ %372, %350 ], [ %209, %153 ]
  %414 = phi float [ %373, %350 ], [ %212, %153 ]
  %415 = phi float [ %351, %350 ], [ 1.000000e+00, %153 ]
  br i1 %267, label %1564, label %416

; <label>:416                                     ; preds = %407
  %417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %418 = extractvalue %dx.types.CBufRet.f32 %417, 0
  %419 = extractvalue %dx.types.CBufRet.f32 %417, 1
  %420 = extractvalue %dx.types.CBufRet.f32 %417, 2
  %421 = extractvalue %dx.types.CBufRet.f32 %417, 3
  %422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %423 = extractvalue %dx.types.CBufRet.f32 %422, 0
  %424 = extractvalue %dx.types.CBufRet.f32 %422, 1
  %425 = extractvalue %dx.types.CBufRet.f32 %422, 2
  %426 = extractvalue %dx.types.CBufRet.f32 %422, 3
  %427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %428 = extractvalue %dx.types.CBufRet.f32 %427, 0
  %429 = extractvalue %dx.types.CBufRet.f32 %427, 1
  %430 = extractvalue %dx.types.CBufRet.f32 %427, 2
  %431 = extractvalue %dx.types.CBufRet.f32 %427, 3
  %432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %433 = extractvalue %dx.types.CBufRet.f32 %432, 0
  %434 = extractvalue %dx.types.CBufRet.f32 %432, 1
  %435 = extractvalue %dx.types.CBufRet.f32 %432, 2
  %436 = extractvalue %dx.types.CBufRet.f32 %432, 3
  %437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %438 = extractvalue %dx.types.CBufRet.f32 %437, 3
  %439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %440 = extractvalue %dx.types.CBufRet.f32 %439, 3
  %441 = extractvalue %dx.types.CBufRet.f32 %439, 0
  %442 = extractvalue %dx.types.CBufRet.f32 %439, 1
  %443 = extractvalue %dx.types.CBufRet.f32 %439, 2
  %444 = fcmp fast olt float %443, -5.000000e-01
  %445 = call float @dx.op.dot3.f32(i32 55, float %408, float %409, float %410, float %408, float %409, float %410)  ; Dot3(ax,ay,az,bx,by,bz)
  %446 = call float @dx.op.unary.f32(i32 25, float %445)  ; Rsqrt(value)
  %447 = fmul fast float %446, %445
  %448 = fmul fast float %446, %408
  %449 = fmul fast float %446, %409
  %450 = fmul fast float %446, %410
  %451 = fadd fast float %447, %421
  %452 = call float @dx.op.dot3.f32(i32 55, float %448, float %449, float %450, float %418, float %419, float %420)  ; Dot3(ax,ay,az,bx,by,bz)
  %453 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %454 = extractvalue %dx.types.CBufRet.i32 %453, 1
  %455 = and i32 %454, 1
  %456 = icmp ne i32 %455, 0
  %457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %458 = extractvalue %dx.types.CBufRet.f32 %457, 2
  %459 = fcmp fast ogt float %458, 0.000000e+00
  %460 = and i1 %456, %459
  br i1 %460, label %461, label %867, !dx.controlflow.hints !50

; <label>:461                                     ; preds = %416
  %462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %463 = extractvalue %dx.types.CBufRet.f32 %462, 3
  %464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %465 = extractvalue %dx.types.CBufRet.f32 %464, 2
  %466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %467 = extractvalue %dx.types.CBufRet.f32 %466, 2
  %468 = fsub fast float %465, %467
  %469 = and i32 %454, 2
  %470 = extractvalue %dx.types.CBufRet.i32 %453, 0
  %471 = call i32 @dx.op.binary.i32(i32 40, i32 %470, i32 3)  ; UMin(a,b)
  %472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %473 = extractvalue %dx.types.CBufRet.f32 %472, 0
  %474 = extractvalue %dx.types.CBufRet.f32 %472, 1
  %475 = extractvalue %dx.types.CBufRet.f32 %466, 0
  %476 = extractvalue %dx.types.CBufRet.f32 %466, 1
  %477 = fsub fast float %473, %475
  %478 = fsub fast float %474, %476
  %479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %480 = extractvalue %dx.types.CBufRet.f32 %479, 0
  %481 = fcmp fast ogt float %480, 0.000000e+00
  %482 = fsub fast float -0.000000e+00, %477
  %483 = fsub fast float -0.000000e+00, %478
  %484 = call float @dx.op.dot2.f32(i32 54, float %448, float %449, float %448, float %449)  ; Dot2(ax,ay,bx,by)
  %485 = call float @dx.op.dot2.f32(i32 54, float %448, float %449, float %482, float %483)  ; Dot2(ax,ay,bx,by)
  %486 = fmul fast float %485, 2.000000e+00
  %487 = call float @dx.op.dot2.f32(i32 54, float %482, float %483, float %482, float %483)  ; Dot2(ax,ay,bx,by)
  %488 = fmul fast float %480, %480
  %489 = fsub fast float %487, %488
  %490 = fmul fast float %486, %486
  %491 = fmul fast float %484, 4.000000e+00
  %492 = fmul fast float %491, %489
  %493 = fsub fast float %490, %492
  %494 = fcmp fast ogt float %493, 0.000000e+00
  br i1 %494, label %495, label %510

; <label>:495                                     ; preds = %461
  %496 = fcmp fast ogt float %486, 0.000000e+00
  %497 = call float @dx.op.unary.f32(i32 24, float %493)  ; Sqrt(value)
  %498 = fsub fast float -0.000000e+00, %497
  %499 = select i1 %496, float %497, float %498
  %500 = fadd fast float %499, %486
  %501 = fmul float %500, -5.000000e-01
  %502 = fdiv fast float %501, %484
  %503 = call float @dx.op.binary.f32(i32 35, float %502, float 0.000000e+00)  ; FMax(a,b)
  %504 = call float @dx.op.binary.f32(i32 36, float %447, float %503)  ; FMin(a,b)
  %505 = fdiv fast float %489, %501
  %506 = call float @dx.op.binary.f32(i32 35, float %505, float 0.000000e+00)  ; FMax(a,b)
  %507 = call float @dx.op.binary.f32(i32 36, float %447, float %506)  ; FMin(a,b)
  %508 = call float @dx.op.binary.f32(i32 36, float %504, float %507)  ; FMin(a,b)
  %509 = call float @dx.op.binary.f32(i32 35, float %504, float %507)  ; FMax(a,b)
  br label %510

; <label>:510                                     ; preds = %495, %461
  %511 = phi float [ %509, %495 ], [ -1.000000e+00, %461 ]
  %512 = phi float [ %508, %495 ], [ -1.000000e+00, %461 ]
  %513 = phi i1 [ true, %495 ], [ false, %461 ]
  %514 = and i1 %481, %513
  br i1 %514, label %515, label %517

; <label>:515                                     ; preds = %510
  %516 = fcmp fast oeq float %512, %511
  br i1 %516, label %820, label %518

; <label>:517                                     ; preds = %510
  br i1 %481, label %820, label %518

; <label>:518                                     ; preds = %517, %515
  %519 = phi float [ %447, %517 ], [ %511, %515 ]
  %520 = phi float [ 0.000000e+00, %517 ], [ %512, %515 ]
  %521 = icmp ne i32 %469, 0
  %522 = fmul fast float %519, %450
  %523 = fadd fast float %522, %463
  %524 = fmul fast float %523, %519
  %525 = select i1 %521, float 0.000000e+00, float %524
  %526 = fcmp fast oeq float %450, 0.000000e+00
  %527 = fdiv fast float %468, %450
  %528 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %527)  ; FMax(a,b)
  %529 = select i1 %526, float %519, float %528
  %530 = call float @dx.op.binary.f32(i32 36, float %519, float %529)  ; FMin(a,b)
  %531 = fcmp fast ogt float %450, 0.000000e+00
  %532 = fcmp fast olt float %468, 0.000000e+00
  br i1 %531, label %533, label %590

; <label>:533                                     ; preds = %518
  %534 = icmp eq i32 %469, 0
  br i1 %532, label %535, label %579

; <label>:535                                     ; preds = %533
  %536 = select i1 %534, float %519, float 0.000000e+00
  %537 = fsub fast float -0.000000e+00, %536
  %538 = call float @dx.op.unary.f32(i32 6, float %537)  ; FAbs(value)
  %539 = fmul fast float %536, %450
  %540 = fadd fast float %539, %463
  %541 = fmul fast float %538, %540
  %542 = fsub fast float %525, %541
  %543 = fsub fast float %519, %538
  %544 = select i1 %534, float %543, float 0.000000e+00
  %545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %546 = extractvalue %dx.types.CBufRet.f32 %545, 0
  %547 = extractvalue %dx.types.CBufRet.f32 %545, 1
  %548 = extractvalue %dx.types.CBufRet.f32 %545, 2
  %549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %550 = extractvalue %dx.types.CBufRet.f32 %549, 0
  %551 = extractvalue %dx.types.CBufRet.f32 %549, 1
  %552 = extractvalue %dx.types.CBufRet.f32 %549, 2
  %553 = extractvalue %dx.types.CBufRet.f32 %549, 3
  %554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %555 = extractvalue %dx.types.CBufRet.f32 %554, 3
  %556 = call float @dx.op.binary.f32(i32 36, float %542, float %555)  ; FMin(a,b)
  %557 = fmul fast float %553, %544
  %558 = call float @dx.op.unary.f32(i32 7, float %557)  ; Saturate(value)
  %559 = fsub fast float %550, %546
  %560 = fsub fast float %551, %547
  %561 = fsub fast float %552, %548
  %562 = fmul fast float %558, %559
  %563 = fmul fast float %558, %560
  %564 = fmul fast float %558, %561
  %565 = fadd fast float %562, %546
  %566 = fadd fast float %563, %547
  %567 = fadd fast float %564, %548
  %568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %569 = extractvalue %dx.types.CBufRet.f32 %568, 0
  %570 = extractvalue %dx.types.CBufRet.f32 %568, 1
  %571 = fadd fast float %570, %569
  %572 = call float @dx.op.unary.f32(i32 7, float %571)  ; Saturate(value)
  %573 = extractvalue %dx.types.CBufRet.f32 %568, 2
  %574 = extractvalue %dx.types.CBufRet.f32 %568, 3
  %575 = fadd fast float %574, %573
  %576 = call float @dx.op.unary.f32(i32 7, float %575)  ; Saturate(value)
  %577 = fmul fast float %572, %556
  %578 = fmul fast float %577, %576
  br label %820

; <label>:579                                     ; preds = %533
  br i1 %534, label %580, label %601

; <label>:580                                     ; preds = %579
  %581 = call float @dx.op.binary.f32(i32 36, float %530, float %520)  ; FMin(a,b)
  %582 = fsub fast float %530, %581
  %583 = fsub fast float %582, %519
  %584 = call float @dx.op.unary.f32(i32 6, float %583)  ; FAbs(value)
  %585 = fadd fast float %582, %519
  %586 = fmul fast float %585, %450
  %587 = fadd fast float %586, %463
  %588 = fmul fast float %587, %584
  %589 = fsub fast float %525, %588
  br label %601

; <label>:590                                     ; preds = %518
  br i1 %532, label %591, label %601

; <label>:591                                     ; preds = %590
  %592 = call float @dx.op.binary.f32(i32 35, float %520, float %530)  ; FMax(a,b)
  %593 = icmp eq i32 %469, 0
  %594 = select i1 %593, float %530, float 0.000000e+00
  %595 = fsub fast float -0.000000e+00, %594
  %596 = call float @dx.op.unary.f32(i32 6, float %595)  ; FAbs(value)
  %597 = fmul fast float %594, %450
  %598 = fadd fast float %597, %463
  %599 = fmul fast float %596, %598
  %600 = fsub fast float %525, %599
  br label %601

; <label>:601                                     ; preds = %591, %590, %580, %579
  %602 = phi float [ %520, %579 ], [ %520, %580 ], [ %592, %591 ], [ %520, %590 ]
  %603 = phi float [ 0.000000e+00, %579 ], [ %584, %580 ], [ %596, %591 ], [ 0.000000e+00, %590 ]
  %604 = phi float [ %525, %579 ], [ %589, %580 ], [ %600, %591 ], [ %525, %590 ]
  %605 = phi float [ %530, %579 ], [ %530, %580 ], [ %519, %591 ], [ %519, %590 ]
  %606 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 0
  store float -1.000000e+00, float* %606, align 4, !tbaa !51, !noalias !55
  %607 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 1
  store float -1.000000e+00, float* %607, align 4, !tbaa !51, !noalias !55
  %608 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 2
  store float -1.000000e+00, float* %608, align 4, !tbaa !51, !noalias !55
  %609 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 0
  store float -1.000000e+00, float* %609, align 4, !tbaa !51, !noalias !55
  %610 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 1
  store float -1.000000e+00, float* %610, align 4, !tbaa !51, !noalias !55
  %611 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 2
  store float -1.000000e+00, float* %611, align 4, !tbaa !51, !noalias !55
  %612 = icmp sgt i32 %471, 0
  br i1 %612, label %613, label %674

; <label>:613                                     ; preds = %601
  br label %614

; <label>:614                                     ; preds = %663, %613
  %615 = phi i32 [ %664, %663 ], [ 0, %613 ]
  %616 = phi i32 [ %665, %663 ], [ 0, %613 ]
  %617 = add nuw i32 %616, 171
  %618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 %617)  ; CBufferLoadLegacy(handle,regIndex)
  %619 = extractvalue %dx.types.CBufRet.f32 %618, 0
  %620 = extractvalue %dx.types.CBufRet.f32 %618, 1
  %621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %622 = extractvalue %dx.types.CBufRet.f32 %621, 0
  %623 = extractvalue %dx.types.CBufRet.f32 %621, 1
  %624 = fsub fast float %619, %622
  %625 = fsub fast float %620, %623
  %626 = extractvalue %dx.types.CBufRet.f32 %618, 2
  %627 = fsub fast float -0.000000e+00, %624
  %628 = fsub fast float -0.000000e+00, %625
  %629 = call float @dx.op.dot2.f32(i32 54, float %448, float %449, float %627, float %628)  ; Dot2(ax,ay,bx,by)
  %630 = fmul fast float %629, 2.000000e+00
  %631 = call float @dx.op.dot2.f32(i32 54, float %627, float %628, float %627, float %628)  ; Dot2(ax,ay,bx,by)
  %632 = fmul fast float %626, %626
  %633 = fsub fast float %631, %632
  %634 = fmul fast float %630, %630
  %635 = fmul fast float %491, %633
  %636 = fsub fast float %634, %635
  %637 = fcmp fast ogt float %636, 0.000000e+00
  br i1 %637, label %638, label %653

; <label>:638                                     ; preds = %614
  %639 = fcmp fast ogt float %630, 0.000000e+00
  %640 = call float @dx.op.unary.f32(i32 24, float %636)  ; Sqrt(value)
  %641 = fsub fast float -0.000000e+00, %640
  %642 = select i1 %639, float %640, float %641
  %643 = fadd fast float %642, %630
  %644 = fmul float %643, -5.000000e-01
  %645 = fdiv fast float %644, %484
  %646 = call float @dx.op.binary.f32(i32 35, float %645, float 0.000000e+00)  ; FMax(a,b)
  %647 = call float @dx.op.binary.f32(i32 36, float %519, float %646)  ; FMin(a,b)
  %648 = fdiv fast float %633, %644
  %649 = call float @dx.op.binary.f32(i32 35, float %648, float 0.000000e+00)  ; FMax(a,b)
  %650 = call float @dx.op.binary.f32(i32 36, float %519, float %649)  ; FMin(a,b)
  %651 = call float @dx.op.binary.f32(i32 36, float %647, float %650)  ; FMin(a,b)
  %652 = call float @dx.op.binary.f32(i32 35, float %647, float %650)  ; FMax(a,b)
  br label %653

; <label>:653                                     ; preds = %638, %614
  %654 = phi float [ %652, %638 ], [ -1.000000e+00, %614 ]
  %655 = phi float [ %651, %638 ], [ -1.000000e+00, %614 ]
  %656 = phi i1 [ true, %638 ], [ false, %614 ]
  br i1 %656, label %657, label %663

; <label>:657                                     ; preds = %653
  %658 = call float @dx.op.binary.f32(i32 35, float %602, float %655)  ; FMax(a,b)
  %659 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %616
  store float %658, float* %659, align 4, !tbaa !51, !noalias !55
  %660 = call float @dx.op.binary.f32(i32 35, float %602, float %654)  ; FMax(a,b)
  %661 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %616
  store float %660, float* %661, align 4, !tbaa !51, !noalias !55
  %662 = add nsw i32 %615, 1
  br label %663

; <label>:663                                     ; preds = %657, %653
  %664 = phi i32 [ %662, %657 ], [ %615, %653 ]
  %665 = add nuw nsw i32 %616, 1
  %666 = icmp eq i32 %665, %471
  br i1 %666, label %667, label %614

; <label>:667                                     ; preds = %663
  %668 = load float, float* %608, align 4, !tbaa !51, !alias.scope !71, !noalias !74
  %669 = load float, float* %607, align 4, !tbaa !51, !alias.scope !77, !noalias !78
  %670 = load float, float* %606, align 4, !tbaa !51, !alias.scope !79, !noalias !80
  %671 = load float, float* %611, align 4, !tbaa !51, !alias.scope !81, !noalias !84
  %672 = load float, float* %610, align 4, !tbaa !51, !alias.scope !87, !noalias !88
  %673 = load float, float* %609, align 4, !tbaa !51, !alias.scope !89, !noalias !90
  br label %674

; <label>:674                                     ; preds = %667, %601
  %675 = phi float [ -1.000000e+00, %601 ], [ %673, %667 ]
  %676 = phi float [ -1.000000e+00, %601 ], [ %672, %667 ]
  %677 = phi float [ -1.000000e+00, %601 ], [ %671, %667 ]
  %678 = phi float [ -1.000000e+00, %601 ], [ %670, %667 ]
  %679 = phi float [ -1.000000e+00, %601 ], [ %669, %667 ]
  %680 = phi float [ -1.000000e+00, %601 ], [ %668, %667 ]
  %681 = phi i32 [ 0, %601 ], [ %664, %667 ]
  %682 = call float @dx.op.binary.f32(i32 36, float %679, float %680)  ; FMin(a,b)
  %683 = call float @dx.op.binary.f32(i32 36, float %678, float %682)  ; FMin(a,b)
  %684 = call float @dx.op.binary.f32(i32 35, float %678, float %679)  ; FMax(a,b)
  %685 = call float @dx.op.binary.f32(i32 36, float %684, float %680)  ; FMin(a,b)
  %686 = call float @dx.op.binary.f32(i32 36, float %678, float %679)  ; FMin(a,b)
  %687 = call float @dx.op.binary.f32(i32 35, float %686, float %685)  ; FMax(a,b)
  %688 = call float @dx.op.binary.f32(i32 35, float %679, float %680)  ; FMax(a,b)
  %689 = call float @dx.op.binary.f32(i32 35, float %678, float %688)  ; FMax(a,b)
  store float %683, float* %606, align 4, !tbaa !51, !alias.scope !79, !noalias !80
  store float %687, float* %607, align 4, !tbaa !51, !alias.scope !77, !noalias !78
  store float %689, float* %608, align 4, !tbaa !51, !alias.scope !71, !noalias !74
  %690 = call float @dx.op.binary.f32(i32 36, float %676, float %677)  ; FMin(a,b)
  %691 = call float @dx.op.binary.f32(i32 36, float %675, float %690)  ; FMin(a,b)
  %692 = call float @dx.op.binary.f32(i32 35, float %675, float %676)  ; FMax(a,b)
  %693 = call float @dx.op.binary.f32(i32 36, float %692, float %677)  ; FMin(a,b)
  %694 = call float @dx.op.binary.f32(i32 36, float %675, float %676)  ; FMin(a,b)
  %695 = call float @dx.op.binary.f32(i32 35, float %694, float %693)  ; FMax(a,b)
  %696 = call float @dx.op.binary.f32(i32 35, float %676, float %677)  ; FMax(a,b)
  %697 = call float @dx.op.binary.f32(i32 35, float %675, float %696)  ; FMax(a,b)
  store float %691, float* %609, align 4, !tbaa !51, !alias.scope !89, !noalias !90
  store float %695, float* %610, align 4, !tbaa !51, !alias.scope !87, !noalias !88
  store float %697, float* %611, align 4, !tbaa !51, !alias.scope !81, !noalias !84
  %698 = sub nsw i32 3, %681
  %699 = icmp sgt i32 %698, 2
  br i1 %699, label %700, label %738

; <label>:700                                     ; preds = %674
  %701 = icmp eq i32 %469, 0
  %702 = fsub fast float %519, %603
  %703 = select i1 %701, float %702, float %603
  %704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %705 = extractvalue %dx.types.CBufRet.f32 %704, 0
  %706 = extractvalue %dx.types.CBufRet.f32 %704, 1
  %707 = extractvalue %dx.types.CBufRet.f32 %704, 2
  %708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %709 = extractvalue %dx.types.CBufRet.f32 %708, 0
  %710 = extractvalue %dx.types.CBufRet.f32 %708, 1
  %711 = extractvalue %dx.types.CBufRet.f32 %708, 2
  %712 = extractvalue %dx.types.CBufRet.f32 %708, 3
  %713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %714 = extractvalue %dx.types.CBufRet.f32 %713, 3
  %715 = call float @dx.op.binary.f32(i32 36, float %604, float %714)  ; FMin(a,b)
  %716 = fmul fast float %712, %703
  %717 = call float @dx.op.unary.f32(i32 7, float %716)  ; Saturate(value)
  %718 = fsub fast float %709, %705
  %719 = fsub fast float %710, %706
  %720 = fsub fast float %711, %707
  %721 = fmul fast float %717, %718
  %722 = fmul fast float %717, %719
  %723 = fmul fast float %717, %720
  %724 = fadd fast float %721, %705
  %725 = fadd fast float %722, %706
  %726 = fadd fast float %723, %707
  %727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %728 = extractvalue %dx.types.CBufRet.f32 %727, 0
  %729 = extractvalue %dx.types.CBufRet.f32 %727, 1
  %730 = fadd fast float %729, %728
  %731 = call float @dx.op.unary.f32(i32 7, float %730)  ; Saturate(value)
  %732 = extractvalue %dx.types.CBufRet.f32 %727, 2
  %733 = extractvalue %dx.types.CBufRet.f32 %727, 3
  %734 = fadd fast float %733, %732
  %735 = call float @dx.op.unary.f32(i32 7, float %734)  ; Saturate(value)
  %736 = fmul fast float %731, %715
  %737 = fmul fast float %736, %735
  br label %820

; <label>:738                                     ; preds = %674
  %739 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %698
  %740 = load float, float* %739, align 4, !tbaa !51, !noalias !55
  %741 = fcmp fast olt float %740, %605
  %742 = icmp sgt i32 %681, 0
  %743 = and i1 %742, %741
  br i1 %743, label %744, label %781

; <label>:744                                     ; preds = %738
  br label %745

; <label>:745                                     ; preds = %774, %744
  %746 = phi float [ %775, %774 ], [ %603, %744 ]
  %747 = phi float [ %776, %774 ], [ %604, %744 ]
  %748 = phi float [ %756, %774 ], [ %740, %744 ]
  %749 = phi i32 [ %753, %774 ], [ %698, %744 ]
  %750 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %749
  %751 = load float, float* %750, align 4, !tbaa !51, !noalias !55
  %752 = icmp slt i32 %749, 2
  %753 = add nsw i32 %749, 1
  %754 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %753
  %755 = load float, float* %754, align 4, !tbaa !51, !noalias !55
  %756 = select i1 %752, float %755, float %519
  %757 = call float @dx.op.binary.f32(i32 36, float %756, float %751)  ; FMin(a,b)
  %758 = call float @dx.op.binary.f32(i32 36, float %605, float %757)  ; FMin(a,b)
  %759 = icmp eq i32 %469, 0
  %760 = fadd fast float %758, %748
  %761 = fmul fast float %760, %450
  %762 = fadd fast float %761, %463
  br i1 %759, label %768, label %763

; <label>:763                                     ; preds = %745
  %764 = fsub fast float %758, %748
  %765 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %764)  ; FMax(a,b)
  %766 = fmul fast float %765, %762
  %767 = fadd fast float %766, %747
  br label %774

; <label>:768                                     ; preds = %745
  %769 = fsub fast float %748, %758
  %770 = call float @dx.op.unary.f32(i32 6, float %769)  ; FAbs(value)
  %771 = fadd fast float %770, %746
  %772 = fmul fast float %770, %762
  %773 = fsub fast float %747, %772
  br label %774

; <label>:774                                     ; preds = %768, %763
  %775 = phi float [ %765, %763 ], [ %771, %768 ]
  %776 = phi float [ %767, %763 ], [ %773, %768 ]
  %777 = fcmp fast olt float %756, %605
  %778 = icmp slt i32 %753, 3
  %779 = and i1 %778, %777
  br i1 %779, label %745, label %780

; <label>:780                                     ; preds = %774
  br label %781

; <label>:781                                     ; preds = %780, %738
  %782 = phi float [ %603, %738 ], [ %775, %780 ]
  %783 = phi float [ %604, %738 ], [ %776, %780 ]
  %784 = fsub fast float %519, %782
  %785 = select i1 %521, float %782, float %784
  %786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %787 = extractvalue %dx.types.CBufRet.f32 %786, 0
  %788 = extractvalue %dx.types.CBufRet.f32 %786, 1
  %789 = extractvalue %dx.types.CBufRet.f32 %786, 2
  %790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %791 = extractvalue %dx.types.CBufRet.f32 %790, 0
  %792 = extractvalue %dx.types.CBufRet.f32 %790, 1
  %793 = extractvalue %dx.types.CBufRet.f32 %790, 2
  %794 = extractvalue %dx.types.CBufRet.f32 %790, 3
  %795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %796 = extractvalue %dx.types.CBufRet.f32 %795, 3
  %797 = call float @dx.op.binary.f32(i32 36, float %783, float %796)  ; FMin(a,b)
  %798 = fmul fast float %794, %785
  %799 = call float @dx.op.unary.f32(i32 7, float %798)  ; Saturate(value)
  %800 = fsub fast float %791, %787
  %801 = fsub fast float %792, %788
  %802 = fsub fast float %793, %789
  %803 = fmul fast float %799, %800
  %804 = fmul fast float %799, %801
  %805 = fmul fast float %799, %802
  %806 = fadd fast float %803, %787
  %807 = fadd fast float %804, %788
  %808 = fadd fast float %805, %789
  %809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %810 = extractvalue %dx.types.CBufRet.f32 %809, 0
  %811 = extractvalue %dx.types.CBufRet.f32 %809, 1
  %812 = fadd fast float %811, %810
  %813 = call float @dx.op.unary.f32(i32 7, float %812)  ; Saturate(value)
  %814 = extractvalue %dx.types.CBufRet.f32 %809, 2
  %815 = extractvalue %dx.types.CBufRet.f32 %809, 3
  %816 = fadd fast float %815, %814
  %817 = call float @dx.op.unary.f32(i32 7, float %816)  ; Saturate(value)
  %818 = fmul fast float %813, %797
  %819 = fmul fast float %818, %817
  br label %820

; <label>:820                                     ; preds = %781, %700, %535, %517, %515
  %821 = phi float [ %544, %535 ], [ %703, %700 ], [ %785, %781 ], [ 0.000000e+00, %515 ], [ 0.000000e+00, %517 ]
  %822 = phi float [ %578, %535 ], [ %737, %700 ], [ %819, %781 ], [ 0.000000e+00, %515 ], [ 0.000000e+00, %517 ]
  %823 = phi float [ %565, %535 ], [ %724, %700 ], [ %806, %781 ], [ 0.000000e+00, %515 ], [ 0.000000e+00, %517 ]
  %824 = phi float [ %566, %535 ], [ %725, %700 ], [ %807, %781 ], [ 0.000000e+00, %515 ], [ 0.000000e+00, %517 ]
  %825 = phi float [ %567, %535 ], [ %726, %700 ], [ %808, %781 ], [ 0.000000e+00, %515 ], [ 0.000000e+00, %517 ]
  %826 = fmul fast float %458, %822
  %827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %828 = extractvalue %dx.types.CBufRet.f32 %827, 2
  %829 = fsub fast float %465, %828
  %830 = fcmp fast olt float %826, -2.000000e+01
  %831 = call float @dx.op.unary.f32(i32 21, float %826)  ; Exp(value)
  %832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %833 = extractvalue %dx.types.CBufRet.f32 %832, 2
  %834 = extractvalue %dx.types.CBufRet.f32 %832, 3
  %835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %836 = extractvalue %dx.types.CBufRet.f32 %835, 2
  %837 = fmul fast float %834, %829
  %838 = call float @dx.op.unary.f32(i32 7, float %837)  ; Saturate(value)
  %839 = fsub fast float 1.000000e+00, %838
  %840 = fmul fast float %450, 5.000000e-01
  %841 = fadd fast float %840, 5.000000e-01
  %842 = call float @dx.op.unary.f32(i32 7, float %841)  ; Saturate(value)
  %843 = fsub fast float 1.000000e+00, %842
  %844 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %839)  ; FMax(a,b)
  %845 = fdiv fast float %843, %844
  %846 = fsub fast float %829, %410
  %847 = call float @dx.op.unary.f32(i32 6, float %846)  ; FAbs(value)
  %848 = fmul fast float %847, %833
  %849 = call float @dx.op.unary.f32(i32 7, float %845)  ; Saturate(value)
  %850 = fsub fast float 1.000000e+00, %848
  %851 = fmul fast float %850, %849
  %852 = fadd fast float %851, %848
  %853 = fmul fast float %836, %829
  %854 = call float @dx.op.unary.f32(i32 7, float %853)  ; Saturate(value)
  %855 = fsub fast float 1.000000e+00, %852
  %856 = fmul fast float %855, %854
  %857 = fadd fast float %856, %852
  %858 = call float @dx.op.unary.f32(i32 7, float %857)  ; Saturate(value)
  %859 = fadd fast float %831, -1.000000e+00
  %860 = select i1 %830, float -1.000000e+00, float %859
  %861 = fmul fast float %858, %860
  %862 = fadd fast float %861, 1.000000e+00
  %863 = fsub fast float -0.000000e+00, %861
  %864 = fmul fast float %823, %863
  %865 = fmul fast float %824, %863
  %866 = fmul fast float %825, %863
  br label %867

; <label>:867                                     ; preds = %820, %416
  %868 = phi float [ %821, %820 ], [ 0.000000e+00, %416 ]
  %869 = phi float [ %862, %820 ], [ 1.000000e+00, %416 ]
  %870 = phi float [ %864, %820 ], [ 0.000000e+00, %416 ]
  %871 = phi float [ %865, %820 ], [ 0.000000e+00, %416 ]
  %872 = phi float [ %866, %820 ], [ 0.000000e+00, %416 ]
  %873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %874 = extractvalue %dx.types.CBufRet.f32 %873, 1
  %875 = fsub fast float 1.000000e+00, %869
  %876 = fmul fast float %875, %451
  %877 = fmul fast float %876, %874
  %878 = fsub fast float %451, %877
  br i1 %444, label %879, label %908, !dx.controlflow.hints !91

; <label>:879                                     ; preds = %867
  %880 = fmul fast float %452, %441
  %881 = fadd fast float %880, %442
  %882 = call float @dx.op.unary.f32(i32 7, float %881)  ; Saturate(value)
  %883 = fmul fast float %423, %878
  %884 = fsub fast float -0.000000e+00, %883
  %885 = fmul fast float %424, %878
  %886 = fsub fast float -0.000000e+00, %885
  %887 = call float @dx.op.unary.f32(i32 21, float %884)  ; Exp(value)
  %888 = call float @dx.op.unary.f32(i32 21, float %886)  ; Exp(value)
  %889 = call float @dx.op.binary.f32(i32 35, float %431, float %887)  ; FMax(a,b)
  %890 = call float @dx.op.binary.f32(i32 35, float %431, float %888)  ; FMax(a,b)
  %891 = fsub fast float %890, %889
  %892 = fmul fast float %891, %882
  %893 = fadd fast float %892, %889
  %894 = call float @dx.op.unary.f32(i32 7, float %893)  ; Saturate(value)
  %895 = fsub fast float %428, %433
  %896 = fsub fast float %429, %434
  %897 = fsub fast float %430, %435
  %898 = fmul fast float %882, %895
  %899 = fmul fast float %882, %896
  %900 = fmul fast float %882, %897
  %901 = fadd fast float %898, %433
  %902 = fadd fast float %899, %434
  %903 = fadd fast float %900, %435
  %904 = fsub fast float 1.000000e+00, %894
  %905 = fmul fast float %904, %901
  %906 = fmul fast float %904, %902
  %907 = fmul fast float %904, %903
  br label %967

; <label>:908                                     ; preds = %867
  %909 = fmul fast float %878, %440
  %910 = call float @dx.op.unary.f32(i32 7, float %909)  ; Saturate(value)
  %911 = fsub fast float 2.000000e+00, %910
  %912 = fmul fast float %910, 9.921875e-01
  %913 = fmul fast float %912, %911
  %914 = fadd fast float %913, 3.906250e-03
  %915 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %914, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %916 = extractvalue %dx.types.ResRet.f32 %915, 0
  %917 = fsub fast float %910, %916
  %918 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %917)  ; FMax(a,b)
  %919 = fmul fast float %426, %410
  %920 = call float @dx.op.unary.f32(i32 6, float %919)  ; FAbs(value)
  %921 = fcmp fast ogt float %920, 0x3EB0C6F7A0000000
  br i1 %921, label %922, label %928, !dx.controlflow.hints !92

; <label>:922                                     ; preds = %908
  %923 = fmul fast float %919, 0xBFF7154760000000
  %924 = call float @dx.op.unary.f32(i32 21, float %923)  ; Exp(value)
  %925 = fsub fast float 1.000000e+00, %924
  %926 = fdiv fast float %925, %919
  %927 = fmul fast float %926, %436
  br label %928

; <label>:928                                     ; preds = %922, %908
  %929 = phi float [ %927, %922 ], [ %436, %908 ]
  %930 = fadd fast float %929, %438
  %931 = fmul fast float %930, %918
  %932 = fmul fast float %423, %931
  %933 = fsub fast float -0.000000e+00, %932
  %934 = fmul fast float %424, %931
  %935 = fsub fast float -0.000000e+00, %934
  %936 = fmul fast float %425, %931
  %937 = fsub fast float -0.000000e+00, %936
  %938 = call float @dx.op.unary.f32(i32 21, float %933)  ; Exp(value)
  %939 = call float @dx.op.unary.f32(i32 21, float %935)  ; Exp(value)
  %940 = call float @dx.op.unary.f32(i32 21, float %937)  ; Exp(value)
  %941 = fmul fast float %452, %452
  %942 = fadd fast float %941, 1.000000e+00
  %943 = fmul fast float %942, 0x3FAE8EC8A0000000
  %944 = fmul fast float %943, %433
  %945 = fmul fast float %943, %434
  %946 = fmul fast float %943, %435
  %947 = fmul fast float %452, %431
  %948 = fsub fast float 1.000000e+00, %947
  %949 = fmul fast float %431, %431
  %950 = fsub fast float 1.000000e+00, %949
  %951 = fmul fast float %950, 0x3FB45F3060000000
  %952 = fmul fast float %948, %948
  %953 = fdiv fast float 1.000000e+00, %952
  %954 = fmul fast float %951, %953
  %955 = fmul fast float %954, %428
  %956 = fmul fast float %954, %429
  %957 = fmul fast float %954, %430
  %958 = fadd fast float %955, %944
  %959 = fadd fast float %956, %945
  %960 = fadd fast float %957, %946
  %961 = fsub fast float 1.000000e+00, %938
  %962 = fsub fast float 1.000000e+00, %939
  %963 = fsub fast float 1.000000e+00, %940
  %964 = fmul fast float %958, %961
  %965 = fmul fast float %959, %962
  %966 = fmul fast float %960, %963
  br label %967

; <label>:967                                     ; preds = %928, %879
  %968 = phi float [ %905, %879 ], [ %964, %928 ]
  %969 = phi float [ %906, %879 ], [ %965, %928 ]
  %970 = phi float [ %907, %879 ], [ %966, %928 ]
  %971 = phi float [ %894, %879 ], [ %938, %928 ]
  %972 = phi float [ %894, %879 ], [ %939, %928 ]
  %973 = phi float [ %894, %879 ], [ %940, %928 ]
  br i1 %460, label %974, label %1172, !dx.controlflow.hints !93

; <label>:974                                     ; preds = %967
  %975 = extractvalue %dx.types.CBufRet.f32 %873, 0
  %976 = fmul fast float %975, %875
  %977 = fsub fast float %870, %968
  %978 = fsub fast float %871, %969
  %979 = fsub fast float %872, %970
  %980 = fmul fast float %976, %977
  %981 = fmul fast float %976, %978
  %982 = fmul fast float %976, %979
  %983 = fadd fast float %980, %968
  %984 = fadd fast float %981, %969
  %985 = fadd fast float %982, %970
  %986 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %971)  ; FMax(a,b)
  %987 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %972)  ; FMax(a,b)
  %988 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %973)  ; FMax(a,b)
  %989 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %869)  ; FMax(a,b)
  %990 = call float @dx.op.binary.f32(i32 35, float %868, float %878)  ; FMax(a,b)
  %991 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %990)  ; FMax(a,b)
  %992 = fdiv fast float %868, %991
  %993 = call float @dx.op.unary.f32(i32 7, float %992)  ; Saturate(value)
  %994 = fdiv fast float %878, %991
  %995 = call float @dx.op.unary.f32(i32 7, float %994)  ; Saturate(value)
  %996 = fcmp fast une float %989, 1.000000e+00
  br i1 %996, label %997, label %1010, !dx.controlflow.hints !94

; <label>:997                                     ; preds = %974
  %998 = call float @dx.op.unary.f32(i32 23, float %989)  ; Log(value)
  %999 = fmul fast float %998, 0x3FE62E4300000000
  %1000 = fmul fast float %870, %999
  %1001 = fsub fast float -0.000000e+00, %1000
  %1002 = fmul fast float %871, %999
  %1003 = fsub fast float -0.000000e+00, %1002
  %1004 = fmul fast float %872, %999
  %1005 = fsub fast float -0.000000e+00, %1004
  %1006 = fsub fast float 1.000000e+00, %989
  %1007 = fdiv fast float %1001, %1006
  %1008 = fdiv fast float %1003, %1006
  %1009 = fdiv fast float %1005, %1006
  br label %1010

; <label>:1010                                    ; preds = %997, %974
  %1011 = phi float [ %1007, %997 ], [ %870, %974 ]
  %1012 = phi float [ %1008, %997 ], [ %871, %974 ]
  %1013 = phi float [ %1009, %997 ], [ %872, %974 ]
  %1014 = phi float [ %999, %997 ], [ 0.000000e+00, %974 ]
  %1015 = fcmp fast une float %986, 1.000000e+00
  br i1 %1015, label %1016, label %1023, !dx.controlflow.hints !95

; <label>:1016                                    ; preds = %1010
  %1017 = call float @dx.op.unary.f32(i32 23, float %986)  ; Log(value)
  %1018 = fmul fast float %1017, 0x3FE62E4300000000
  %1019 = fmul fast float %983, %1018
  %1020 = fsub fast float -0.000000e+00, %1019
  %1021 = fsub fast float 1.000000e+00, %986
  %1022 = fdiv fast float %1020, %1021
  br label %1023

; <label>:1023                                    ; preds = %1016, %1010
  %1024 = phi float [ %1022, %1016 ], [ %983, %1010 ]
  %1025 = phi float [ %1018, %1016 ], [ 0.000000e+00, %1010 ]
  %1026 = fcmp fast une float %987, 1.000000e+00
  br i1 %1026, label %1027, label %1034, !dx.controlflow.hints !95

; <label>:1027                                    ; preds = %1023
  %1028 = call float @dx.op.unary.f32(i32 23, float %987)  ; Log(value)
  %1029 = fmul fast float %1028, 0x3FE62E4300000000
  %1030 = fmul fast float %984, %1029
  %1031 = fsub fast float -0.000000e+00, %1030
  %1032 = fsub fast float 1.000000e+00, %987
  %1033 = fdiv fast float %1031, %1032
  br label %1034

; <label>:1034                                    ; preds = %1027, %1023
  %1035 = phi float [ %1033, %1027 ], [ %984, %1023 ]
  %1036 = phi float [ %1029, %1027 ], [ 0.000000e+00, %1023 ]
  %1037 = fcmp fast une float %988, 1.000000e+00
  br i1 %1037, label %1038, label %1045, !dx.controlflow.hints !95

; <label>:1038                                    ; preds = %1034
  %1039 = call float @dx.op.unary.f32(i32 23, float %988)  ; Log(value)
  %1040 = fmul fast float %1039, 0x3FE62E4300000000
  %1041 = fmul fast float %985, %1040
  %1042 = fsub fast float -0.000000e+00, %1041
  %1043 = fsub fast float 1.000000e+00, %988
  %1044 = fdiv fast float %1042, %1043
  br label %1045

; <label>:1045                                    ; preds = %1038, %1034
  %1046 = phi float [ %1044, %1038 ], [ %985, %1034 ]
  %1047 = phi float [ %1040, %1038 ], [ 0.000000e+00, %1034 ]
  %1048 = fmul fast float %1011, %995
  %1049 = fmul fast float %1012, %995
  %1050 = fmul fast float %1013, %995
  %1051 = fmul fast float %1014, %995
  %1052 = fmul fast float %1024, %993
  %1053 = fmul fast float %1035, %993
  %1054 = fmul fast float %1046, %993
  %1055 = fmul fast float %1025, %993
  %1056 = fmul fast float %1036, %993
  %1057 = fmul fast float %1047, %993
  %1058 = fadd fast float %1052, %1048
  %1059 = fadd fast float %1053, %1049
  %1060 = fadd fast float %1054, %1050
  %1061 = fadd fast float %1055, %1051
  %1062 = fadd fast float %1056, %1051
  %1063 = fadd fast float %1057, %1051
  %1064 = fcmp fast une float %1061, 0.000000e+00
  br i1 %1064, label %1065, label %1072, !dx.controlflow.hints !96

; <label>:1065                                    ; preds = %1045
  %1066 = fmul fast float %1061, 0x3FF7154760000000
  %1067 = call float @dx.op.unary.f32(i32 21, float %1066)  ; Exp(value)
  %1068 = fsub fast float 1.000000e+00, %1067
  %1069 = fmul fast float %1058, %1068
  %1070 = fsub fast float -0.000000e+00, %1069
  %1071 = fdiv fast float %1070, %1061
  br label %1072

; <label>:1072                                    ; preds = %1065, %1045
  %1073 = phi float [ %1067, %1065 ], [ 1.000000e+00, %1045 ]
  %1074 = phi float [ %1071, %1065 ], [ %1058, %1045 ]
  %1075 = fcmp fast une float %1062, 0.000000e+00
  br i1 %1075, label %1076, label %1083, !dx.controlflow.hints !96

; <label>:1076                                    ; preds = %1072
  %1077 = fmul fast float %1062, 0x3FF7154760000000
  %1078 = call float @dx.op.unary.f32(i32 21, float %1077)  ; Exp(value)
  %1079 = fsub fast float 1.000000e+00, %1078
  %1080 = fmul fast float %1059, %1079
  %1081 = fsub fast float -0.000000e+00, %1080
  %1082 = fdiv fast float %1081, %1062
  br label %1083

; <label>:1083                                    ; preds = %1076, %1072
  %1084 = phi float [ %1078, %1076 ], [ 1.000000e+00, %1072 ]
  %1085 = phi float [ %1082, %1076 ], [ %1059, %1072 ]
  %1086 = fcmp fast une float %1063, 0.000000e+00
  br i1 %1086, label %1087, label %1094, !dx.controlflow.hints !96

; <label>:1087                                    ; preds = %1083
  %1088 = fmul fast float %1063, 0x3FF7154760000000
  %1089 = call float @dx.op.unary.f32(i32 21, float %1088)  ; Exp(value)
  %1090 = fsub fast float 1.000000e+00, %1089
  %1091 = fmul fast float %1060, %1090
  %1092 = fsub fast float -0.000000e+00, %1091
  %1093 = fdiv fast float %1092, %1063
  br label %1094

; <label>:1094                                    ; preds = %1087, %1083
  %1095 = phi float [ %1089, %1087 ], [ 1.000000e+00, %1083 ]
  %1096 = phi float [ %1093, %1087 ], [ %1060, %1083 ]
  %1097 = fcmp fast ogt float %993, %995
  br i1 %1097, label %1098, label %1118

; <label>:1098                                    ; preds = %1094
  %1099 = fsub fast float 1.000000e+00, %995
  %1100 = fmul fast float %1011, %1099
  %1101 = fmul fast float %1012, %1099
  %1102 = fmul fast float %1013, %1099
  %1103 = fmul fast float %1014, %1099
  %1104 = fcmp fast une float %1103, 0.000000e+00
  br i1 %1104, label %1105, label %1156, !dx.controlflow.hints !97

; <label>:1105                                    ; preds = %1098
  %1106 = fmul fast float %1103, 0x3FF7154760000000
  %1107 = call float @dx.op.unary.f32(i32 21, float %1106)  ; Exp(value)
  %1108 = fsub fast float 1.000000e+00, %1107
  %1109 = fmul fast float %1100, %1108
  %1110 = fsub fast float -0.000000e+00, %1109
  %1111 = fmul fast float %1101, %1108
  %1112 = fsub fast float -0.000000e+00, %1111
  %1113 = fmul fast float %1102, %1108
  %1114 = fsub fast float -0.000000e+00, %1113
  %1115 = fdiv fast float %1110, %1103
  %1116 = fdiv fast float %1112, %1103
  %1117 = fdiv fast float %1114, %1103
  br label %1156

; <label>:1118                                    ; preds = %1094
  %1119 = fsub fast float 1.000000e+00, %993
  %1120 = fmul fast float %1024, %1119
  %1121 = fmul fast float %1035, %1119
  %1122 = fmul fast float %1046, %1119
  %1123 = fmul fast float %1025, %1119
  %1124 = fmul fast float %1036, %1119
  %1125 = fmul fast float %1047, %1119
  %1126 = fcmp fast une float %1123, 0.000000e+00
  br i1 %1126, label %1127, label %1134, !dx.controlflow.hints !96

; <label>:1127                                    ; preds = %1118
  %1128 = fmul fast float %1123, 0x3FF7154760000000
  %1129 = call float @dx.op.unary.f32(i32 21, float %1128)  ; Exp(value)
  %1130 = fsub fast float 1.000000e+00, %1129
  %1131 = fmul fast float %1120, %1130
  %1132 = fsub fast float -0.000000e+00, %1131
  %1133 = fdiv fast float %1132, %1123
  br label %1134

; <label>:1134                                    ; preds = %1127, %1118
  %1135 = phi float [ %1133, %1127 ], [ %1120, %1118 ]
  %1136 = phi float [ %1129, %1127 ], [ 1.000000e+00, %1118 ]
  %1137 = fcmp fast une float %1124, 0.000000e+00
  br i1 %1137, label %1138, label %1145, !dx.controlflow.hints !96

; <label>:1138                                    ; preds = %1134
  %1139 = fmul fast float %1124, 0x3FF7154760000000
  %1140 = call float @dx.op.unary.f32(i32 21, float %1139)  ; Exp(value)
  %1141 = fsub fast float 1.000000e+00, %1140
  %1142 = fmul fast float %1121, %1141
  %1143 = fsub fast float -0.000000e+00, %1142
  %1144 = fdiv fast float %1143, %1124
  br label %1145

; <label>:1145                                    ; preds = %1138, %1134
  %1146 = phi float [ %1144, %1138 ], [ %1121, %1134 ]
  %1147 = phi float [ %1140, %1138 ], [ 1.000000e+00, %1134 ]
  %1148 = fcmp fast une float %1125, 0.000000e+00
  br i1 %1148, label %1149, label %1156, !dx.controlflow.hints !96

; <label>:1149                                    ; preds = %1145
  %1150 = fmul fast float %1125, 0x3FF7154760000000
  %1151 = call float @dx.op.unary.f32(i32 21, float %1150)  ; Exp(value)
  %1152 = fsub fast float 1.000000e+00, %1151
  %1153 = fmul fast float %1122, %1152
  %1154 = fsub fast float -0.000000e+00, %1153
  %1155 = fdiv fast float %1154, %1125
  br label %1156

; <label>:1156                                    ; preds = %1149, %1145, %1105, %1098
  %1157 = phi float [ %1155, %1149 ], [ %1117, %1105 ], [ %1102, %1098 ], [ %1122, %1145 ]
  %1158 = phi float [ %1146, %1149 ], [ %1116, %1105 ], [ %1101, %1098 ], [ %1146, %1145 ]
  %1159 = phi float [ %1135, %1149 ], [ %1115, %1105 ], [ %1100, %1098 ], [ %1135, %1145 ]
  %1160 = phi float [ %1151, %1149 ], [ %1107, %1105 ], [ 1.000000e+00, %1098 ], [ 1.000000e+00, %1145 ]
  %1161 = phi float [ %1147, %1149 ], [ %1107, %1105 ], [ 1.000000e+00, %1098 ], [ %1147, %1145 ]
  %1162 = phi float [ %1136, %1149 ], [ %1107, %1105 ], [ 1.000000e+00, %1098 ], [ %1136, %1145 ]
  %1163 = fmul fast float %1162, %1074
  %1164 = fmul fast float %1161, %1085
  %1165 = fmul fast float %1160, %1096
  %1166 = fadd fast float %1163, %1159
  %1167 = fadd fast float %1164, %1158
  %1168 = fadd fast float %1165, %1157
  %1169 = fmul fast float %1162, %1073
  %1170 = fmul fast float %1161, %1084
  %1171 = fmul fast float %1160, %1095
  br label %1172

; <label>:1172                                    ; preds = %1156, %967
  %1173 = phi float [ %1171, %1156 ], [ %973, %967 ]
  %1174 = phi float [ %1170, %1156 ], [ %972, %967 ]
  %1175 = phi float [ %1169, %1156 ], [ %971, %967 ]
  %1176 = phi float [ %1168, %1156 ], [ %970, %967 ]
  %1177 = phi float [ %1167, %1156 ], [ %969, %967 ]
  %1178 = phi float [ %1166, %1156 ], [ %968, %967 ]
  %1179 = fmul fast float %1178, %250
  %1180 = fmul fast float %1177, %250
  %1181 = fmul fast float %1176, %250
  %1182 = fmul fast float %1175, %415
  %1183 = call float @dx.op.dot3.f32(i32 55, float %1175, float %1174, float %1173, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1184 = call float @dx.op.dot3.f32(i32 55, float %1179, float %1180, float %1181, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1185 = select i1 %96, float %1183, float %1175
  %1186 = select i1 %96, float %1183, float %1174
  %1187 = select i1 %96, float 1.000000e+00, float %1173
  %1188 = select i1 %96, float %1184, float %1179
  %1189 = select i1 %96, float 0.000000e+00, float %1180
  %1190 = select i1 %96, float 0.000000e+00, float %1181
  %1191 = fmul fast float %1185, %412
  %1192 = fmul fast float %1186, %413
  %1193 = fmul fast float %1187, %414
  %1194 = fadd fast float %1191, %1188
  %1195 = fadd fast float %1192, %1189
  %1196 = fadd fast float %1190, %1193
  %1197 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1198 = extractvalue %dx.types.CBufRet.i32 %1197, 0
  %1199 = icmp eq i32 %1198, 0
  br i1 %1199, label %1564, label %1200, !dx.controlflow.hints !98

; <label>:1200                                    ; preds = %1172
  %1201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1202 = extractvalue %dx.types.CBufRet.f32 %1201, 2
  %1203 = extractvalue %dx.types.CBufRet.f32 %1201, 3
  %1204 = fmul fast float %1202, %33
  %1205 = fmul fast float %1203, %34
  %1206 = fmul fast float %1204, 2.000000e+00
  %1207 = fmul fast float %1205, 2.000000e+00
  %1208 = fsub fast float 1.000000e+00, %1206
  %1209 = fsub fast float 1.000000e+00, %1207
  %1210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1211 = extractvalue %dx.types.CBufRet.f32 %1210, 0
  %1212 = extractvalue %dx.types.CBufRet.f32 %1210, 1
  %1213 = extractvalue %dx.types.CBufRet.f32 %1210, 2
  %1214 = fmul fast float %1208, %1211
  %1215 = fmul fast float %1208, %1212
  %1216 = fmul fast float %1208, %1213
  %1217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1218 = extractvalue %dx.types.CBufRet.f32 %1217, 0
  %1219 = extractvalue %dx.types.CBufRet.f32 %1217, 1
  %1220 = extractvalue %dx.types.CBufRet.f32 %1217, 2
  %1221 = fmul fast float %1209, %1218
  %1222 = fmul fast float %1209, %1219
  %1223 = fmul fast float %1209, %1220
  %1224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1225 = extractvalue %dx.types.CBufRet.f32 %1224, 0
  %1226 = extractvalue %dx.types.CBufRet.f32 %1224, 1
  %1227 = extractvalue %dx.types.CBufRet.f32 %1224, 2
  %1228 = fadd fast float %1221, %1225
  %1229 = fadd fast float %1228, %1214
  %1230 = fadd fast float %1222, %1226
  %1231 = fadd fast float %1230, %1215
  %1232 = fadd fast float %1223, %1227
  %1233 = fadd fast float %1232, %1216
  %1234 = fmul fast float %1229, %411
  %1235 = fmul fast float %1231, %411
  %1236 = fmul fast float %1233, %411
  %1237 = fmul fast float %1234, %1234
  %1238 = fmul fast float %1235, %1235
  %1239 = fadd fast float %1237, %1238
  %1240 = fmul fast float %1236, %1236
  %1241 = fadd fast float %1239, %1240
  %1242 = call float @dx.op.unary.f32(i32 24, float %1241)  ; Sqrt(value)
  %1243 = extractvalue %dx.types.CBufRet.f32 %258, 0
  %1244 = fsub fast float %1242, %1243
  %1245 = extractvalue %dx.types.CBufRet.f32 %258, 2
  %1246 = fmul fast float %1244, %1245
  %1247 = call float @dx.op.unary.f32(i32 7, float %1246)  ; Saturate(value)
  %1248 = fadd fast float %1247, -5.000000e-01
  %1249 = fmul fast float %1248, 2.000000e+00
  %1250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1251 = extractvalue %dx.types.CBufRet.f32 %1250, 2
  %1252 = call float @dx.op.binary.f32(i32 36, float %1251, float %1249)  ; FMin(a,b)
  %1253 = fsub fast float -0.000000e+00, %1251
  %1254 = fcmp fast ogt float %1252, %1253
  br i1 %1254, label %1255, label %1564, !dx.controlflow.hints !99

; <label>:1255                                    ; preds = %1200
  %1256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %1257 = extractvalue %dx.types.CBufRet.f32 %1256, 3
  %1258 = fcmp fast ogt float %1257, 0.000000e+00
  br i1 %1258, label %1259, label %1334, !dx.controlflow.hints !100

; <label>:1259                                    ; preds = %1255
  %1260 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %12, i32 0)  ; GetDimensions(handle,mipLevel)
  %1261 = extractvalue %dx.types.Dimensions %1260, 0
  %1262 = sitofp i32 %1261 to float
  %1263 = extractvalue %dx.types.Dimensions %1260, 1
  %1264 = sitofp i32 %1263 to float
  %1265 = fmul fast float %1204, %1262
  %1266 = fmul fast float %1205, %1264
  %1267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1268 = extractvalue %dx.types.CBufRet.f32 %1267, 1
  %1269 = fsub fast float -0.000000e+00, %1268
  %1270 = fptoui float %1269 to i32
  %1271 = fptoui float %1265 to i32
  %1272 = fptoui float %1266 to i32
  %1273 = and i32 %1270, 31
  %1274 = lshr i32 %1271, %1273
  %1275 = lshr i32 %1272, %1273
  %1276 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %1270, i32 %1274, i32 %1275, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1277 = extractvalue %dx.types.ResRet.f32 %1276, 0
  %1278 = fcmp fast olt float %1277, -1.000000e+00
  %1279 = fcmp fast ogt float %1277, -1.000000e+00
  %1280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1281 = extractvalue %dx.types.CBufRet.f32 %1280, 1
  %1282 = select i1 %1279, float %1281, float 1.000000e+00
  %1283 = fadd fast float %1277, 1.000000e+00
  %1284 = fmul fast float %1282, %1283
  %1285 = call float @dx.op.unary.f32(i32 6, float %1284)  ; FAbs(value)
  %1286 = extractvalue %dx.types.CBufRet.f32 %1280, 3
  %1287 = fcmp fast oge float %1285, %1286
  %1288 = select i1 %1287, float 0x4197782600000000, float %1285
  %1289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %1290 = extractvalue %dx.types.CBufRet.f32 %1289, 0
  %1291 = extractvalue %dx.types.CBufRet.f32 %1289, 1
  %1292 = extractvalue %dx.types.CBufRet.f32 %1289, 2
  %1293 = select i1 %1278, float %1290, float %1211
  %1294 = select i1 %1278, float %1291, float %1212
  %1295 = select i1 %1278, float %1292, float %1213
  %1296 = fmul fast float %1293, %1208
  %1297 = fmul fast float %1294, %1208
  %1298 = fmul fast float %1295, %1208
  %1299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %1300 = extractvalue %dx.types.CBufRet.f32 %1299, 0
  %1301 = extractvalue %dx.types.CBufRet.f32 %1299, 1
  %1302 = extractvalue %dx.types.CBufRet.f32 %1299, 2
  %1303 = select i1 %1278, float %1300, float %1218
  %1304 = select i1 %1278, float %1301, float %1219
  %1305 = select i1 %1278, float %1302, float %1220
  %1306 = fmul fast float %1303, %1209
  %1307 = fmul fast float %1304, %1209
  %1308 = fmul fast float %1305, %1209
  %1309 = fadd fast float %1306, %1296
  %1310 = fadd fast float %1307, %1297
  %1311 = fadd fast float %1308, %1298
  %1312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %1313 = extractvalue %dx.types.CBufRet.f32 %1312, 0
  %1314 = extractvalue %dx.types.CBufRet.f32 %1312, 1
  %1315 = extractvalue %dx.types.CBufRet.f32 %1312, 2
  %1316 = select i1 %1278, float %1313, float %1225
  %1317 = select i1 %1278, float %1314, float %1226
  %1318 = select i1 %1278, float %1315, float %1227
  %1319 = fadd fast float %1309, %1316
  %1320 = fadd fast float %1310, %1317
  %1321 = fadd fast float %1311, %1318
  %1322 = fmul fast float %1319, %1288
  %1323 = fmul fast float %1320, %1288
  %1324 = fmul fast float %1321, %1288
  %1325 = fmul fast float %1322, %1322
  %1326 = fmul fast float %1323, %1323
  %1327 = fadd fast float %1325, %1326
  %1328 = fmul fast float %1324, %1324
  %1329 = fadd fast float %1327, %1328
  %1330 = call float @dx.op.unary.f32(i32 24, float %1329)  ; Sqrt(value)
  %1331 = fsub fast float %1330, %1243
  %1332 = fmul fast float %1331, %1245
  %1333 = call float @dx.op.unary.f32(i32 7, float %1332)  ; Saturate(value)
  br label %1334

; <label>:1334                                    ; preds = %1259, %1255
  %1335 = phi float [ %1333, %1259 ], [ 1.000000e+00, %1255 ]
  %1336 = fmul fast float %1252, 5.000000e-01
  %1337 = fadd fast float %1336, 5.000000e-01
  %1338 = call float @dx.op.unary.f32(i32 22, float %1337)  ; Frc(value)
  %1339 = call float @dx.op.unary.f32(i32 27, float %1338)  ; Round_ni(value)
  %1340 = call float @dx.op.unary.f32(i32 22, float %1338)  ; Frc(value)
  %1341 = fmul fast float %1340, 2.000000e+00
  %1342 = fadd fast float %1341, -1.000000e+00
  %1343 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %17, float %1204, float %1205, float %1339, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1344 = extractvalue %dx.types.ResRet.f32 %1343, 0
  %1345 = extractvalue %dx.types.ResRet.f32 %1343, 1
  %1346 = extractvalue %dx.types.ResRet.f32 %1343, 2
  %1347 = extractvalue %dx.types.ResRet.f32 %1343, 3
  %1348 = fadd fast float %1344, -5.000000e-01
  %1349 = fadd fast float %1346, -5.000000e-01
  %1350 = fmul fast float %1348, 0xBFD5555560000000
  %1351 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1349, float %1350)  ; FMad(a,b,c)
  %1352 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1345, float 0.000000e+00)  ; FMad(a,b,c)
  %1353 = fadd fast float %1352, %1347
  %1354 = fmul fast float %1348, -7.500000e-01
  %1355 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1349, float %1354)  ; FMad(a,b,c)
  %1356 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1345, float 0.000000e+00)  ; FMad(a,b,c)
  %1357 = fadd fast float %1356, %1347
  %1358 = call float @dx.op.binary.f32(i32 35, float %1351, float -1.000000e+00)  ; FMax(a,b)
  %1359 = call float @dx.op.binary.f32(i32 35, float %1353, float -1.000000e+00)  ; FMax(a,b)
  %1360 = call float @dx.op.binary.f32(i32 35, float %1355, float -1.000000e+00)  ; FMax(a,b)
  %1361 = call float @dx.op.binary.f32(i32 35, float %1357, float -1.000000e+00)  ; FMax(a,b)
  %1362 = call float @dx.op.binary.f32(i32 36, float %1358, float 1.000000e+00)  ; FMin(a,b)
  %1363 = call float @dx.op.binary.f32(i32 36, float %1359, float 1.000000e+00)  ; FMin(a,b)
  %1364 = call float @dx.op.binary.f32(i32 36, float %1360, float 1.000000e+00)  ; FMin(a,b)
  %1365 = call float @dx.op.binary.f32(i32 36, float %1361, float 1.000000e+00)  ; FMin(a,b)
  %1366 = fcmp fast olt float %1362, 0x3FEFFF8020000000
  br i1 %1366, label %1367, label %1482, !dx.controlflow.hints !101

; <label>:1367                                    ; preds = %1334
  %1368 = extractvalue %dx.types.CBufRet.f32 %1250, 3
  %1369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1370 = extractvalue %dx.types.CBufRet.f32 %1369, 0
  %1371 = extractvalue %dx.types.CBufRet.f32 %1369, 1
  %1372 = extractvalue %dx.types.CBufRet.f32 %1369, 2
  %1373 = extractvalue %dx.types.CBufRet.f32 %1369, 3
  %1374 = fsub fast float %1370, %1362
  %1375 = fsub fast float %1371, %1363
  %1376 = fsub fast float %1372, %1364
  %1377 = fsub fast float %1373, %1365
  %1378 = fmul fast float %1374, %1368
  %1379 = fmul fast float %1375, %1368
  %1380 = fmul fast float %1376, %1368
  %1381 = fmul fast float %1377, %1368
  %1382 = fadd fast float %1378, %1362
  %1383 = fadd fast float %1379, %1363
  %1384 = fsub fast float -0.000000e+00, %1383
  %1385 = fadd fast float %1380, %1364
  %1386 = fadd fast float %1381, %1365
  %1387 = fmul fast float %1382, %1382
  %1388 = fsub fast float %1383, %1387
  %1389 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1388)  ; FMax(a,b)
  %1390 = fdiv fast float 1.000000e+00, %1389
  %1391 = fmul fast float %1383, %1382
  %1392 = fsub fast float %1385, %1391
  %1393 = fsub fast float %1342, %1382
  %1394 = fmul fast float %1342, %1342
  %1395 = fsub fast float %1394, %1383
  %1396 = fmul fast float %1393, %1390
  %1397 = fmul fast float %1396, %1392
  %1398 = fsub fast float %1395, %1397
  %1399 = fmul fast float %1383, %1383
  %1400 = fsub fast float %1386, %1399
  %1401 = fmul fast float %1392, %1392
  %1402 = fmul fast float %1401, %1390
  %1403 = fsub fast float %1400, %1402
  %1404 = fdiv fast float %1398, %1403
  %1405 = fmul fast float %1392, %1404
  %1406 = fsub fast float %1393, %1405
  %1407 = fmul fast float %1406, %1390
  %1408 = fmul fast float %1407, %1382
  %1409 = fsub fast float 1.000000e+00, %1408
  %1410 = fmul fast float %1383, %1404
  %1411 = fsub fast float %1409, %1410
  %1412 = fmul fast float %1407, %1407
  %1413 = fmul fast float %1404, 4.000000e+00
  %1414 = fmul fast float %1413, %1411
  %1415 = fsub fast float %1412, %1414
  %1416 = call float @dx.op.unary.f32(i32 24, float %1415)  ; Sqrt(value)
  %1417 = fcmp fast oge float %1407, 0.000000e+00
  %1418 = fsub fast float -0.000000e+00, %1416
  %1419 = select i1 %1417, float %1418, float %1416
  %1420 = fsub fast float %1419, %1407
  %1421 = fdiv fast float %1420, %1404
  %1422 = fdiv fast float %1411, %1420
  %1423 = fmul fast float %1421, 5.000000e-01
  %1424 = fmul fast float %1422, 2.000000e+00
  %1425 = select i1 %1417, float %1423, float %1424
  %1426 = select i1 %1417, float %1424, float %1423
  %1427 = call float @dx.op.binary.f32(i32 35, float %1425, float %1426)  ; FMax(a,b)
  %1428 = call float @dx.op.binary.f32(i32 36, float %1425, float %1426)  ; FMin(a,b)
  %1429 = fcmp fast ogt float %1342, %1428
  br i1 %1429, label %1430, label %1440

; <label>:1430                                    ; preds = %1367
  %1431 = fsub fast float %1342, %1428
  %1432 = fsub fast float %1427, %1428
  %1433 = fmul fast float %1431, %1432
  %1434 = fmul fast float %1427, %1342
  %1435 = fadd fast float %1427, %1342
  %1436 = fmul fast float %1435, %1382
  %1437 = fadd fast float %1434, %1383
  %1438 = fsub fast float %1437, %1436
  %1439 = fdiv fast float %1438, %1433
  br label %1440

; <label>:1440                                    ; preds = %1430, %1367
  %1441 = phi float [ %1439, %1430 ], [ 0.000000e+00, %1367 ]
  %1442 = fcmp fast ogt float %1342, %1427
  %1443 = fsub fast float %1342, %1427
  br i1 %1442, label %1444, label %1454

; <label>:1444                                    ; preds = %1440
  %1445 = fsub fast float %1427, %1428
  %1446 = fmul fast float %1445, %1443
  %1447 = fmul fast float %1428, %1342
  %1448 = fadd fast float %1428, %1342
  %1449 = fmul fast float %1448, %1382
  %1450 = fsub fast float %1384, %1447
  %1451 = fadd fast float %1450, %1449
  %1452 = fdiv fast float %1451, %1446
  %1453 = fadd fast float %1452, %1441
  br label %1454

; <label>:1454                                    ; preds = %1444, %1440
  %1455 = phi float [ %1453, %1444 ], [ %1441, %1440 ]
  %1456 = fsub fast float %1342, %1428
  %1457 = fmul fast float %1456, %1443
  %1458 = fmul fast float %1428, %1427
  %1459 = fadd fast float %1428, %1427
  %1460 = fmul fast float %1459, %1382
  %1461 = fadd fast float %1458, %1383
  %1462 = fsub fast float %1461, %1460
  %1463 = fdiv fast float %1462, %1457
  %1464 = call float @dx.op.unary.f32(i32 7, float %1455)  ; Saturate(value)
  %1465 = fcmp fast oeq float %259, 0.000000e+00
  %1466 = extractvalue %dx.types.CBufRet.f32 %1250, 0
  %1467 = fcmp fast oeq float %1466, 0.000000e+00
  %1468 = or i1 %1465, %1467
  %1469 = fmul fast float %1466, 2.000000e+00
  %1470 = fadd fast float %1251, %1252
  %1471 = fdiv fast float %1470, %1469
  %1472 = call float @dx.op.unary.f32(i32 7, float %1471)  ; Saturate(value)
  %1473 = fmul fast float %1472, 2.000000e+00
  %1474 = fsub fast float 3.000000e+00, %1473
  %1475 = fmul fast float %1472, %1472
  %1476 = fmul fast float %1475, %1474
  %1477 = select i1 %1468, float 1.000000e+00, float %1476
  %1478 = fmul fast float %1463, %259
  %1479 = fadd fast float %1464, %1478
  %1480 = call float @dx.op.unary.f32(i32 7, float %1479)  ; Saturate(value)
  %1481 = fmul fast float %1477, %1480
  br label %1482

; <label>:1482                                    ; preds = %1454, %1334
  %1483 = phi float [ %1481, %1454 ], [ 0.000000e+00, %1334 ]
  %1484 = fsub fast float 1.000000e+00, %1483
  %1485 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %1204, float %1205, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1486 = extractvalue %dx.types.ResRet.f32 %1485, 0
  %1487 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1488 = extractvalue %dx.types.CBufRet.i32 %1487, 2
  %1489 = icmp eq i32 %1488, 0
  br i1 %1489, label %1495, label %1490

; <label>:1490                                    ; preds = %1482
  %1491 = call float @dx.op.unary.f32(i32 7, float %1483)  ; Saturate(value)
  %1492 = fadd fast float %1486, -1.000000e+00
  %1493 = fmul fast float %1491, %1492
  %1494 = fadd fast float %1493, 1.000000e+00
  br label %1495

; <label>:1495                                    ; preds = %1490, %1482
  %1496 = phi float [ %1494, %1490 ], [ %1484, %1482 ]
  br i1 %1258, label %1497, label %1515

; <label>:1497                                    ; preds = %1495
  %1498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1499 = extractvalue %dx.types.CBufRet.f32 %1498, 1
  %1500 = fsub fast float %1335, %1499
  %1501 = call float @dx.op.unary.f32(i32 7, float %1500)  ; Saturate(value)
  %1502 = fsub fast float %1335, %1257
  %1503 = call float @dx.op.unary.f32(i32 7, float %1502)  ; Saturate(value)
  %1504 = fsub fast float %1501, %1503
  %1505 = fsub fast float %1337, %1503
  %1506 = fdiv fast float %1505, %1504
  %1507 = call float @dx.op.unary.f32(i32 7, float %1506)  ; Saturate(value)
  %1508 = fmul fast float %1507, 2.000000e+00
  %1509 = fsub fast float 3.000000e+00, %1508
  %1510 = fsub fast float %1486, %1496
  %1511 = fmul fast float %1507, %1507
  %1512 = fmul fast float %1511, %1510
  %1513 = fmul fast float %1512, %1509
  %1514 = fadd fast float %1513, %1496
  br label %1515

; <label>:1515                                    ; preds = %1497, %1495
  %1516 = phi float [ %1514, %1497 ], [ %1496, %1495 ]
  %1517 = call float @dx.op.binary.f32(i32 35, float %1486, float %1516)  ; FMax(a,b)
  %1518 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1519 = extractvalue %dx.types.CBufRet.i32 %1518, 2
  %1520 = and i32 %1519, 1
  %1521 = icmp eq i32 %1520, 0
  %1522 = fcmp fast une float %1517, 1.000000e+00
  %1523 = and i1 %1522, %1521
  br i1 %1523, label %1524, label %1543

; <label>:1524                                    ; preds = %1515
  %1525 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %17, float %1204, float %1205, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1526 = extractvalue %dx.types.ResRet.f32 %1525, 0
  %1527 = extractvalue %dx.types.ResRet.f32 %1525, 1
  %1528 = extractvalue %dx.types.ResRet.f32 %1525, 2
  %1529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1530 = extractvalue %dx.types.CBufRet.f32 %1529, 1
  %1531 = fmul fast float %1530, %1526
  %1532 = fmul fast float %1530, %1527
  %1533 = fmul fast float %1530, %1528
  %1534 = fcmp fast ogt float %1486, 0x3FEFFF2E40000000
  %1535 = fsub fast float 1.000000e+00, %1517
  %1536 = fsub fast float 1.000000e+00, %1486
  %1537 = fdiv fast float %1535, %1536
  %1538 = call float @dx.op.unary.f32(i32 7, float %1537)  ; Saturate(value)
  %1539 = select i1 %1534, float 0.000000e+00, float %1538
  %1540 = fmul fast float %1531, %1539
  %1541 = fmul fast float %1532, %1539
  %1542 = fmul fast float %1533, %1539
  br label %1543

; <label>:1543                                    ; preds = %1524, %1515
  %1544 = phi float [ 0.000000e+00, %1515 ], [ %1540, %1524 ]
  %1545 = phi float [ 0.000000e+00, %1515 ], [ %1541, %1524 ]
  %1546 = phi float [ 0.000000e+00, %1515 ], [ %1542, %1524 ]
  %1547 = fmul fast float %1544, %250
  %1548 = fmul fast float %1545, %250
  %1549 = fmul fast float %1546, %250
  %1550 = fmul fast float %1517, %1182
  %1551 = call float @dx.op.dot3.f32(i32 55, float %1517, float %1517, float %1517, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1552 = call float @dx.op.dot3.f32(i32 55, float %1547, float %1548, float %1549, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1553 = select i1 %96, float %1551, float %1517
  %1554 = select i1 %96, float 1.000000e+00, float %1517
  %1555 = select i1 %96, float %1552, float %1547
  %1556 = select i1 %96, float 0.000000e+00, float %1548
  %1557 = select i1 %96, float 0.000000e+00, float %1549
  %1558 = fmul fast float %1553, %1194
  %1559 = fmul fast float %1553, %1195
  %1560 = fmul fast float %1554, %1196
  %1561 = fadd fast float %1558, %1555
  %1562 = fadd fast float %1559, %1556
  %1563 = fadd fast float %1557, %1560
  br label %1564

; <label>:1564                                    ; preds = %1543, %1200, %1172, %407
  %1565 = phi float [ %412, %407 ], [ %1194, %1172 ], [ %1561, %1543 ], [ %1194, %1200 ]
  %1566 = phi float [ %413, %407 ], [ %1195, %1172 ], [ %1562, %1543 ], [ %1195, %1200 ]
  %1567 = phi float [ %414, %407 ], [ %1196, %1172 ], [ %1563, %1543 ], [ %1196, %1200 ]
  %1568 = phi float [ %415, %407 ], [ %1182, %1172 ], [ %1550, %1543 ], [ %1182, %1200 ]
  %1569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1570 = extractvalue %dx.types.CBufRet.f32 %1569, 2
  %1571 = extractvalue %dx.types.CBufRet.f32 %1569, 3
  %1572 = fmul fast float %1570, %33
  %1573 = fmul fast float %1571, %34
  %1574 = call float @dx.op.unary.f32(i32 7, float %1572)  ; Saturate(value)
  %1575 = call float @dx.op.unary.f32(i32 7, float %1573)  ; Saturate(value)
  %1576 = select i1 %267, i32 2, i32 0
  %1577 = or i32 %1576, 1
  %1578 = uitofp i32 %1577 to float
  %1579 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %17, float %1574, float %1575, float %1578, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1580 = extractvalue %dx.types.ResRet.f32 %1579, 0
  %1581 = extractvalue %dx.types.ResRet.f32 %1579, 1
  %1582 = extractvalue %dx.types.ResRet.f32 %1579, 2
  %1583 = extractvalue %dx.types.ResRet.f32 %1579, 3
  %1584 = add nuw nsw i32 %1576, 2
  %1585 = uitofp i32 %1584 to float
  %1586 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %17, float %1574, float %1575, float %1585, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1587 = extractvalue %dx.types.ResRet.f32 %1586, 0
  %1588 = extractvalue %dx.types.ResRet.f32 %1586, 1
  %1589 = extractvalue %dx.types.ResRet.f32 %1586, 2
  %1590 = extractvalue %dx.types.ResRet.f32 %1586, 3
  %1591 = call float @dx.op.binary.f32(i32 35, float %1581, float %1582)  ; FMax(a,b)
  %1592 = call float @dx.op.binary.f32(i32 35, float %1580, float %1591)  ; FMax(a,b)
  %1593 = call float @dx.op.binary.f32(i32 35, float %1592, float %1583)  ; FMax(a,b)
  %1594 = call float @dx.op.binary.f32(i32 36, float %1588, float %1589)  ; FMin(a,b)
  %1595 = call float @dx.op.binary.f32(i32 36, float %1587, float %1594)  ; FMin(a,b)
  %1596 = call float @dx.op.binary.f32(i32 36, float %1595, float %1590)  ; FMin(a,b)
  %1597 = fmul fast float %1593, 2.550000e+02
  %1598 = fadd fast float %1597, 0x3F70101020000000
  %1599 = fptoui float %1598 to i32
  %1600 = fmul fast float %1596, 2.550000e+02
  %1601 = fadd fast float %1600, 0x3F70101020000000
  %1602 = fptoui float %1601 to i32
  %1603 = icmp ult i32 %1599, %1602
  br i1 %1603, label %1604, label %1656

; <label>:1604                                    ; preds = %1564
  %1605 = fcmp fast ogt float %25, 9.843750e-01
  %1606 = fadd fast float %411, -4.000000e+00
  %1607 = select i1 %1605, float -4.000000e+00, float %1606
  %1608 = call float @dx.op.binary.f32(i32 35, float %1607, float 0.000000e+00)  ; FMax(a,b)
  %1609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1610 = extractvalue %dx.types.CBufRet.f32 %1609, 0
  %1611 = fadd fast float %1610, %1608
  %1612 = extractvalue %dx.types.CBufRet.f32 %1609, 2
  %1613 = fmul fast float %1611, %1612
  %1614 = call float @dx.op.unary.f32(i32 23, float %1613)  ; Log(value)
  %1615 = extractvalue %dx.types.CBufRet.f32 %1609, 3
  %1616 = fmul fast float %1615, %1614
  %1617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1618 = extractvalue %dx.types.CBufRet.f32 %1617, 2
  %1619 = fmul fast float %1616, %1618
  %1620 = call float @dx.op.unary.f32(i32 7, float %1619)  ; Saturate(value)
  %1621 = uitofp i32 %1599 to float
  %1622 = uitofp i32 %1602 to float
  %1623 = fadd fast float %1621, 5.000000e-01
  %1624 = fadd fast float %1622, 5.000000e-01
  %1625 = fmul fast float %1618, %1623
  %1626 = fmul fast float %1618, %1624
  %1627 = fadd fast float %1625, 0x3F0FFB4800000000
  %1628 = fadd fast float %1626, 0xBF0FFB4800000000
  %1629 = call float @dx.op.binary.f32(i32 35, float %1620, float %1627)  ; FMax(a,b)
  %1630 = call float @dx.op.binary.f32(i32 36, float %1629, float %1628)  ; FMin(a,b)
  %1631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1632 = extractvalue %dx.types.CBufRet.f32 %1631, 1
  %1633 = extractvalue %dx.types.CBufRet.f32 %1631, 2
  %1634 = extractvalue %dx.types.CBufRet.f32 %1631, 0
  %1635 = select i1 %267, float %1634, float 0.000000e+00
  %1636 = fmul fast float %1632, %1630
  %1637 = fadd fast float %1635, %1636
  %1638 = fadd fast float %1635, %1633
  %1639 = fsub fast float %1632, %1633
  %1640 = fadd fast float %1639, %1635
  %1641 = call float @dx.op.binary.f32(i32 35, float %1637, float %1638)  ; FMax(a,b)
  %1642 = call float @dx.op.binary.f32(i32 36, float %1641, float %1640)  ; FMin(a,b)
  %1643 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %16, float %1574, float %1575, float %1642, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1644 = extractvalue %dx.types.ResRet.f32 %1643, 0
  %1645 = extractvalue %dx.types.ResRet.f32 %1643, 1
  %1646 = extractvalue %dx.types.ResRet.f32 %1643, 2
  %1647 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1574, float %1575, float %1642, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1648 = extractvalue %dx.types.ResRet.f32 %1647, 0
  %1649 = extractvalue %dx.types.ResRet.f32 %1647, 1
  %1650 = extractvalue %dx.types.ResRet.f32 %1647, 2
  %1651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1652 = extractvalue %dx.types.CBufRet.f32 %1651, 1
  %1653 = fmul fast float %1652, %1648
  %1654 = fmul fast float %1652, %1649
  %1655 = fmul fast float %1652, %1650
  br label %1656

; <label>:1656                                    ; preds = %1604, %1564
  %1657 = phi float [ %1644, %1604 ], [ 1.000000e+00, %1564 ]
  %1658 = phi float [ %1645, %1604 ], [ 1.000000e+00, %1564 ]
  %1659 = phi float [ %1646, %1604 ], [ 1.000000e+00, %1564 ]
  %1660 = phi float [ %1653, %1604 ], [ 0.000000e+00, %1564 ]
  %1661 = phi float [ %1654, %1604 ], [ 0.000000e+00, %1564 ]
  %1662 = phi float [ %1655, %1604 ], [ 0.000000e+00, %1564 ]
  %1663 = fmul fast float %1660, %250
  %1664 = fmul fast float %1661, %250
  %1665 = fmul fast float %1662, %250
  %1666 = fmul fast float %1657, %1568
  %1667 = call float @dx.op.dot3.f32(i32 55, float %1657, float %1658, float %1659, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1668 = call float @dx.op.dot3.f32(i32 55, float %1663, float %1664, float %1665, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1669 = select i1 %96, float %1667, float %1657
  %1670 = select i1 %96, float %1667, float %1658
  %1671 = select i1 %96, float 1.000000e+00, float %1659
  %1672 = select i1 %96, float %1668, float %1663
  %1673 = select i1 %96, float 0.000000e+00, float %1664
  %1674 = select i1 %96, float 0.000000e+00, float %1665
  %1675 = fmul fast float %1669, %1565
  %1676 = fmul fast float %1670, %1566
  %1677 = fmul fast float %1671, %1567
  %1678 = fadd fast float %1675, %1672
  %1679 = fadd fast float %1676, %1673
  %1680 = fadd fast float %1674, %1677
  %1681 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1682 = extractvalue %dx.types.CBufRet.i32 %1681, 3
  %1683 = and i32 %1682, 3
  %1684 = icmp ne i32 %1683, 0
  %1685 = and i32 %1682, 4
  %1686 = icmp ne i32 %1685, 0
  %1687 = and i1 %1684, %1686
  %1688 = and i1 %96, %1687
  br i1 %1688, label %1689, label %1695

; <label>:1689                                    ; preds = %1656
  %1690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1691 = extractvalue %dx.types.CBufRet.f32 %1690, 1
  %1692 = fadd fast float %1666, -1.000000e+00
  %1693 = fmul fast float %1691, %1692
  %1694 = fadd fast float %1693, 1.000000e+00
  br label %1695

; <label>:1695                                    ; preds = %1689, %1656
  %1696 = phi float [ %1694, %1689 ], [ %1666, %1656 ]
  %1697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1698 = extractvalue %dx.types.CBufRet.f32 %1697, 0
  br i1 %96, label %1699, label %1721

; <label>:1699                                    ; preds = %1695
  %1700 = fadd fast float %1678, %1679
  %1701 = fmul fast float %1698, %1700
  %1702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1703 = extractvalue %dx.types.CBufRet.f32 %1702, 3
  %1704 = extractvalue %dx.types.CBufRet.f32 %254, 1
  %1705 = fsub fast float %257, %1704
  %1706 = extractvalue %dx.types.CBufRet.f32 %254, 2
  %1707 = fmul fast float %1705, %1706
  %1708 = call float @dx.op.unary.f32(i32 7, float %1707)  ; Saturate(value)
  %1709 = fsub fast float %1708, %1703
  %1710 = fmul fast float %1709, %1696
  %1711 = fadd fast float %1710, %1703
  %1712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1713 = extractvalue %dx.types.CBufRet.f32 %1712, 0
  %1714 = fsub fast float %1711, %1713
  %1715 = fmul fast float %1714, 1.000000e+01
  %1716 = call float @dx.op.unary.f32(i32 7, float %1715)  ; Saturate(value)
  %1717 = fsub fast float %232, %250
  %1718 = fmul fast float %1716, %1717
  %1719 = fadd fast float %1718, %250
  %1720 = fmul fast float %1719, %1711
  br label %1730

; <label>:1721                                    ; preds = %1695
  %1722 = fmul fast float %1698, %1678
  %1723 = fmul fast float %1698, %1679
  %1724 = fmul fast float %1698, %1680
  %1725 = call float @dx.op.binary.f32(i32 35, float %1723, float %1724)  ; FMax(a,b)
  %1726 = call float @dx.op.binary.f32(i32 35, float %1722, float %1725)  ; FMax(a,b)
  %1727 = call float @dx.op.binary.f32(i32 35, float %1726, float %250)  ; FMax(a,b)
  %1728 = fcmp fast ugt float %1727, 0x3F10000000000000
  br i1 %1728, label %1730, label %1729

; <label>:1729                                    ; preds = %1721
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1730

; <label>:1730                                    ; preds = %1729, %1721, %1699
  %1731 = phi float [ %1701, %1699 ], [ %1722, %1729 ], [ %1722, %1721 ]
  %1732 = phi float [ %1720, %1699 ], [ %1723, %1729 ], [ %1723, %1721 ]
  %1733 = phi float [ %1719, %1699 ], [ %1724, %1729 ], [ %1724, %1721 ]
  %1734 = phi float [ %1719, %1699 ], [ %250, %1729 ], [ %250, %1721 ]
  %1735 = fadd fast float %167, 0x3FE3C6EF40000000
  %1736 = call float @dx.op.unary.f32(i32 22, float %1735)  ; Frc(value)
  %1737 = call float @dx.op.unary.f32(i32 23, float %1731)  ; Log(value)
  %1738 = fadd fast float %1737, -7.000000e+00
  %1739 = call float @dx.op.unary.f32(i32 21, float %1738)  ; Exp(value)
  %1740 = fmul fast float %1736, 2.000000e+00
  %1741 = fadd fast float %1740, -1.000000e+00
  %1742 = fmul fast float %1739, %1741
  %1743 = fcmp fast ogt float %1731, 0.000000e+00
  %1744 = select i1 %1743, float %1742, float 0.000000e+00
  %1745 = fadd fast float %1744, %1731
  %1746 = fadd fast float %167, 0x3FF3C6EF40000000
  %1747 = call float @dx.op.unary.f32(i32 22, float %1746)  ; Frc(value)
  %1748 = call float @dx.op.unary.f32(i32 23, float %1732)  ; Log(value)
  %1749 = fadd fast float %1748, -7.000000e+00
  %1750 = call float @dx.op.unary.f32(i32 21, float %1749)  ; Exp(value)
  %1751 = fmul fast float %1747, 2.000000e+00
  %1752 = fadd fast float %1751, -1.000000e+00
  %1753 = fmul fast float %1750, %1752
  %1754 = fcmp fast ogt float %1732, 0.000000e+00
  %1755 = select i1 %1754, float %1753, float 0.000000e+00
  %1756 = fadd fast float %1755, %1732
  %1757 = fadd fast float %167, 0x3FFDAA66E0000000
  %1758 = call float @dx.op.unary.f32(i32 22, float %1757)  ; Frc(value)
  %1759 = call float @dx.op.unary.f32(i32 23, float %1733)  ; Log(value)
  %1760 = fadd fast float %1759, -6.000000e+00
  %1761 = call float @dx.op.unary.f32(i32 21, float %1760)  ; Exp(value)
  %1762 = fmul fast float %1758, 2.000000e+00
  %1763 = fadd fast float %1762, -1.000000e+00
  %1764 = fmul fast float %1761, %1763
  %1765 = fcmp fast ogt float %1733, 0.000000e+00
  %1766 = select i1 %1765, float %1764, float 0.000000e+00
  %1767 = fadd fast float %1766, %1733
  %1768 = select i1 %96, float %1732, float %1756
  %1769 = select i1 %96, float %1733, float %1767
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1770 = call float @dx.op.binary.f32(i32 36, float %1745, float 3.225500e+04)  ; FMin(a,b)
  %1771 = call float @dx.op.binary.f32(i32 36, float %1768, float 3.225500e+04)  ; FMin(a,b)
  %1772 = call float @dx.op.binary.f32(i32 36, float %1769, float 3.225500e+04)  ; FMin(a,b)
  %1773 = call float @dx.op.binary.f32(i32 36, float %1734, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1770)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1771)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1772)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1773)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1734)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1734)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1734)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1734)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

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
!33 = !{[11 x i32] [i32 9, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 0, i32 0]}
!34 = !{void ()* @ps_main, !"ps_main", !35, !4, !49}
!35 = !{!36, !45, null}
!36 = !{!37, !40, !42, !44}
!37 = !{i32 0, !"SV_Position", i8 9, i8 3, !38, i8 4, i32 1, i8 4, i32 0, i8 0, !39}
!38 = !{i32 0}
!39 = !{i32 3, i32 15}
!40 = !{i32 1, !"TEXCOORD", i8 9, i8 0, !38, i8 2, i32 1, i8 2, i32 1, i8 0, !41}
!41 = !{i32 3, i32 3}
!42 = !{i32 2, !"COLOR", i8 5, i8 0, !43, i8 1, i32 1, i8 1, i32 2, i8 0, null}
!43 = !{i32 4}
!44 = !{i32 3, !"SV_SampleIndex", i8 5, i8 12, !38, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!45 = !{!46, !47}
!46 = !{i32 0, !"SV_Target", i8 9, i8 16, !38, i8 0, i32 1, i8 4, i32 0, i8 0, !39}
!47 = !{i32 1, !"SV_Target", i8 9, i8 16, !48, i8 0, i32 1, i8 4, i32 1, i8 0, !39}
!48 = !{i32 1}
!49 = !{i32 0, i64 24}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}
!51 = !{!52, !52, i64 0}
!52 = !{!"float", !53, i64 0}
!53 = !{!"omnipotent char", !54, i64 0}
!54 = !{!"Simple C/C++ TBAA"}
!55 = !{!56, !58, !60, !61, !63, !64, !65, !67, !68, !69}
!56 = distinct !{!56, !57, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!57 = distinct !{!57, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!58 = distinct !{!58, !59, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!59 = distinct !{!59, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!60 = distinct !{!60, !59, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!61 = distinct !{!61, !62, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!62 = distinct !{!62, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!63 = distinct !{!63, !62, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!64 = distinct !{!64, !62, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!65 = distinct !{!65, !66, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!66 = distinct !{!66, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!67 = distinct !{!67, !66, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!68 = distinct !{!68, !66, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!69 = distinct !{!69, !70, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!70 = distinct !{!70, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!71 = !{!72}
!72 = distinct !{!72, !73, !"\01?sort@@YAXAIAM00@Z: %c"}
!73 = distinct !{!73, !"\01?sort@@YAXAIAM00@Z"}
!74 = !{!75, !76, !56, !58, !60, !61, !63, !64, !65, !67, !68, !69}
!75 = distinct !{!75, !73, !"\01?sort@@YAXAIAM00@Z: %a"}
!76 = distinct !{!76, !73, !"\01?sort@@YAXAIAM00@Z: %b"}
!77 = !{!76}
!78 = !{!75, !72, !56, !58, !60, !61, !63, !64, !65, !67, !68, !69}
!79 = !{!75}
!80 = !{!76, !72, !56, !58, !60, !61, !63, !64, !65, !67, !68, !69}
!81 = !{!82}
!82 = distinct !{!82, !83, !"\01?sort@@YAXAIAM00@Z: %c"}
!83 = distinct !{!83, !"\01?sort@@YAXAIAM00@Z"}
!84 = !{!85, !86, !56, !58, !60, !61, !63, !64, !65, !67, !68, !69}
!85 = distinct !{!85, !83, !"\01?sort@@YAXAIAM00@Z: %a"}
!86 = distinct !{!86, !83, !"\01?sort@@YAXAIAM00@Z: %b"}
!87 = !{!86}
!88 = !{!85, !82, !56, !58, !60, !61, !63, !64, !65, !67, !68, !69}
!89 = !{!85}
!90 = !{!86, !82, !56, !58, !60, !61, !63, !64, !65, !67, !68, !69}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}

