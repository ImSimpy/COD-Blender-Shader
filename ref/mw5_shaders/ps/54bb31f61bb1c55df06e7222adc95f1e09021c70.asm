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
; shader hash: 0c51e63dba666a77c0a1b6638912c123
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
  %168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 76, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %226 = extractvalue %dx.types.CBufRet.f32 %225, 0
  %227 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %117, i32 %118, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = lshr i32 %228, 18
  %230 = uitofp i32 %229 to float
  %231 = fmul fast float %230, 0x3F4C00EBA0000000
  %232 = call float @dx.op.unary.f32(i32 21, float %231)  ; Exp(value)
  %233 = fadd fast float %232, -1.000000e+00
  %234 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %235 = extractvalue %dx.types.Dimensions %234, 0
  %236 = sitofp i32 %235 to float
  %237 = extractvalue %dx.types.Dimensions %234, 1
  %238 = sitofp i32 %237 to float
  %239 = fcmp fast oge float %115, %236
  %240 = fcmp fast oge float %116, %238
  %241 = or i1 %239, %240
  %242 = select i1 %241, float 0x4197782600000000, float %233
  %243 = call float @dx.op.dot3.f32(i32 55, float %201, float %201, float %201, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %244 = fsub fast float 1.000000e+00, %243
  %245 = fmul fast float %226, %224
  %246 = fsub fast float 1.000000e+00, %224
  %247 = call float @dx.op.unary.f32(i32 7, float %246)  ; Saturate(value)
  %248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %249 = extractvalue %dx.types.CBufRet.f32 %248, 3
  %250 = fmul fast float %249, %247
  %251 = fadd fast float %250, %245
  %252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %253 = extractvalue %dx.types.CBufRet.f32 %252, 3
  %254 = icmp eq i32 %112, 3
  %255 = fcmp fast ogt float %26, %242
  %256 = and i1 %141, %255
  %257 = or i1 %254, %256
  %258 = icmp eq i32 %112, 2
  %259 = fcmp fast ole float %26, %242
  %260 = and i1 %258, %259
  %261 = or i1 %260, %257
  br i1 %256, label %262, label %401

; <label>:262                                     ; preds = %153
  %263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %264 = extractvalue %dx.types.CBufRet.f32 %263, 2
  %265 = extractvalue %dx.types.CBufRet.f32 %263, 3
  %266 = fmul fast float %264, %33
  %267 = fmul fast float %265, %34
  %268 = call float @dx.op.unary.f32(i32 7, float %266)  ; Saturate(value)
  %269 = call float @dx.op.unary.f32(i32 7, float %267)  ; Saturate(value)
  %270 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %17, float %268, float %269, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %271 = extractvalue %dx.types.ResRet.f32 %270, 0
  %272 = extractvalue %dx.types.ResRet.f32 %270, 1
  %273 = extractvalue %dx.types.ResRet.f32 %270, 2
  %274 = extractvalue %dx.types.ResRet.f32 %270, 3
  %275 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %17, float %268, float %269, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %276 = extractvalue %dx.types.ResRet.f32 %275, 0
  %277 = extractvalue %dx.types.ResRet.f32 %275, 1
  %278 = extractvalue %dx.types.ResRet.f32 %275, 2
  %279 = extractvalue %dx.types.ResRet.f32 %275, 3
  %280 = call float @dx.op.binary.f32(i32 35, float %272, float %273)  ; FMax(a,b)
  %281 = call float @dx.op.binary.f32(i32 35, float %271, float %280)  ; FMax(a,b)
  %282 = call float @dx.op.binary.f32(i32 35, float %281, float %274)  ; FMax(a,b)
  %283 = call float @dx.op.binary.f32(i32 36, float %277, float %278)  ; FMin(a,b)
  %284 = call float @dx.op.binary.f32(i32 36, float %276, float %283)  ; FMin(a,b)
  %285 = call float @dx.op.binary.f32(i32 36, float %284, float %279)  ; FMin(a,b)
  %286 = fmul fast float %282, 2.550000e+02
  %287 = fadd fast float %286, 0x3F70101020000000
  %288 = fptoui float %287 to i32
  %289 = fmul fast float %285, 2.550000e+02
  %290 = fadd fast float %289, 0x3F70101020000000
  %291 = fptoui float %290 to i32
  %292 = icmp ult i32 %288, %291
  br i1 %292, label %293, label %344

; <label>:293                                     ; preds = %262
  %294 = fcmp fast ogt float %25, 9.843750e-01
  %295 = fadd fast float %26, -4.000000e+00
  %296 = select i1 %294, float -4.000000e+00, float %295
  %297 = call float @dx.op.binary.f32(i32 35, float %296, float 0.000000e+00)  ; FMax(a,b)
  %298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %299 = extractvalue %dx.types.CBufRet.f32 %298, 0
  %300 = fadd fast float %299, %297
  %301 = extractvalue %dx.types.CBufRet.f32 %298, 2
  %302 = fmul fast float %300, %301
  %303 = call float @dx.op.unary.f32(i32 23, float %302)  ; Log(value)
  %304 = extractvalue %dx.types.CBufRet.f32 %298, 3
  %305 = fmul fast float %304, %303
  %306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %307 = extractvalue %dx.types.CBufRet.f32 %306, 2
  %308 = fmul fast float %305, %307
  %309 = call float @dx.op.unary.f32(i32 7, float %308)  ; Saturate(value)
  %310 = uitofp i32 %288 to float
  %311 = uitofp i32 %291 to float
  %312 = fadd fast float %310, 5.000000e-01
  %313 = fadd fast float %311, 5.000000e-01
  %314 = fmul fast float %307, %312
  %315 = fmul fast float %307, %313
  %316 = fadd fast float %314, 0x3F0FFB4800000000
  %317 = fadd fast float %315, 0xBF0FFB4800000000
  %318 = call float @dx.op.binary.f32(i32 35, float %309, float %316)  ; FMax(a,b)
  %319 = call float @dx.op.binary.f32(i32 36, float %318, float %317)  ; FMin(a,b)
  %320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %321 = extractvalue %dx.types.CBufRet.f32 %320, 1
  %322 = extractvalue %dx.types.CBufRet.f32 %320, 2
  %323 = extractvalue %dx.types.CBufRet.f32 %320, 0
  %324 = fmul fast float %321, %319
  %325 = fadd fast float %323, %324
  %326 = fadd fast float %323, %322
  %327 = fsub fast float %321, %322
  %328 = fadd fast float %327, %323
  %329 = call float @dx.op.binary.f32(i32 35, float %325, float %326)  ; FMax(a,b)
  %330 = call float @dx.op.binary.f32(i32 36, float %329, float %328)  ; FMin(a,b)
  %331 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %16, float %268, float %269, float %330, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %332 = extractvalue %dx.types.ResRet.f32 %331, 0
  %333 = extractvalue %dx.types.ResRet.f32 %331, 1
  %334 = extractvalue %dx.types.ResRet.f32 %331, 2
  %335 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %268, float %269, float %330, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %336 = extractvalue %dx.types.ResRet.f32 %335, 0
  %337 = extractvalue %dx.types.ResRet.f32 %335, 1
  %338 = extractvalue %dx.types.ResRet.f32 %335, 2
  %339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %340 = extractvalue %dx.types.CBufRet.f32 %339, 1
  %341 = fmul fast float %340, %336
  %342 = fmul fast float %340, %337
  %343 = fmul fast float %340, %338
  br label %344

; <label>:344                                     ; preds = %293, %262
  %345 = phi float [ %332, %293 ], [ 1.000000e+00, %262 ]
  %346 = phi float [ %333, %293 ], [ 1.000000e+00, %262 ]
  %347 = phi float [ %334, %293 ], [ 1.000000e+00, %262 ]
  %348 = phi float [ %341, %293 ], [ 0.000000e+00, %262 ]
  %349 = phi float [ %342, %293 ], [ 0.000000e+00, %262 ]
  %350 = phi float [ %343, %293 ], [ 0.000000e+00, %262 ]
  %351 = fmul fast float %348, %244
  %352 = fmul fast float %349, %244
  %353 = fmul fast float %350, %244
  %354 = call float @dx.op.dot3.f32(i32 55, float %345, float %346, float %347, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %355 = call float @dx.op.dot3.f32(i32 55, float %351, float %352, float %353, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %356 = select i1 %96, float %354, float %345
  %357 = select i1 %96, float %354, float %346
  %358 = select i1 %96, float 1.000000e+00, float %347
  %359 = select i1 %96, float %355, float %351
  %360 = select i1 %96, float 0.000000e+00, float %352
  %361 = select i1 %96, float 0.000000e+00, float %353
  %362 = fmul fast float %356, %206
  %363 = fmul fast float %357, %209
  %364 = fmul fast float %358, %212
  %365 = fadd fast float %362, %359
  %366 = fadd fast float %363, %360
  %367 = fadd fast float %361, %364
  %368 = fmul fast float %33, 2.000000e+00
  %369 = fmul fast float %368, %264
  %370 = fmul fast float %34, 2.000000e+00
  %371 = fmul fast float %370, %265
  %372 = fsub fast float 1.000000e+00, %369
  %373 = fsub fast float 1.000000e+00, %371
  %374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %375 = extractvalue %dx.types.CBufRet.f32 %374, 0
  %376 = extractvalue %dx.types.CBufRet.f32 %374, 1
  %377 = extractvalue %dx.types.CBufRet.f32 %374, 2
  %378 = fmul fast float %372, %375
  %379 = fmul fast float %372, %376
  %380 = fmul fast float %372, %377
  %381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %382 = extractvalue %dx.types.CBufRet.f32 %381, 0
  %383 = extractvalue %dx.types.CBufRet.f32 %381, 1
  %384 = extractvalue %dx.types.CBufRet.f32 %381, 2
  %385 = fmul fast float %373, %382
  %386 = fmul fast float %373, %383
  %387 = fmul fast float %373, %384
  %388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %389 = extractvalue %dx.types.CBufRet.f32 %388, 0
  %390 = extractvalue %dx.types.CBufRet.f32 %388, 1
  %391 = extractvalue %dx.types.CBufRet.f32 %388, 2
  %392 = fadd fast float %385, %389
  %393 = fadd fast float %392, %378
  %394 = fadd fast float %386, %390
  %395 = fadd fast float %394, %379
  %396 = fadd fast float %387, %391
  %397 = fadd fast float %396, %380
  %398 = fmul fast float %393, %242
  %399 = fmul fast float %395, %242
  %400 = fmul fast float %397, %242
  br label %401

; <label>:401                                     ; preds = %344, %153
  %402 = phi float [ %398, %344 ], [ %68, %153 ]
  %403 = phi float [ %399, %344 ], [ %69, %153 ]
  %404 = phi float [ %400, %344 ], [ %70, %153 ]
  %405 = phi float [ %242, %344 ], [ %26, %153 ]
  %406 = phi float [ %365, %344 ], [ %206, %153 ]
  %407 = phi float [ %366, %344 ], [ %209, %153 ]
  %408 = phi float [ %367, %344 ], [ %212, %153 ]
  %409 = phi float [ %345, %344 ], [ 1.000000e+00, %153 ]
  br i1 %261, label %1558, label %410

; <label>:410                                     ; preds = %401
  %411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %412 = extractvalue %dx.types.CBufRet.f32 %411, 0
  %413 = extractvalue %dx.types.CBufRet.f32 %411, 1
  %414 = extractvalue %dx.types.CBufRet.f32 %411, 2
  %415 = extractvalue %dx.types.CBufRet.f32 %411, 3
  %416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %417 = extractvalue %dx.types.CBufRet.f32 %416, 0
  %418 = extractvalue %dx.types.CBufRet.f32 %416, 1
  %419 = extractvalue %dx.types.CBufRet.f32 %416, 2
  %420 = extractvalue %dx.types.CBufRet.f32 %416, 3
  %421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %422 = extractvalue %dx.types.CBufRet.f32 %421, 0
  %423 = extractvalue %dx.types.CBufRet.f32 %421, 1
  %424 = extractvalue %dx.types.CBufRet.f32 %421, 2
  %425 = extractvalue %dx.types.CBufRet.f32 %421, 3
  %426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %427 = extractvalue %dx.types.CBufRet.f32 %426, 0
  %428 = extractvalue %dx.types.CBufRet.f32 %426, 1
  %429 = extractvalue %dx.types.CBufRet.f32 %426, 2
  %430 = extractvalue %dx.types.CBufRet.f32 %426, 3
  %431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %432 = extractvalue %dx.types.CBufRet.f32 %431, 3
  %433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %434 = extractvalue %dx.types.CBufRet.f32 %433, 3
  %435 = extractvalue %dx.types.CBufRet.f32 %433, 0
  %436 = extractvalue %dx.types.CBufRet.f32 %433, 1
  %437 = extractvalue %dx.types.CBufRet.f32 %433, 2
  %438 = fcmp fast olt float %437, -5.000000e-01
  %439 = call float @dx.op.dot3.f32(i32 55, float %402, float %403, float %404, float %402, float %403, float %404)  ; Dot3(ax,ay,az,bx,by,bz)
  %440 = call float @dx.op.unary.f32(i32 25, float %439)  ; Rsqrt(value)
  %441 = fmul fast float %440, %439
  %442 = fmul fast float %440, %402
  %443 = fmul fast float %440, %403
  %444 = fmul fast float %440, %404
  %445 = fadd fast float %441, %415
  %446 = call float @dx.op.dot3.f32(i32 55, float %442, float %443, float %444, float %412, float %413, float %414)  ; Dot3(ax,ay,az,bx,by,bz)
  %447 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %448 = extractvalue %dx.types.CBufRet.i32 %447, 1
  %449 = and i32 %448, 1
  %450 = icmp ne i32 %449, 0
  %451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %452 = extractvalue %dx.types.CBufRet.f32 %451, 2
  %453 = fcmp fast ogt float %452, 0.000000e+00
  %454 = and i1 %450, %453
  br i1 %454, label %455, label %861, !dx.controlflow.hints !50

; <label>:455                                     ; preds = %410
  %456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %457 = extractvalue %dx.types.CBufRet.f32 %456, 3
  %458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %459 = extractvalue %dx.types.CBufRet.f32 %458, 2
  %460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %461 = extractvalue %dx.types.CBufRet.f32 %460, 2
  %462 = fsub fast float %459, %461
  %463 = and i32 %448, 2
  %464 = extractvalue %dx.types.CBufRet.i32 %447, 0
  %465 = call i32 @dx.op.binary.i32(i32 40, i32 %464, i32 3)  ; UMin(a,b)
  %466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %467 = extractvalue %dx.types.CBufRet.f32 %466, 0
  %468 = extractvalue %dx.types.CBufRet.f32 %466, 1
  %469 = extractvalue %dx.types.CBufRet.f32 %460, 0
  %470 = extractvalue %dx.types.CBufRet.f32 %460, 1
  %471 = fsub fast float %467, %469
  %472 = fsub fast float %468, %470
  %473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %474 = extractvalue %dx.types.CBufRet.f32 %473, 0
  %475 = fcmp fast ogt float %474, 0.000000e+00
  %476 = fsub fast float -0.000000e+00, %471
  %477 = fsub fast float -0.000000e+00, %472
  %478 = call float @dx.op.dot2.f32(i32 54, float %442, float %443, float %442, float %443)  ; Dot2(ax,ay,bx,by)
  %479 = call float @dx.op.dot2.f32(i32 54, float %442, float %443, float %476, float %477)  ; Dot2(ax,ay,bx,by)
  %480 = fmul fast float %479, 2.000000e+00
  %481 = call float @dx.op.dot2.f32(i32 54, float %476, float %477, float %476, float %477)  ; Dot2(ax,ay,bx,by)
  %482 = fmul fast float %474, %474
  %483 = fsub fast float %481, %482
  %484 = fmul fast float %480, %480
  %485 = fmul fast float %478, 4.000000e+00
  %486 = fmul fast float %485, %483
  %487 = fsub fast float %484, %486
  %488 = fcmp fast ogt float %487, 0.000000e+00
  br i1 %488, label %489, label %504

; <label>:489                                     ; preds = %455
  %490 = fcmp fast ogt float %480, 0.000000e+00
  %491 = call float @dx.op.unary.f32(i32 24, float %487)  ; Sqrt(value)
  %492 = fsub fast float -0.000000e+00, %491
  %493 = select i1 %490, float %491, float %492
  %494 = fadd fast float %493, %480
  %495 = fmul float %494, -5.000000e-01
  %496 = fdiv fast float %495, %478
  %497 = call float @dx.op.binary.f32(i32 35, float %496, float 0.000000e+00)  ; FMax(a,b)
  %498 = call float @dx.op.binary.f32(i32 36, float %441, float %497)  ; FMin(a,b)
  %499 = fdiv fast float %483, %495
  %500 = call float @dx.op.binary.f32(i32 35, float %499, float 0.000000e+00)  ; FMax(a,b)
  %501 = call float @dx.op.binary.f32(i32 36, float %441, float %500)  ; FMin(a,b)
  %502 = call float @dx.op.binary.f32(i32 36, float %498, float %501)  ; FMin(a,b)
  %503 = call float @dx.op.binary.f32(i32 35, float %498, float %501)  ; FMax(a,b)
  br label %504

; <label>:504                                     ; preds = %489, %455
  %505 = phi float [ %503, %489 ], [ -1.000000e+00, %455 ]
  %506 = phi float [ %502, %489 ], [ -1.000000e+00, %455 ]
  %507 = phi i1 [ true, %489 ], [ false, %455 ]
  %508 = and i1 %475, %507
  br i1 %508, label %509, label %511

; <label>:509                                     ; preds = %504
  %510 = fcmp fast oeq float %506, %505
  br i1 %510, label %814, label %512

; <label>:511                                     ; preds = %504
  br i1 %475, label %814, label %512

; <label>:512                                     ; preds = %511, %509
  %513 = phi float [ %441, %511 ], [ %505, %509 ]
  %514 = phi float [ 0.000000e+00, %511 ], [ %506, %509 ]
  %515 = icmp ne i32 %463, 0
  %516 = fmul fast float %513, %444
  %517 = fadd fast float %516, %457
  %518 = fmul fast float %517, %513
  %519 = select i1 %515, float 0.000000e+00, float %518
  %520 = fcmp fast oeq float %444, 0.000000e+00
  %521 = fdiv fast float %462, %444
  %522 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %521)  ; FMax(a,b)
  %523 = select i1 %520, float %513, float %522
  %524 = call float @dx.op.binary.f32(i32 36, float %513, float %523)  ; FMin(a,b)
  %525 = fcmp fast ogt float %444, 0.000000e+00
  %526 = fcmp fast olt float %462, 0.000000e+00
  br i1 %525, label %527, label %584

; <label>:527                                     ; preds = %512
  %528 = icmp eq i32 %463, 0
  br i1 %526, label %529, label %573

; <label>:529                                     ; preds = %527
  %530 = select i1 %528, float %513, float 0.000000e+00
  %531 = fsub fast float -0.000000e+00, %530
  %532 = call float @dx.op.unary.f32(i32 6, float %531)  ; FAbs(value)
  %533 = fmul fast float %530, %444
  %534 = fadd fast float %533, %457
  %535 = fmul fast float %532, %534
  %536 = fsub fast float %519, %535
  %537 = fsub fast float %513, %532
  %538 = select i1 %528, float %537, float 0.000000e+00
  %539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %540 = extractvalue %dx.types.CBufRet.f32 %539, 0
  %541 = extractvalue %dx.types.CBufRet.f32 %539, 1
  %542 = extractvalue %dx.types.CBufRet.f32 %539, 2
  %543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %544 = extractvalue %dx.types.CBufRet.f32 %543, 0
  %545 = extractvalue %dx.types.CBufRet.f32 %543, 1
  %546 = extractvalue %dx.types.CBufRet.f32 %543, 2
  %547 = extractvalue %dx.types.CBufRet.f32 %543, 3
  %548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %549 = extractvalue %dx.types.CBufRet.f32 %548, 3
  %550 = call float @dx.op.binary.f32(i32 36, float %536, float %549)  ; FMin(a,b)
  %551 = fmul fast float %547, %538
  %552 = call float @dx.op.unary.f32(i32 7, float %551)  ; Saturate(value)
  %553 = fsub fast float %544, %540
  %554 = fsub fast float %545, %541
  %555 = fsub fast float %546, %542
  %556 = fmul fast float %552, %553
  %557 = fmul fast float %552, %554
  %558 = fmul fast float %552, %555
  %559 = fadd fast float %556, %540
  %560 = fadd fast float %557, %541
  %561 = fadd fast float %558, %542
  %562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %563 = extractvalue %dx.types.CBufRet.f32 %562, 0
  %564 = extractvalue %dx.types.CBufRet.f32 %562, 1
  %565 = fadd fast float %564, %563
  %566 = call float @dx.op.unary.f32(i32 7, float %565)  ; Saturate(value)
  %567 = extractvalue %dx.types.CBufRet.f32 %562, 2
  %568 = extractvalue %dx.types.CBufRet.f32 %562, 3
  %569 = fadd fast float %568, %567
  %570 = call float @dx.op.unary.f32(i32 7, float %569)  ; Saturate(value)
  %571 = fmul fast float %566, %550
  %572 = fmul fast float %571, %570
  br label %814

; <label>:573                                     ; preds = %527
  br i1 %528, label %574, label %595

; <label>:574                                     ; preds = %573
  %575 = call float @dx.op.binary.f32(i32 36, float %524, float %514)  ; FMin(a,b)
  %576 = fsub fast float %524, %575
  %577 = fsub fast float %576, %513
  %578 = call float @dx.op.unary.f32(i32 6, float %577)  ; FAbs(value)
  %579 = fadd fast float %576, %513
  %580 = fmul fast float %579, %444
  %581 = fadd fast float %580, %457
  %582 = fmul fast float %581, %578
  %583 = fsub fast float %519, %582
  br label %595

; <label>:584                                     ; preds = %512
  br i1 %526, label %585, label %595

; <label>:585                                     ; preds = %584
  %586 = call float @dx.op.binary.f32(i32 35, float %514, float %524)  ; FMax(a,b)
  %587 = icmp eq i32 %463, 0
  %588 = select i1 %587, float %524, float 0.000000e+00
  %589 = fsub fast float -0.000000e+00, %588
  %590 = call float @dx.op.unary.f32(i32 6, float %589)  ; FAbs(value)
  %591 = fmul fast float %588, %444
  %592 = fadd fast float %591, %457
  %593 = fmul fast float %590, %592
  %594 = fsub fast float %519, %593
  br label %595

; <label>:595                                     ; preds = %585, %584, %574, %573
  %596 = phi float [ %514, %573 ], [ %514, %574 ], [ %586, %585 ], [ %514, %584 ]
  %597 = phi float [ 0.000000e+00, %573 ], [ %578, %574 ], [ %590, %585 ], [ 0.000000e+00, %584 ]
  %598 = phi float [ %519, %573 ], [ %583, %574 ], [ %594, %585 ], [ %519, %584 ]
  %599 = phi float [ %524, %573 ], [ %524, %574 ], [ %513, %585 ], [ %513, %584 ]
  %600 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 0
  store float -1.000000e+00, float* %600, align 4, !tbaa !51, !noalias !55
  %601 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 1
  store float -1.000000e+00, float* %601, align 4, !tbaa !51, !noalias !55
  %602 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 2
  store float -1.000000e+00, float* %602, align 4, !tbaa !51, !noalias !55
  %603 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 0
  store float -1.000000e+00, float* %603, align 4, !tbaa !51, !noalias !55
  %604 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 1
  store float -1.000000e+00, float* %604, align 4, !tbaa !51, !noalias !55
  %605 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 2
  store float -1.000000e+00, float* %605, align 4, !tbaa !51, !noalias !55
  %606 = icmp sgt i32 %465, 0
  br i1 %606, label %607, label %668

; <label>:607                                     ; preds = %595
  br label %608

; <label>:608                                     ; preds = %657, %607
  %609 = phi i32 [ %658, %657 ], [ 0, %607 ]
  %610 = phi i32 [ %659, %657 ], [ 0, %607 ]
  %611 = add nuw i32 %610, 171
  %612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 %611)  ; CBufferLoadLegacy(handle,regIndex)
  %613 = extractvalue %dx.types.CBufRet.f32 %612, 0
  %614 = extractvalue %dx.types.CBufRet.f32 %612, 1
  %615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %616 = extractvalue %dx.types.CBufRet.f32 %615, 0
  %617 = extractvalue %dx.types.CBufRet.f32 %615, 1
  %618 = fsub fast float %613, %616
  %619 = fsub fast float %614, %617
  %620 = extractvalue %dx.types.CBufRet.f32 %612, 2
  %621 = fsub fast float -0.000000e+00, %618
  %622 = fsub fast float -0.000000e+00, %619
  %623 = call float @dx.op.dot2.f32(i32 54, float %442, float %443, float %621, float %622)  ; Dot2(ax,ay,bx,by)
  %624 = fmul fast float %623, 2.000000e+00
  %625 = call float @dx.op.dot2.f32(i32 54, float %621, float %622, float %621, float %622)  ; Dot2(ax,ay,bx,by)
  %626 = fmul fast float %620, %620
  %627 = fsub fast float %625, %626
  %628 = fmul fast float %624, %624
  %629 = fmul fast float %485, %627
  %630 = fsub fast float %628, %629
  %631 = fcmp fast ogt float %630, 0.000000e+00
  br i1 %631, label %632, label %647

; <label>:632                                     ; preds = %608
  %633 = fcmp fast ogt float %624, 0.000000e+00
  %634 = call float @dx.op.unary.f32(i32 24, float %630)  ; Sqrt(value)
  %635 = fsub fast float -0.000000e+00, %634
  %636 = select i1 %633, float %634, float %635
  %637 = fadd fast float %636, %624
  %638 = fmul float %637, -5.000000e-01
  %639 = fdiv fast float %638, %478
  %640 = call float @dx.op.binary.f32(i32 35, float %639, float 0.000000e+00)  ; FMax(a,b)
  %641 = call float @dx.op.binary.f32(i32 36, float %513, float %640)  ; FMin(a,b)
  %642 = fdiv fast float %627, %638
  %643 = call float @dx.op.binary.f32(i32 35, float %642, float 0.000000e+00)  ; FMax(a,b)
  %644 = call float @dx.op.binary.f32(i32 36, float %513, float %643)  ; FMin(a,b)
  %645 = call float @dx.op.binary.f32(i32 36, float %641, float %644)  ; FMin(a,b)
  %646 = call float @dx.op.binary.f32(i32 35, float %641, float %644)  ; FMax(a,b)
  br label %647

; <label>:647                                     ; preds = %632, %608
  %648 = phi float [ %646, %632 ], [ -1.000000e+00, %608 ]
  %649 = phi float [ %645, %632 ], [ -1.000000e+00, %608 ]
  %650 = phi i1 [ true, %632 ], [ false, %608 ]
  br i1 %650, label %651, label %657

; <label>:651                                     ; preds = %647
  %652 = call float @dx.op.binary.f32(i32 35, float %596, float %649)  ; FMax(a,b)
  %653 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %610
  store float %652, float* %653, align 4, !tbaa !51, !noalias !55
  %654 = call float @dx.op.binary.f32(i32 35, float %596, float %648)  ; FMax(a,b)
  %655 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %610
  store float %654, float* %655, align 4, !tbaa !51, !noalias !55
  %656 = add nsw i32 %609, 1
  br label %657

; <label>:657                                     ; preds = %651, %647
  %658 = phi i32 [ %656, %651 ], [ %609, %647 ]
  %659 = add nuw nsw i32 %610, 1
  %660 = icmp eq i32 %659, %465
  br i1 %660, label %661, label %608

; <label>:661                                     ; preds = %657
  %662 = load float, float* %602, align 4, !tbaa !51, !alias.scope !71, !noalias !74
  %663 = load float, float* %601, align 4, !tbaa !51, !alias.scope !77, !noalias !78
  %664 = load float, float* %600, align 4, !tbaa !51, !alias.scope !79, !noalias !80
  %665 = load float, float* %605, align 4, !tbaa !51, !alias.scope !81, !noalias !84
  %666 = load float, float* %604, align 4, !tbaa !51, !alias.scope !87, !noalias !88
  %667 = load float, float* %603, align 4, !tbaa !51, !alias.scope !89, !noalias !90
  br label %668

; <label>:668                                     ; preds = %661, %595
  %669 = phi float [ -1.000000e+00, %595 ], [ %667, %661 ]
  %670 = phi float [ -1.000000e+00, %595 ], [ %666, %661 ]
  %671 = phi float [ -1.000000e+00, %595 ], [ %665, %661 ]
  %672 = phi float [ -1.000000e+00, %595 ], [ %664, %661 ]
  %673 = phi float [ -1.000000e+00, %595 ], [ %663, %661 ]
  %674 = phi float [ -1.000000e+00, %595 ], [ %662, %661 ]
  %675 = phi i32 [ 0, %595 ], [ %658, %661 ]
  %676 = call float @dx.op.binary.f32(i32 36, float %673, float %674)  ; FMin(a,b)
  %677 = call float @dx.op.binary.f32(i32 36, float %672, float %676)  ; FMin(a,b)
  %678 = call float @dx.op.binary.f32(i32 35, float %672, float %673)  ; FMax(a,b)
  %679 = call float @dx.op.binary.f32(i32 36, float %678, float %674)  ; FMin(a,b)
  %680 = call float @dx.op.binary.f32(i32 36, float %672, float %673)  ; FMin(a,b)
  %681 = call float @dx.op.binary.f32(i32 35, float %680, float %679)  ; FMax(a,b)
  %682 = call float @dx.op.binary.f32(i32 35, float %673, float %674)  ; FMax(a,b)
  %683 = call float @dx.op.binary.f32(i32 35, float %672, float %682)  ; FMax(a,b)
  store float %677, float* %600, align 4, !tbaa !51, !alias.scope !79, !noalias !80
  store float %681, float* %601, align 4, !tbaa !51, !alias.scope !77, !noalias !78
  store float %683, float* %602, align 4, !tbaa !51, !alias.scope !71, !noalias !74
  %684 = call float @dx.op.binary.f32(i32 36, float %670, float %671)  ; FMin(a,b)
  %685 = call float @dx.op.binary.f32(i32 36, float %669, float %684)  ; FMin(a,b)
  %686 = call float @dx.op.binary.f32(i32 35, float %669, float %670)  ; FMax(a,b)
  %687 = call float @dx.op.binary.f32(i32 36, float %686, float %671)  ; FMin(a,b)
  %688 = call float @dx.op.binary.f32(i32 36, float %669, float %670)  ; FMin(a,b)
  %689 = call float @dx.op.binary.f32(i32 35, float %688, float %687)  ; FMax(a,b)
  %690 = call float @dx.op.binary.f32(i32 35, float %670, float %671)  ; FMax(a,b)
  %691 = call float @dx.op.binary.f32(i32 35, float %669, float %690)  ; FMax(a,b)
  store float %685, float* %603, align 4, !tbaa !51, !alias.scope !89, !noalias !90
  store float %689, float* %604, align 4, !tbaa !51, !alias.scope !87, !noalias !88
  store float %691, float* %605, align 4, !tbaa !51, !alias.scope !81, !noalias !84
  %692 = sub nsw i32 3, %675
  %693 = icmp sgt i32 %692, 2
  br i1 %693, label %694, label %732

; <label>:694                                     ; preds = %668
  %695 = icmp eq i32 %463, 0
  %696 = fsub fast float %513, %597
  %697 = select i1 %695, float %696, float %597
  %698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %699 = extractvalue %dx.types.CBufRet.f32 %698, 0
  %700 = extractvalue %dx.types.CBufRet.f32 %698, 1
  %701 = extractvalue %dx.types.CBufRet.f32 %698, 2
  %702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %703 = extractvalue %dx.types.CBufRet.f32 %702, 0
  %704 = extractvalue %dx.types.CBufRet.f32 %702, 1
  %705 = extractvalue %dx.types.CBufRet.f32 %702, 2
  %706 = extractvalue %dx.types.CBufRet.f32 %702, 3
  %707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %708 = extractvalue %dx.types.CBufRet.f32 %707, 3
  %709 = call float @dx.op.binary.f32(i32 36, float %598, float %708)  ; FMin(a,b)
  %710 = fmul fast float %706, %697
  %711 = call float @dx.op.unary.f32(i32 7, float %710)  ; Saturate(value)
  %712 = fsub fast float %703, %699
  %713 = fsub fast float %704, %700
  %714 = fsub fast float %705, %701
  %715 = fmul fast float %711, %712
  %716 = fmul fast float %711, %713
  %717 = fmul fast float %711, %714
  %718 = fadd fast float %715, %699
  %719 = fadd fast float %716, %700
  %720 = fadd fast float %717, %701
  %721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %722 = extractvalue %dx.types.CBufRet.f32 %721, 0
  %723 = extractvalue %dx.types.CBufRet.f32 %721, 1
  %724 = fadd fast float %723, %722
  %725 = call float @dx.op.unary.f32(i32 7, float %724)  ; Saturate(value)
  %726 = extractvalue %dx.types.CBufRet.f32 %721, 2
  %727 = extractvalue %dx.types.CBufRet.f32 %721, 3
  %728 = fadd fast float %727, %726
  %729 = call float @dx.op.unary.f32(i32 7, float %728)  ; Saturate(value)
  %730 = fmul fast float %725, %709
  %731 = fmul fast float %730, %729
  br label %814

; <label>:732                                     ; preds = %668
  %733 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %692
  %734 = load float, float* %733, align 4, !tbaa !51, !noalias !55
  %735 = fcmp fast olt float %734, %599
  %736 = icmp sgt i32 %675, 0
  %737 = and i1 %736, %735
  br i1 %737, label %738, label %775

; <label>:738                                     ; preds = %732
  br label %739

; <label>:739                                     ; preds = %768, %738
  %740 = phi float [ %769, %768 ], [ %597, %738 ]
  %741 = phi float [ %770, %768 ], [ %598, %738 ]
  %742 = phi float [ %750, %768 ], [ %734, %738 ]
  %743 = phi i32 [ %747, %768 ], [ %692, %738 ]
  %744 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %743
  %745 = load float, float* %744, align 4, !tbaa !51, !noalias !55
  %746 = icmp slt i32 %743, 2
  %747 = add nsw i32 %743, 1
  %748 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %747
  %749 = load float, float* %748, align 4, !tbaa !51, !noalias !55
  %750 = select i1 %746, float %749, float %513
  %751 = call float @dx.op.binary.f32(i32 36, float %750, float %745)  ; FMin(a,b)
  %752 = call float @dx.op.binary.f32(i32 36, float %599, float %751)  ; FMin(a,b)
  %753 = icmp eq i32 %463, 0
  %754 = fadd fast float %752, %742
  %755 = fmul fast float %754, %444
  %756 = fadd fast float %755, %457
  br i1 %753, label %762, label %757

; <label>:757                                     ; preds = %739
  %758 = fsub fast float %752, %742
  %759 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %758)  ; FMax(a,b)
  %760 = fmul fast float %759, %756
  %761 = fadd fast float %760, %741
  br label %768

; <label>:762                                     ; preds = %739
  %763 = fsub fast float %742, %752
  %764 = call float @dx.op.unary.f32(i32 6, float %763)  ; FAbs(value)
  %765 = fadd fast float %764, %740
  %766 = fmul fast float %764, %756
  %767 = fsub fast float %741, %766
  br label %768

; <label>:768                                     ; preds = %762, %757
  %769 = phi float [ %759, %757 ], [ %765, %762 ]
  %770 = phi float [ %761, %757 ], [ %767, %762 ]
  %771 = fcmp fast olt float %750, %599
  %772 = icmp slt i32 %747, 3
  %773 = and i1 %772, %771
  br i1 %773, label %739, label %774

; <label>:774                                     ; preds = %768
  br label %775

; <label>:775                                     ; preds = %774, %732
  %776 = phi float [ %597, %732 ], [ %769, %774 ]
  %777 = phi float [ %598, %732 ], [ %770, %774 ]
  %778 = fsub fast float %513, %776
  %779 = select i1 %515, float %776, float %778
  %780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %781 = extractvalue %dx.types.CBufRet.f32 %780, 0
  %782 = extractvalue %dx.types.CBufRet.f32 %780, 1
  %783 = extractvalue %dx.types.CBufRet.f32 %780, 2
  %784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %785 = extractvalue %dx.types.CBufRet.f32 %784, 0
  %786 = extractvalue %dx.types.CBufRet.f32 %784, 1
  %787 = extractvalue %dx.types.CBufRet.f32 %784, 2
  %788 = extractvalue %dx.types.CBufRet.f32 %784, 3
  %789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %790 = extractvalue %dx.types.CBufRet.f32 %789, 3
  %791 = call float @dx.op.binary.f32(i32 36, float %777, float %790)  ; FMin(a,b)
  %792 = fmul fast float %788, %779
  %793 = call float @dx.op.unary.f32(i32 7, float %792)  ; Saturate(value)
  %794 = fsub fast float %785, %781
  %795 = fsub fast float %786, %782
  %796 = fsub fast float %787, %783
  %797 = fmul fast float %793, %794
  %798 = fmul fast float %793, %795
  %799 = fmul fast float %793, %796
  %800 = fadd fast float %797, %781
  %801 = fadd fast float %798, %782
  %802 = fadd fast float %799, %783
  %803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %804 = extractvalue %dx.types.CBufRet.f32 %803, 0
  %805 = extractvalue %dx.types.CBufRet.f32 %803, 1
  %806 = fadd fast float %805, %804
  %807 = call float @dx.op.unary.f32(i32 7, float %806)  ; Saturate(value)
  %808 = extractvalue %dx.types.CBufRet.f32 %803, 2
  %809 = extractvalue %dx.types.CBufRet.f32 %803, 3
  %810 = fadd fast float %809, %808
  %811 = call float @dx.op.unary.f32(i32 7, float %810)  ; Saturate(value)
  %812 = fmul fast float %807, %791
  %813 = fmul fast float %812, %811
  br label %814

; <label>:814                                     ; preds = %775, %694, %529, %511, %509
  %815 = phi float [ %538, %529 ], [ %697, %694 ], [ %779, %775 ], [ 0.000000e+00, %509 ], [ 0.000000e+00, %511 ]
  %816 = phi float [ %572, %529 ], [ %731, %694 ], [ %813, %775 ], [ 0.000000e+00, %509 ], [ 0.000000e+00, %511 ]
  %817 = phi float [ %559, %529 ], [ %718, %694 ], [ %800, %775 ], [ 0.000000e+00, %509 ], [ 0.000000e+00, %511 ]
  %818 = phi float [ %560, %529 ], [ %719, %694 ], [ %801, %775 ], [ 0.000000e+00, %509 ], [ 0.000000e+00, %511 ]
  %819 = phi float [ %561, %529 ], [ %720, %694 ], [ %802, %775 ], [ 0.000000e+00, %509 ], [ 0.000000e+00, %511 ]
  %820 = fmul fast float %452, %816
  %821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %822 = extractvalue %dx.types.CBufRet.f32 %821, 2
  %823 = fsub fast float %459, %822
  %824 = fcmp fast olt float %820, -2.000000e+01
  %825 = call float @dx.op.unary.f32(i32 21, float %820)  ; Exp(value)
  %826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %827 = extractvalue %dx.types.CBufRet.f32 %826, 2
  %828 = extractvalue %dx.types.CBufRet.f32 %826, 3
  %829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %830 = extractvalue %dx.types.CBufRet.f32 %829, 2
  %831 = fmul fast float %828, %823
  %832 = call float @dx.op.unary.f32(i32 7, float %831)  ; Saturate(value)
  %833 = fsub fast float 1.000000e+00, %832
  %834 = fmul fast float %444, 5.000000e-01
  %835 = fadd fast float %834, 5.000000e-01
  %836 = call float @dx.op.unary.f32(i32 7, float %835)  ; Saturate(value)
  %837 = fsub fast float 1.000000e+00, %836
  %838 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %833)  ; FMax(a,b)
  %839 = fdiv fast float %837, %838
  %840 = fsub fast float %823, %404
  %841 = call float @dx.op.unary.f32(i32 6, float %840)  ; FAbs(value)
  %842 = fmul fast float %841, %827
  %843 = call float @dx.op.unary.f32(i32 7, float %839)  ; Saturate(value)
  %844 = fsub fast float 1.000000e+00, %842
  %845 = fmul fast float %844, %843
  %846 = fadd fast float %845, %842
  %847 = fmul fast float %830, %823
  %848 = call float @dx.op.unary.f32(i32 7, float %847)  ; Saturate(value)
  %849 = fsub fast float 1.000000e+00, %846
  %850 = fmul fast float %849, %848
  %851 = fadd fast float %850, %846
  %852 = call float @dx.op.unary.f32(i32 7, float %851)  ; Saturate(value)
  %853 = fadd fast float %825, -1.000000e+00
  %854 = select i1 %824, float -1.000000e+00, float %853
  %855 = fmul fast float %852, %854
  %856 = fadd fast float %855, 1.000000e+00
  %857 = fsub fast float -0.000000e+00, %855
  %858 = fmul fast float %817, %857
  %859 = fmul fast float %818, %857
  %860 = fmul fast float %819, %857
  br label %861

; <label>:861                                     ; preds = %814, %410
  %862 = phi float [ %815, %814 ], [ 0.000000e+00, %410 ]
  %863 = phi float [ %856, %814 ], [ 1.000000e+00, %410 ]
  %864 = phi float [ %858, %814 ], [ 0.000000e+00, %410 ]
  %865 = phi float [ %859, %814 ], [ 0.000000e+00, %410 ]
  %866 = phi float [ %860, %814 ], [ 0.000000e+00, %410 ]
  %867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %868 = extractvalue %dx.types.CBufRet.f32 %867, 1
  %869 = fsub fast float 1.000000e+00, %863
  %870 = fmul fast float %869, %445
  %871 = fmul fast float %870, %868
  %872 = fsub fast float %445, %871
  br i1 %438, label %873, label %902, !dx.controlflow.hints !91

; <label>:873                                     ; preds = %861
  %874 = fmul fast float %446, %435
  %875 = fadd fast float %874, %436
  %876 = call float @dx.op.unary.f32(i32 7, float %875)  ; Saturate(value)
  %877 = fmul fast float %417, %872
  %878 = fsub fast float -0.000000e+00, %877
  %879 = fmul fast float %418, %872
  %880 = fsub fast float -0.000000e+00, %879
  %881 = call float @dx.op.unary.f32(i32 21, float %878)  ; Exp(value)
  %882 = call float @dx.op.unary.f32(i32 21, float %880)  ; Exp(value)
  %883 = call float @dx.op.binary.f32(i32 35, float %425, float %881)  ; FMax(a,b)
  %884 = call float @dx.op.binary.f32(i32 35, float %425, float %882)  ; FMax(a,b)
  %885 = fsub fast float %884, %883
  %886 = fmul fast float %885, %876
  %887 = fadd fast float %886, %883
  %888 = call float @dx.op.unary.f32(i32 7, float %887)  ; Saturate(value)
  %889 = fsub fast float %422, %427
  %890 = fsub fast float %423, %428
  %891 = fsub fast float %424, %429
  %892 = fmul fast float %876, %889
  %893 = fmul fast float %876, %890
  %894 = fmul fast float %876, %891
  %895 = fadd fast float %892, %427
  %896 = fadd fast float %893, %428
  %897 = fadd fast float %894, %429
  %898 = fsub fast float 1.000000e+00, %888
  %899 = fmul fast float %898, %895
  %900 = fmul fast float %898, %896
  %901 = fmul fast float %898, %897
  br label %961

; <label>:902                                     ; preds = %861
  %903 = fmul fast float %872, %434
  %904 = call float @dx.op.unary.f32(i32 7, float %903)  ; Saturate(value)
  %905 = fsub fast float 2.000000e+00, %904
  %906 = fmul fast float %904, 9.921875e-01
  %907 = fmul fast float %906, %905
  %908 = fadd fast float %907, 3.906250e-03
  %909 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %908, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %910 = extractvalue %dx.types.ResRet.f32 %909, 0
  %911 = fsub fast float %904, %910
  %912 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %911)  ; FMax(a,b)
  %913 = fmul fast float %420, %404
  %914 = call float @dx.op.unary.f32(i32 6, float %913)  ; FAbs(value)
  %915 = fcmp fast ogt float %914, 0x3EB0C6F7A0000000
  br i1 %915, label %916, label %922, !dx.controlflow.hints !92

; <label>:916                                     ; preds = %902
  %917 = fmul fast float %913, 0xBFF7154760000000
  %918 = call float @dx.op.unary.f32(i32 21, float %917)  ; Exp(value)
  %919 = fsub fast float 1.000000e+00, %918
  %920 = fdiv fast float %919, %913
  %921 = fmul fast float %920, %430
  br label %922

; <label>:922                                     ; preds = %916, %902
  %923 = phi float [ %921, %916 ], [ %430, %902 ]
  %924 = fadd fast float %923, %432
  %925 = fmul fast float %924, %912
  %926 = fmul fast float %417, %925
  %927 = fsub fast float -0.000000e+00, %926
  %928 = fmul fast float %418, %925
  %929 = fsub fast float -0.000000e+00, %928
  %930 = fmul fast float %419, %925
  %931 = fsub fast float -0.000000e+00, %930
  %932 = call float @dx.op.unary.f32(i32 21, float %927)  ; Exp(value)
  %933 = call float @dx.op.unary.f32(i32 21, float %929)  ; Exp(value)
  %934 = call float @dx.op.unary.f32(i32 21, float %931)  ; Exp(value)
  %935 = fmul fast float %446, %446
  %936 = fadd fast float %935, 1.000000e+00
  %937 = fmul fast float %936, 0x3FAE8EC8A0000000
  %938 = fmul fast float %937, %427
  %939 = fmul fast float %937, %428
  %940 = fmul fast float %937, %429
  %941 = fmul fast float %446, %425
  %942 = fsub fast float 1.000000e+00, %941
  %943 = fmul fast float %425, %425
  %944 = fsub fast float 1.000000e+00, %943
  %945 = fmul fast float %944, 0x3FB45F3060000000
  %946 = fmul fast float %942, %942
  %947 = fdiv fast float 1.000000e+00, %946
  %948 = fmul fast float %945, %947
  %949 = fmul fast float %948, %422
  %950 = fmul fast float %948, %423
  %951 = fmul fast float %948, %424
  %952 = fadd fast float %949, %938
  %953 = fadd fast float %950, %939
  %954 = fadd fast float %951, %940
  %955 = fsub fast float 1.000000e+00, %932
  %956 = fsub fast float 1.000000e+00, %933
  %957 = fsub fast float 1.000000e+00, %934
  %958 = fmul fast float %952, %955
  %959 = fmul fast float %953, %956
  %960 = fmul fast float %954, %957
  br label %961

; <label>:961                                     ; preds = %922, %873
  %962 = phi float [ %899, %873 ], [ %958, %922 ]
  %963 = phi float [ %900, %873 ], [ %959, %922 ]
  %964 = phi float [ %901, %873 ], [ %960, %922 ]
  %965 = phi float [ %888, %873 ], [ %932, %922 ]
  %966 = phi float [ %888, %873 ], [ %933, %922 ]
  %967 = phi float [ %888, %873 ], [ %934, %922 ]
  br i1 %454, label %968, label %1166, !dx.controlflow.hints !93

; <label>:968                                     ; preds = %961
  %969 = extractvalue %dx.types.CBufRet.f32 %867, 0
  %970 = fmul fast float %969, %869
  %971 = fsub fast float %864, %962
  %972 = fsub fast float %865, %963
  %973 = fsub fast float %866, %964
  %974 = fmul fast float %970, %971
  %975 = fmul fast float %970, %972
  %976 = fmul fast float %970, %973
  %977 = fadd fast float %974, %962
  %978 = fadd fast float %975, %963
  %979 = fadd fast float %976, %964
  %980 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %965)  ; FMax(a,b)
  %981 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %966)  ; FMax(a,b)
  %982 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %967)  ; FMax(a,b)
  %983 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %863)  ; FMax(a,b)
  %984 = call float @dx.op.binary.f32(i32 35, float %862, float %872)  ; FMax(a,b)
  %985 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %984)  ; FMax(a,b)
  %986 = fdiv fast float %862, %985
  %987 = call float @dx.op.unary.f32(i32 7, float %986)  ; Saturate(value)
  %988 = fdiv fast float %872, %985
  %989 = call float @dx.op.unary.f32(i32 7, float %988)  ; Saturate(value)
  %990 = fcmp fast une float %983, 1.000000e+00
  br i1 %990, label %991, label %1004, !dx.controlflow.hints !94

; <label>:991                                     ; preds = %968
  %992 = call float @dx.op.unary.f32(i32 23, float %983)  ; Log(value)
  %993 = fmul fast float %992, 0x3FE62E4300000000
  %994 = fmul fast float %864, %993
  %995 = fsub fast float -0.000000e+00, %994
  %996 = fmul fast float %865, %993
  %997 = fsub fast float -0.000000e+00, %996
  %998 = fmul fast float %866, %993
  %999 = fsub fast float -0.000000e+00, %998
  %1000 = fsub fast float 1.000000e+00, %983
  %1001 = fdiv fast float %995, %1000
  %1002 = fdiv fast float %997, %1000
  %1003 = fdiv fast float %999, %1000
  br label %1004

; <label>:1004                                    ; preds = %991, %968
  %1005 = phi float [ %1001, %991 ], [ %864, %968 ]
  %1006 = phi float [ %1002, %991 ], [ %865, %968 ]
  %1007 = phi float [ %1003, %991 ], [ %866, %968 ]
  %1008 = phi float [ %993, %991 ], [ 0.000000e+00, %968 ]
  %1009 = fcmp fast une float %980, 1.000000e+00
  br i1 %1009, label %1010, label %1017, !dx.controlflow.hints !95

; <label>:1010                                    ; preds = %1004
  %1011 = call float @dx.op.unary.f32(i32 23, float %980)  ; Log(value)
  %1012 = fmul fast float %1011, 0x3FE62E4300000000
  %1013 = fmul fast float %977, %1012
  %1014 = fsub fast float -0.000000e+00, %1013
  %1015 = fsub fast float 1.000000e+00, %980
  %1016 = fdiv fast float %1014, %1015
  br label %1017

; <label>:1017                                    ; preds = %1010, %1004
  %1018 = phi float [ %1016, %1010 ], [ %977, %1004 ]
  %1019 = phi float [ %1012, %1010 ], [ 0.000000e+00, %1004 ]
  %1020 = fcmp fast une float %981, 1.000000e+00
  br i1 %1020, label %1021, label %1028, !dx.controlflow.hints !95

; <label>:1021                                    ; preds = %1017
  %1022 = call float @dx.op.unary.f32(i32 23, float %981)  ; Log(value)
  %1023 = fmul fast float %1022, 0x3FE62E4300000000
  %1024 = fmul fast float %978, %1023
  %1025 = fsub fast float -0.000000e+00, %1024
  %1026 = fsub fast float 1.000000e+00, %981
  %1027 = fdiv fast float %1025, %1026
  br label %1028

; <label>:1028                                    ; preds = %1021, %1017
  %1029 = phi float [ %1027, %1021 ], [ %978, %1017 ]
  %1030 = phi float [ %1023, %1021 ], [ 0.000000e+00, %1017 ]
  %1031 = fcmp fast une float %982, 1.000000e+00
  br i1 %1031, label %1032, label %1039, !dx.controlflow.hints !95

; <label>:1032                                    ; preds = %1028
  %1033 = call float @dx.op.unary.f32(i32 23, float %982)  ; Log(value)
  %1034 = fmul fast float %1033, 0x3FE62E4300000000
  %1035 = fmul fast float %979, %1034
  %1036 = fsub fast float -0.000000e+00, %1035
  %1037 = fsub fast float 1.000000e+00, %982
  %1038 = fdiv fast float %1036, %1037
  br label %1039

; <label>:1039                                    ; preds = %1032, %1028
  %1040 = phi float [ %1038, %1032 ], [ %979, %1028 ]
  %1041 = phi float [ %1034, %1032 ], [ 0.000000e+00, %1028 ]
  %1042 = fmul fast float %1005, %989
  %1043 = fmul fast float %1006, %989
  %1044 = fmul fast float %1007, %989
  %1045 = fmul fast float %1008, %989
  %1046 = fmul fast float %1018, %987
  %1047 = fmul fast float %1029, %987
  %1048 = fmul fast float %1040, %987
  %1049 = fmul fast float %1019, %987
  %1050 = fmul fast float %1030, %987
  %1051 = fmul fast float %1041, %987
  %1052 = fadd fast float %1046, %1042
  %1053 = fadd fast float %1047, %1043
  %1054 = fadd fast float %1048, %1044
  %1055 = fadd fast float %1049, %1045
  %1056 = fadd fast float %1050, %1045
  %1057 = fadd fast float %1051, %1045
  %1058 = fcmp fast une float %1055, 0.000000e+00
  br i1 %1058, label %1059, label %1066, !dx.controlflow.hints !96

; <label>:1059                                    ; preds = %1039
  %1060 = fmul fast float %1055, 0x3FF7154760000000
  %1061 = call float @dx.op.unary.f32(i32 21, float %1060)  ; Exp(value)
  %1062 = fsub fast float 1.000000e+00, %1061
  %1063 = fmul fast float %1052, %1062
  %1064 = fsub fast float -0.000000e+00, %1063
  %1065 = fdiv fast float %1064, %1055
  br label %1066

; <label>:1066                                    ; preds = %1059, %1039
  %1067 = phi float [ %1061, %1059 ], [ 1.000000e+00, %1039 ]
  %1068 = phi float [ %1065, %1059 ], [ %1052, %1039 ]
  %1069 = fcmp fast une float %1056, 0.000000e+00
  br i1 %1069, label %1070, label %1077, !dx.controlflow.hints !96

; <label>:1070                                    ; preds = %1066
  %1071 = fmul fast float %1056, 0x3FF7154760000000
  %1072 = call float @dx.op.unary.f32(i32 21, float %1071)  ; Exp(value)
  %1073 = fsub fast float 1.000000e+00, %1072
  %1074 = fmul fast float %1053, %1073
  %1075 = fsub fast float -0.000000e+00, %1074
  %1076 = fdiv fast float %1075, %1056
  br label %1077

; <label>:1077                                    ; preds = %1070, %1066
  %1078 = phi float [ %1072, %1070 ], [ 1.000000e+00, %1066 ]
  %1079 = phi float [ %1076, %1070 ], [ %1053, %1066 ]
  %1080 = fcmp fast une float %1057, 0.000000e+00
  br i1 %1080, label %1081, label %1088, !dx.controlflow.hints !96

; <label>:1081                                    ; preds = %1077
  %1082 = fmul fast float %1057, 0x3FF7154760000000
  %1083 = call float @dx.op.unary.f32(i32 21, float %1082)  ; Exp(value)
  %1084 = fsub fast float 1.000000e+00, %1083
  %1085 = fmul fast float %1054, %1084
  %1086 = fsub fast float -0.000000e+00, %1085
  %1087 = fdiv fast float %1086, %1057
  br label %1088

; <label>:1088                                    ; preds = %1081, %1077
  %1089 = phi float [ %1083, %1081 ], [ 1.000000e+00, %1077 ]
  %1090 = phi float [ %1087, %1081 ], [ %1054, %1077 ]
  %1091 = fcmp fast ogt float %987, %989
  br i1 %1091, label %1092, label %1112

; <label>:1092                                    ; preds = %1088
  %1093 = fsub fast float 1.000000e+00, %989
  %1094 = fmul fast float %1005, %1093
  %1095 = fmul fast float %1006, %1093
  %1096 = fmul fast float %1007, %1093
  %1097 = fmul fast float %1008, %1093
  %1098 = fcmp fast une float %1097, 0.000000e+00
  br i1 %1098, label %1099, label %1150, !dx.controlflow.hints !97

; <label>:1099                                    ; preds = %1092
  %1100 = fmul fast float %1097, 0x3FF7154760000000
  %1101 = call float @dx.op.unary.f32(i32 21, float %1100)  ; Exp(value)
  %1102 = fsub fast float 1.000000e+00, %1101
  %1103 = fmul fast float %1094, %1102
  %1104 = fsub fast float -0.000000e+00, %1103
  %1105 = fmul fast float %1095, %1102
  %1106 = fsub fast float -0.000000e+00, %1105
  %1107 = fmul fast float %1096, %1102
  %1108 = fsub fast float -0.000000e+00, %1107
  %1109 = fdiv fast float %1104, %1097
  %1110 = fdiv fast float %1106, %1097
  %1111 = fdiv fast float %1108, %1097
  br label %1150

; <label>:1112                                    ; preds = %1088
  %1113 = fsub fast float 1.000000e+00, %987
  %1114 = fmul fast float %1018, %1113
  %1115 = fmul fast float %1029, %1113
  %1116 = fmul fast float %1040, %1113
  %1117 = fmul fast float %1019, %1113
  %1118 = fmul fast float %1030, %1113
  %1119 = fmul fast float %1041, %1113
  %1120 = fcmp fast une float %1117, 0.000000e+00
  br i1 %1120, label %1121, label %1128, !dx.controlflow.hints !96

; <label>:1121                                    ; preds = %1112
  %1122 = fmul fast float %1117, 0x3FF7154760000000
  %1123 = call float @dx.op.unary.f32(i32 21, float %1122)  ; Exp(value)
  %1124 = fsub fast float 1.000000e+00, %1123
  %1125 = fmul fast float %1114, %1124
  %1126 = fsub fast float -0.000000e+00, %1125
  %1127 = fdiv fast float %1126, %1117
  br label %1128

; <label>:1128                                    ; preds = %1121, %1112
  %1129 = phi float [ %1127, %1121 ], [ %1114, %1112 ]
  %1130 = phi float [ %1123, %1121 ], [ 1.000000e+00, %1112 ]
  %1131 = fcmp fast une float %1118, 0.000000e+00
  br i1 %1131, label %1132, label %1139, !dx.controlflow.hints !96

; <label>:1132                                    ; preds = %1128
  %1133 = fmul fast float %1118, 0x3FF7154760000000
  %1134 = call float @dx.op.unary.f32(i32 21, float %1133)  ; Exp(value)
  %1135 = fsub fast float 1.000000e+00, %1134
  %1136 = fmul fast float %1115, %1135
  %1137 = fsub fast float -0.000000e+00, %1136
  %1138 = fdiv fast float %1137, %1118
  br label %1139

; <label>:1139                                    ; preds = %1132, %1128
  %1140 = phi float [ %1138, %1132 ], [ %1115, %1128 ]
  %1141 = phi float [ %1134, %1132 ], [ 1.000000e+00, %1128 ]
  %1142 = fcmp fast une float %1119, 0.000000e+00
  br i1 %1142, label %1143, label %1150, !dx.controlflow.hints !96

; <label>:1143                                    ; preds = %1139
  %1144 = fmul fast float %1119, 0x3FF7154760000000
  %1145 = call float @dx.op.unary.f32(i32 21, float %1144)  ; Exp(value)
  %1146 = fsub fast float 1.000000e+00, %1145
  %1147 = fmul fast float %1116, %1146
  %1148 = fsub fast float -0.000000e+00, %1147
  %1149 = fdiv fast float %1148, %1119
  br label %1150

; <label>:1150                                    ; preds = %1143, %1139, %1099, %1092
  %1151 = phi float [ %1149, %1143 ], [ %1111, %1099 ], [ %1096, %1092 ], [ %1116, %1139 ]
  %1152 = phi float [ %1140, %1143 ], [ %1110, %1099 ], [ %1095, %1092 ], [ %1140, %1139 ]
  %1153 = phi float [ %1129, %1143 ], [ %1109, %1099 ], [ %1094, %1092 ], [ %1129, %1139 ]
  %1154 = phi float [ %1145, %1143 ], [ %1101, %1099 ], [ 1.000000e+00, %1092 ], [ 1.000000e+00, %1139 ]
  %1155 = phi float [ %1141, %1143 ], [ %1101, %1099 ], [ 1.000000e+00, %1092 ], [ %1141, %1139 ]
  %1156 = phi float [ %1130, %1143 ], [ %1101, %1099 ], [ 1.000000e+00, %1092 ], [ %1130, %1139 ]
  %1157 = fmul fast float %1156, %1068
  %1158 = fmul fast float %1155, %1079
  %1159 = fmul fast float %1154, %1090
  %1160 = fadd fast float %1157, %1153
  %1161 = fadd fast float %1158, %1152
  %1162 = fadd fast float %1159, %1151
  %1163 = fmul fast float %1156, %1067
  %1164 = fmul fast float %1155, %1078
  %1165 = fmul fast float %1154, %1089
  br label %1166

; <label>:1166                                    ; preds = %1150, %961
  %1167 = phi float [ %1165, %1150 ], [ %967, %961 ]
  %1168 = phi float [ %1164, %1150 ], [ %966, %961 ]
  %1169 = phi float [ %1163, %1150 ], [ %965, %961 ]
  %1170 = phi float [ %1162, %1150 ], [ %964, %961 ]
  %1171 = phi float [ %1161, %1150 ], [ %963, %961 ]
  %1172 = phi float [ %1160, %1150 ], [ %962, %961 ]
  %1173 = fmul fast float %1172, %244
  %1174 = fmul fast float %1171, %244
  %1175 = fmul fast float %1170, %244
  %1176 = fmul fast float %1169, %409
  %1177 = call float @dx.op.dot3.f32(i32 55, float %1169, float %1168, float %1167, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1178 = call float @dx.op.dot3.f32(i32 55, float %1173, float %1174, float %1175, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1179 = select i1 %96, float %1177, float %1169
  %1180 = select i1 %96, float %1177, float %1168
  %1181 = select i1 %96, float 1.000000e+00, float %1167
  %1182 = select i1 %96, float %1178, float %1173
  %1183 = select i1 %96, float 0.000000e+00, float %1174
  %1184 = select i1 %96, float 0.000000e+00, float %1175
  %1185 = fmul fast float %1179, %406
  %1186 = fmul fast float %1180, %407
  %1187 = fmul fast float %1181, %408
  %1188 = fadd fast float %1185, %1182
  %1189 = fadd fast float %1186, %1183
  %1190 = fadd fast float %1184, %1187
  %1191 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1192 = extractvalue %dx.types.CBufRet.i32 %1191, 0
  %1193 = icmp eq i32 %1192, 0
  br i1 %1193, label %1558, label %1194, !dx.controlflow.hints !98

; <label>:1194                                    ; preds = %1166
  %1195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1196 = extractvalue %dx.types.CBufRet.f32 %1195, 2
  %1197 = extractvalue %dx.types.CBufRet.f32 %1195, 3
  %1198 = fmul fast float %1196, %33
  %1199 = fmul fast float %1197, %34
  %1200 = fmul fast float %1198, 2.000000e+00
  %1201 = fmul fast float %1199, 2.000000e+00
  %1202 = fsub fast float 1.000000e+00, %1200
  %1203 = fsub fast float 1.000000e+00, %1201
  %1204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1205 = extractvalue %dx.types.CBufRet.f32 %1204, 0
  %1206 = extractvalue %dx.types.CBufRet.f32 %1204, 1
  %1207 = extractvalue %dx.types.CBufRet.f32 %1204, 2
  %1208 = fmul fast float %1202, %1205
  %1209 = fmul fast float %1202, %1206
  %1210 = fmul fast float %1202, %1207
  %1211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1212 = extractvalue %dx.types.CBufRet.f32 %1211, 0
  %1213 = extractvalue %dx.types.CBufRet.f32 %1211, 1
  %1214 = extractvalue %dx.types.CBufRet.f32 %1211, 2
  %1215 = fmul fast float %1203, %1212
  %1216 = fmul fast float %1203, %1213
  %1217 = fmul fast float %1203, %1214
  %1218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1219 = extractvalue %dx.types.CBufRet.f32 %1218, 0
  %1220 = extractvalue %dx.types.CBufRet.f32 %1218, 1
  %1221 = extractvalue %dx.types.CBufRet.f32 %1218, 2
  %1222 = fadd fast float %1215, %1219
  %1223 = fadd fast float %1222, %1208
  %1224 = fadd fast float %1216, %1220
  %1225 = fadd fast float %1224, %1209
  %1226 = fadd fast float %1217, %1221
  %1227 = fadd fast float %1226, %1210
  %1228 = fmul fast float %1223, %405
  %1229 = fmul fast float %1225, %405
  %1230 = fmul fast float %1227, %405
  %1231 = fmul fast float %1228, %1228
  %1232 = fmul fast float %1229, %1229
  %1233 = fadd fast float %1231, %1232
  %1234 = fmul fast float %1230, %1230
  %1235 = fadd fast float %1233, %1234
  %1236 = call float @dx.op.unary.f32(i32 24, float %1235)  ; Sqrt(value)
  %1237 = extractvalue %dx.types.CBufRet.f32 %252, 0
  %1238 = fsub fast float %1236, %1237
  %1239 = extractvalue %dx.types.CBufRet.f32 %252, 2
  %1240 = fmul fast float %1238, %1239
  %1241 = call float @dx.op.unary.f32(i32 7, float %1240)  ; Saturate(value)
  %1242 = fadd fast float %1241, -5.000000e-01
  %1243 = fmul fast float %1242, 2.000000e+00
  %1244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1245 = extractvalue %dx.types.CBufRet.f32 %1244, 2
  %1246 = call float @dx.op.binary.f32(i32 36, float %1245, float %1243)  ; FMin(a,b)
  %1247 = fsub fast float -0.000000e+00, %1245
  %1248 = fcmp fast ogt float %1246, %1247
  br i1 %1248, label %1249, label %1558, !dx.controlflow.hints !99

; <label>:1249                                    ; preds = %1194
  %1250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %1251 = extractvalue %dx.types.CBufRet.f32 %1250, 3
  %1252 = fcmp fast ogt float %1251, 0.000000e+00
  br i1 %1252, label %1253, label %1328, !dx.controlflow.hints !100

; <label>:1253                                    ; preds = %1249
  %1254 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %12, i32 0)  ; GetDimensions(handle,mipLevel)
  %1255 = extractvalue %dx.types.Dimensions %1254, 0
  %1256 = sitofp i32 %1255 to float
  %1257 = extractvalue %dx.types.Dimensions %1254, 1
  %1258 = sitofp i32 %1257 to float
  %1259 = fmul fast float %1198, %1256
  %1260 = fmul fast float %1199, %1258
  %1261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1262 = extractvalue %dx.types.CBufRet.f32 %1261, 1
  %1263 = fsub fast float -0.000000e+00, %1262
  %1264 = fptoui float %1263 to i32
  %1265 = fptoui float %1259 to i32
  %1266 = fptoui float %1260 to i32
  %1267 = and i32 %1264, 31
  %1268 = lshr i32 %1265, %1267
  %1269 = lshr i32 %1266, %1267
  %1270 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %1264, i32 %1268, i32 %1269, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1271 = extractvalue %dx.types.ResRet.f32 %1270, 0
  %1272 = fcmp fast olt float %1271, -1.000000e+00
  %1273 = fcmp fast ogt float %1271, -1.000000e+00
  %1274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1275 = extractvalue %dx.types.CBufRet.f32 %1274, 1
  %1276 = select i1 %1273, float %1275, float 1.000000e+00
  %1277 = fadd fast float %1271, 1.000000e+00
  %1278 = fmul fast float %1276, %1277
  %1279 = call float @dx.op.unary.f32(i32 6, float %1278)  ; FAbs(value)
  %1280 = extractvalue %dx.types.CBufRet.f32 %1274, 3
  %1281 = fcmp fast oge float %1279, %1280
  %1282 = select i1 %1281, float 0x4197782600000000, float %1279
  %1283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %1284 = extractvalue %dx.types.CBufRet.f32 %1283, 0
  %1285 = extractvalue %dx.types.CBufRet.f32 %1283, 1
  %1286 = extractvalue %dx.types.CBufRet.f32 %1283, 2
  %1287 = select i1 %1272, float %1284, float %1205
  %1288 = select i1 %1272, float %1285, float %1206
  %1289 = select i1 %1272, float %1286, float %1207
  %1290 = fmul fast float %1287, %1202
  %1291 = fmul fast float %1288, %1202
  %1292 = fmul fast float %1289, %1202
  %1293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %1294 = extractvalue %dx.types.CBufRet.f32 %1293, 0
  %1295 = extractvalue %dx.types.CBufRet.f32 %1293, 1
  %1296 = extractvalue %dx.types.CBufRet.f32 %1293, 2
  %1297 = select i1 %1272, float %1294, float %1212
  %1298 = select i1 %1272, float %1295, float %1213
  %1299 = select i1 %1272, float %1296, float %1214
  %1300 = fmul fast float %1297, %1203
  %1301 = fmul fast float %1298, %1203
  %1302 = fmul fast float %1299, %1203
  %1303 = fadd fast float %1300, %1290
  %1304 = fadd fast float %1301, %1291
  %1305 = fadd fast float %1302, %1292
  %1306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %1307 = extractvalue %dx.types.CBufRet.f32 %1306, 0
  %1308 = extractvalue %dx.types.CBufRet.f32 %1306, 1
  %1309 = extractvalue %dx.types.CBufRet.f32 %1306, 2
  %1310 = select i1 %1272, float %1307, float %1219
  %1311 = select i1 %1272, float %1308, float %1220
  %1312 = select i1 %1272, float %1309, float %1221
  %1313 = fadd fast float %1303, %1310
  %1314 = fadd fast float %1304, %1311
  %1315 = fadd fast float %1305, %1312
  %1316 = fmul fast float %1313, %1282
  %1317 = fmul fast float %1314, %1282
  %1318 = fmul fast float %1315, %1282
  %1319 = fmul fast float %1316, %1316
  %1320 = fmul fast float %1317, %1317
  %1321 = fadd fast float %1319, %1320
  %1322 = fmul fast float %1318, %1318
  %1323 = fadd fast float %1321, %1322
  %1324 = call float @dx.op.unary.f32(i32 24, float %1323)  ; Sqrt(value)
  %1325 = fsub fast float %1324, %1237
  %1326 = fmul fast float %1325, %1239
  %1327 = call float @dx.op.unary.f32(i32 7, float %1326)  ; Saturate(value)
  br label %1328

; <label>:1328                                    ; preds = %1253, %1249
  %1329 = phi float [ %1327, %1253 ], [ 1.000000e+00, %1249 ]
  %1330 = fmul fast float %1246, 5.000000e-01
  %1331 = fadd fast float %1330, 5.000000e-01
  %1332 = call float @dx.op.unary.f32(i32 22, float %1331)  ; Frc(value)
  %1333 = call float @dx.op.unary.f32(i32 27, float %1332)  ; Round_ni(value)
  %1334 = call float @dx.op.unary.f32(i32 22, float %1332)  ; Frc(value)
  %1335 = fmul fast float %1334, 2.000000e+00
  %1336 = fadd fast float %1335, -1.000000e+00
  %1337 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %17, float %1198, float %1199, float %1333, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1338 = extractvalue %dx.types.ResRet.f32 %1337, 0
  %1339 = extractvalue %dx.types.ResRet.f32 %1337, 1
  %1340 = extractvalue %dx.types.ResRet.f32 %1337, 2
  %1341 = extractvalue %dx.types.ResRet.f32 %1337, 3
  %1342 = fadd fast float %1338, -5.000000e-01
  %1343 = fadd fast float %1340, -5.000000e-01
  %1344 = fmul fast float %1342, 0xBFD5555560000000
  %1345 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1343, float %1344)  ; FMad(a,b,c)
  %1346 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1339, float 0.000000e+00)  ; FMad(a,b,c)
  %1347 = fadd fast float %1346, %1341
  %1348 = fmul fast float %1342, -7.500000e-01
  %1349 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1343, float %1348)  ; FMad(a,b,c)
  %1350 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1339, float 0.000000e+00)  ; FMad(a,b,c)
  %1351 = fadd fast float %1350, %1341
  %1352 = call float @dx.op.binary.f32(i32 35, float %1345, float -1.000000e+00)  ; FMax(a,b)
  %1353 = call float @dx.op.binary.f32(i32 35, float %1347, float -1.000000e+00)  ; FMax(a,b)
  %1354 = call float @dx.op.binary.f32(i32 35, float %1349, float -1.000000e+00)  ; FMax(a,b)
  %1355 = call float @dx.op.binary.f32(i32 35, float %1351, float -1.000000e+00)  ; FMax(a,b)
  %1356 = call float @dx.op.binary.f32(i32 36, float %1352, float 1.000000e+00)  ; FMin(a,b)
  %1357 = call float @dx.op.binary.f32(i32 36, float %1353, float 1.000000e+00)  ; FMin(a,b)
  %1358 = call float @dx.op.binary.f32(i32 36, float %1354, float 1.000000e+00)  ; FMin(a,b)
  %1359 = call float @dx.op.binary.f32(i32 36, float %1355, float 1.000000e+00)  ; FMin(a,b)
  %1360 = fcmp fast olt float %1356, 0x3FEFFF8020000000
  br i1 %1360, label %1361, label %1476, !dx.controlflow.hints !101

; <label>:1361                                    ; preds = %1328
  %1362 = extractvalue %dx.types.CBufRet.f32 %1244, 3
  %1363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1364 = extractvalue %dx.types.CBufRet.f32 %1363, 0
  %1365 = extractvalue %dx.types.CBufRet.f32 %1363, 1
  %1366 = extractvalue %dx.types.CBufRet.f32 %1363, 2
  %1367 = extractvalue %dx.types.CBufRet.f32 %1363, 3
  %1368 = fsub fast float %1364, %1356
  %1369 = fsub fast float %1365, %1357
  %1370 = fsub fast float %1366, %1358
  %1371 = fsub fast float %1367, %1359
  %1372 = fmul fast float %1368, %1362
  %1373 = fmul fast float %1369, %1362
  %1374 = fmul fast float %1370, %1362
  %1375 = fmul fast float %1371, %1362
  %1376 = fadd fast float %1372, %1356
  %1377 = fadd fast float %1373, %1357
  %1378 = fsub fast float -0.000000e+00, %1377
  %1379 = fadd fast float %1374, %1358
  %1380 = fadd fast float %1375, %1359
  %1381 = fmul fast float %1376, %1376
  %1382 = fsub fast float %1377, %1381
  %1383 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1382)  ; FMax(a,b)
  %1384 = fdiv fast float 1.000000e+00, %1383
  %1385 = fmul fast float %1377, %1376
  %1386 = fsub fast float %1379, %1385
  %1387 = fsub fast float %1336, %1376
  %1388 = fmul fast float %1336, %1336
  %1389 = fsub fast float %1388, %1377
  %1390 = fmul fast float %1387, %1384
  %1391 = fmul fast float %1390, %1386
  %1392 = fsub fast float %1389, %1391
  %1393 = fmul fast float %1377, %1377
  %1394 = fsub fast float %1380, %1393
  %1395 = fmul fast float %1386, %1386
  %1396 = fmul fast float %1395, %1384
  %1397 = fsub fast float %1394, %1396
  %1398 = fdiv fast float %1392, %1397
  %1399 = fmul fast float %1386, %1398
  %1400 = fsub fast float %1387, %1399
  %1401 = fmul fast float %1400, %1384
  %1402 = fmul fast float %1401, %1376
  %1403 = fsub fast float 1.000000e+00, %1402
  %1404 = fmul fast float %1377, %1398
  %1405 = fsub fast float %1403, %1404
  %1406 = fmul fast float %1401, %1401
  %1407 = fmul fast float %1398, 4.000000e+00
  %1408 = fmul fast float %1407, %1405
  %1409 = fsub fast float %1406, %1408
  %1410 = call float @dx.op.unary.f32(i32 24, float %1409)  ; Sqrt(value)
  %1411 = fcmp fast oge float %1401, 0.000000e+00
  %1412 = fsub fast float -0.000000e+00, %1410
  %1413 = select i1 %1411, float %1412, float %1410
  %1414 = fsub fast float %1413, %1401
  %1415 = fdiv fast float %1414, %1398
  %1416 = fdiv fast float %1405, %1414
  %1417 = fmul fast float %1415, 5.000000e-01
  %1418 = fmul fast float %1416, 2.000000e+00
  %1419 = select i1 %1411, float %1417, float %1418
  %1420 = select i1 %1411, float %1418, float %1417
  %1421 = call float @dx.op.binary.f32(i32 35, float %1419, float %1420)  ; FMax(a,b)
  %1422 = call float @dx.op.binary.f32(i32 36, float %1419, float %1420)  ; FMin(a,b)
  %1423 = fcmp fast ogt float %1336, %1422
  br i1 %1423, label %1424, label %1434

; <label>:1424                                    ; preds = %1361
  %1425 = fsub fast float %1336, %1422
  %1426 = fsub fast float %1421, %1422
  %1427 = fmul fast float %1425, %1426
  %1428 = fmul fast float %1421, %1336
  %1429 = fadd fast float %1421, %1336
  %1430 = fmul fast float %1429, %1376
  %1431 = fadd fast float %1428, %1377
  %1432 = fsub fast float %1431, %1430
  %1433 = fdiv fast float %1432, %1427
  br label %1434

; <label>:1434                                    ; preds = %1424, %1361
  %1435 = phi float [ %1433, %1424 ], [ 0.000000e+00, %1361 ]
  %1436 = fcmp fast ogt float %1336, %1421
  %1437 = fsub fast float %1336, %1421
  br i1 %1436, label %1438, label %1448

; <label>:1438                                    ; preds = %1434
  %1439 = fsub fast float %1421, %1422
  %1440 = fmul fast float %1439, %1437
  %1441 = fmul fast float %1422, %1336
  %1442 = fadd fast float %1422, %1336
  %1443 = fmul fast float %1442, %1376
  %1444 = fsub fast float %1378, %1441
  %1445 = fadd fast float %1444, %1443
  %1446 = fdiv fast float %1445, %1440
  %1447 = fadd fast float %1446, %1435
  br label %1448

; <label>:1448                                    ; preds = %1438, %1434
  %1449 = phi float [ %1447, %1438 ], [ %1435, %1434 ]
  %1450 = fsub fast float %1336, %1422
  %1451 = fmul fast float %1450, %1437
  %1452 = fmul fast float %1422, %1421
  %1453 = fadd fast float %1422, %1421
  %1454 = fmul fast float %1453, %1376
  %1455 = fadd fast float %1452, %1377
  %1456 = fsub fast float %1455, %1454
  %1457 = fdiv fast float %1456, %1451
  %1458 = call float @dx.op.unary.f32(i32 7, float %1449)  ; Saturate(value)
  %1459 = fcmp fast oeq float %253, 0.000000e+00
  %1460 = extractvalue %dx.types.CBufRet.f32 %1244, 0
  %1461 = fcmp fast oeq float %1460, 0.000000e+00
  %1462 = or i1 %1459, %1461
  %1463 = fmul fast float %1460, 2.000000e+00
  %1464 = fadd fast float %1245, %1246
  %1465 = fdiv fast float %1464, %1463
  %1466 = call float @dx.op.unary.f32(i32 7, float %1465)  ; Saturate(value)
  %1467 = fmul fast float %1466, 2.000000e+00
  %1468 = fsub fast float 3.000000e+00, %1467
  %1469 = fmul fast float %1466, %1466
  %1470 = fmul fast float %1469, %1468
  %1471 = select i1 %1462, float 1.000000e+00, float %1470
  %1472 = fmul fast float %1457, %253
  %1473 = fadd fast float %1458, %1472
  %1474 = call float @dx.op.unary.f32(i32 7, float %1473)  ; Saturate(value)
  %1475 = fmul fast float %1471, %1474
  br label %1476

; <label>:1476                                    ; preds = %1448, %1328
  %1477 = phi float [ %1475, %1448 ], [ 0.000000e+00, %1328 ]
  %1478 = fsub fast float 1.000000e+00, %1477
  %1479 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %1198, float %1199, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1480 = extractvalue %dx.types.ResRet.f32 %1479, 0
  %1481 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1482 = extractvalue %dx.types.CBufRet.i32 %1481, 2
  %1483 = icmp eq i32 %1482, 0
  br i1 %1483, label %1489, label %1484

; <label>:1484                                    ; preds = %1476
  %1485 = call float @dx.op.unary.f32(i32 7, float %1477)  ; Saturate(value)
  %1486 = fadd fast float %1480, -1.000000e+00
  %1487 = fmul fast float %1485, %1486
  %1488 = fadd fast float %1487, 1.000000e+00
  br label %1489

; <label>:1489                                    ; preds = %1484, %1476
  %1490 = phi float [ %1488, %1484 ], [ %1478, %1476 ]
  br i1 %1252, label %1491, label %1509

; <label>:1491                                    ; preds = %1489
  %1492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1493 = extractvalue %dx.types.CBufRet.f32 %1492, 1
  %1494 = fsub fast float %1329, %1493
  %1495 = call float @dx.op.unary.f32(i32 7, float %1494)  ; Saturate(value)
  %1496 = fsub fast float %1329, %1251
  %1497 = call float @dx.op.unary.f32(i32 7, float %1496)  ; Saturate(value)
  %1498 = fsub fast float %1495, %1497
  %1499 = fsub fast float %1331, %1497
  %1500 = fdiv fast float %1499, %1498
  %1501 = call float @dx.op.unary.f32(i32 7, float %1500)  ; Saturate(value)
  %1502 = fmul fast float %1501, 2.000000e+00
  %1503 = fsub fast float 3.000000e+00, %1502
  %1504 = fsub fast float %1480, %1490
  %1505 = fmul fast float %1501, %1501
  %1506 = fmul fast float %1505, %1504
  %1507 = fmul fast float %1506, %1503
  %1508 = fadd fast float %1507, %1490
  br label %1509

; <label>:1509                                    ; preds = %1491, %1489
  %1510 = phi float [ %1508, %1491 ], [ %1490, %1489 ]
  %1511 = call float @dx.op.binary.f32(i32 35, float %1480, float %1510)  ; FMax(a,b)
  %1512 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1513 = extractvalue %dx.types.CBufRet.i32 %1512, 2
  %1514 = and i32 %1513, 1
  %1515 = icmp eq i32 %1514, 0
  %1516 = fcmp fast une float %1511, 1.000000e+00
  %1517 = and i1 %1516, %1515
  br i1 %1517, label %1518, label %1537

; <label>:1518                                    ; preds = %1509
  %1519 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %17, float %1198, float %1199, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1520 = extractvalue %dx.types.ResRet.f32 %1519, 0
  %1521 = extractvalue %dx.types.ResRet.f32 %1519, 1
  %1522 = extractvalue %dx.types.ResRet.f32 %1519, 2
  %1523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1524 = extractvalue %dx.types.CBufRet.f32 %1523, 1
  %1525 = fmul fast float %1524, %1520
  %1526 = fmul fast float %1524, %1521
  %1527 = fmul fast float %1524, %1522
  %1528 = fcmp fast ogt float %1480, 0x3FEFFF2E40000000
  %1529 = fsub fast float 1.000000e+00, %1511
  %1530 = fsub fast float 1.000000e+00, %1480
  %1531 = fdiv fast float %1529, %1530
  %1532 = call float @dx.op.unary.f32(i32 7, float %1531)  ; Saturate(value)
  %1533 = select i1 %1528, float 0.000000e+00, float %1532
  %1534 = fmul fast float %1525, %1533
  %1535 = fmul fast float %1526, %1533
  %1536 = fmul fast float %1527, %1533
  br label %1537

; <label>:1537                                    ; preds = %1518, %1509
  %1538 = phi float [ 0.000000e+00, %1509 ], [ %1534, %1518 ]
  %1539 = phi float [ 0.000000e+00, %1509 ], [ %1535, %1518 ]
  %1540 = phi float [ 0.000000e+00, %1509 ], [ %1536, %1518 ]
  %1541 = fmul fast float %1538, %244
  %1542 = fmul fast float %1539, %244
  %1543 = fmul fast float %1540, %244
  %1544 = fmul fast float %1511, %1176
  %1545 = call float @dx.op.dot3.f32(i32 55, float %1511, float %1511, float %1511, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1546 = call float @dx.op.dot3.f32(i32 55, float %1541, float %1542, float %1543, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1547 = select i1 %96, float %1545, float %1511
  %1548 = select i1 %96, float 1.000000e+00, float %1511
  %1549 = select i1 %96, float %1546, float %1541
  %1550 = select i1 %96, float 0.000000e+00, float %1542
  %1551 = select i1 %96, float 0.000000e+00, float %1543
  %1552 = fmul fast float %1547, %1188
  %1553 = fmul fast float %1547, %1189
  %1554 = fmul fast float %1548, %1190
  %1555 = fadd fast float %1552, %1549
  %1556 = fadd fast float %1553, %1550
  %1557 = fadd fast float %1551, %1554
  br label %1558

; <label>:1558                                    ; preds = %1537, %1194, %1166, %401
  %1559 = phi float [ %406, %401 ], [ %1188, %1166 ], [ %1555, %1537 ], [ %1188, %1194 ]
  %1560 = phi float [ %407, %401 ], [ %1189, %1166 ], [ %1556, %1537 ], [ %1189, %1194 ]
  %1561 = phi float [ %408, %401 ], [ %1190, %1166 ], [ %1557, %1537 ], [ %1190, %1194 ]
  %1562 = phi float [ %409, %401 ], [ %1176, %1166 ], [ %1544, %1537 ], [ %1176, %1194 ]
  %1563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1564 = extractvalue %dx.types.CBufRet.f32 %1563, 2
  %1565 = extractvalue %dx.types.CBufRet.f32 %1563, 3
  %1566 = fmul fast float %1564, %33
  %1567 = fmul fast float %1565, %34
  %1568 = call float @dx.op.unary.f32(i32 7, float %1566)  ; Saturate(value)
  %1569 = call float @dx.op.unary.f32(i32 7, float %1567)  ; Saturate(value)
  %1570 = select i1 %261, i32 2, i32 0
  %1571 = or i32 %1570, 1
  %1572 = uitofp i32 %1571 to float
  %1573 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %17, float %1568, float %1569, float %1572, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1574 = extractvalue %dx.types.ResRet.f32 %1573, 0
  %1575 = extractvalue %dx.types.ResRet.f32 %1573, 1
  %1576 = extractvalue %dx.types.ResRet.f32 %1573, 2
  %1577 = extractvalue %dx.types.ResRet.f32 %1573, 3
  %1578 = add nuw nsw i32 %1570, 2
  %1579 = uitofp i32 %1578 to float
  %1580 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %17, float %1568, float %1569, float %1579, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1581 = extractvalue %dx.types.ResRet.f32 %1580, 0
  %1582 = extractvalue %dx.types.ResRet.f32 %1580, 1
  %1583 = extractvalue %dx.types.ResRet.f32 %1580, 2
  %1584 = extractvalue %dx.types.ResRet.f32 %1580, 3
  %1585 = call float @dx.op.binary.f32(i32 35, float %1575, float %1576)  ; FMax(a,b)
  %1586 = call float @dx.op.binary.f32(i32 35, float %1574, float %1585)  ; FMax(a,b)
  %1587 = call float @dx.op.binary.f32(i32 35, float %1586, float %1577)  ; FMax(a,b)
  %1588 = call float @dx.op.binary.f32(i32 36, float %1582, float %1583)  ; FMin(a,b)
  %1589 = call float @dx.op.binary.f32(i32 36, float %1581, float %1588)  ; FMin(a,b)
  %1590 = call float @dx.op.binary.f32(i32 36, float %1589, float %1584)  ; FMin(a,b)
  %1591 = fmul fast float %1587, 2.550000e+02
  %1592 = fadd fast float %1591, 0x3F70101020000000
  %1593 = fptoui float %1592 to i32
  %1594 = fmul fast float %1590, 2.550000e+02
  %1595 = fadd fast float %1594, 0x3F70101020000000
  %1596 = fptoui float %1595 to i32
  %1597 = icmp ult i32 %1593, %1596
  br i1 %1597, label %1598, label %1650

; <label>:1598                                    ; preds = %1558
  %1599 = fcmp fast ogt float %25, 9.843750e-01
  %1600 = fadd fast float %405, -4.000000e+00
  %1601 = select i1 %1599, float -4.000000e+00, float %1600
  %1602 = call float @dx.op.binary.f32(i32 35, float %1601, float 0.000000e+00)  ; FMax(a,b)
  %1603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1604 = extractvalue %dx.types.CBufRet.f32 %1603, 0
  %1605 = fadd fast float %1604, %1602
  %1606 = extractvalue %dx.types.CBufRet.f32 %1603, 2
  %1607 = fmul fast float %1605, %1606
  %1608 = call float @dx.op.unary.f32(i32 23, float %1607)  ; Log(value)
  %1609 = extractvalue %dx.types.CBufRet.f32 %1603, 3
  %1610 = fmul fast float %1609, %1608
  %1611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1612 = extractvalue %dx.types.CBufRet.f32 %1611, 2
  %1613 = fmul fast float %1610, %1612
  %1614 = call float @dx.op.unary.f32(i32 7, float %1613)  ; Saturate(value)
  %1615 = uitofp i32 %1593 to float
  %1616 = uitofp i32 %1596 to float
  %1617 = fadd fast float %1615, 5.000000e-01
  %1618 = fadd fast float %1616, 5.000000e-01
  %1619 = fmul fast float %1612, %1617
  %1620 = fmul fast float %1612, %1618
  %1621 = fadd fast float %1619, 0x3F0FFB4800000000
  %1622 = fadd fast float %1620, 0xBF0FFB4800000000
  %1623 = call float @dx.op.binary.f32(i32 35, float %1614, float %1621)  ; FMax(a,b)
  %1624 = call float @dx.op.binary.f32(i32 36, float %1623, float %1622)  ; FMin(a,b)
  %1625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1626 = extractvalue %dx.types.CBufRet.f32 %1625, 1
  %1627 = extractvalue %dx.types.CBufRet.f32 %1625, 2
  %1628 = extractvalue %dx.types.CBufRet.f32 %1625, 0
  %1629 = select i1 %261, float %1628, float 0.000000e+00
  %1630 = fmul fast float %1626, %1624
  %1631 = fadd fast float %1629, %1630
  %1632 = fadd fast float %1629, %1627
  %1633 = fsub fast float %1626, %1627
  %1634 = fadd fast float %1633, %1629
  %1635 = call float @dx.op.binary.f32(i32 35, float %1631, float %1632)  ; FMax(a,b)
  %1636 = call float @dx.op.binary.f32(i32 36, float %1635, float %1634)  ; FMin(a,b)
  %1637 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %16, float %1568, float %1569, float %1636, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1638 = extractvalue %dx.types.ResRet.f32 %1637, 0
  %1639 = extractvalue %dx.types.ResRet.f32 %1637, 1
  %1640 = extractvalue %dx.types.ResRet.f32 %1637, 2
  %1641 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1568, float %1569, float %1636, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1642 = extractvalue %dx.types.ResRet.f32 %1641, 0
  %1643 = extractvalue %dx.types.ResRet.f32 %1641, 1
  %1644 = extractvalue %dx.types.ResRet.f32 %1641, 2
  %1645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1646 = extractvalue %dx.types.CBufRet.f32 %1645, 1
  %1647 = fmul fast float %1646, %1642
  %1648 = fmul fast float %1646, %1643
  %1649 = fmul fast float %1646, %1644
  br label %1650

; <label>:1650                                    ; preds = %1598, %1558
  %1651 = phi float [ %1638, %1598 ], [ 1.000000e+00, %1558 ]
  %1652 = phi float [ %1639, %1598 ], [ 1.000000e+00, %1558 ]
  %1653 = phi float [ %1640, %1598 ], [ 1.000000e+00, %1558 ]
  %1654 = phi float [ %1647, %1598 ], [ 0.000000e+00, %1558 ]
  %1655 = phi float [ %1648, %1598 ], [ 0.000000e+00, %1558 ]
  %1656 = phi float [ %1649, %1598 ], [ 0.000000e+00, %1558 ]
  %1657 = fmul fast float %1654, %244
  %1658 = fmul fast float %1655, %244
  %1659 = fmul fast float %1656, %244
  %1660 = fmul fast float %1651, %1562
  %1661 = call float @dx.op.dot3.f32(i32 55, float %1651, float %1652, float %1653, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1662 = call float @dx.op.dot3.f32(i32 55, float %1657, float %1658, float %1659, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1663 = select i1 %96, float %1661, float %1651
  %1664 = select i1 %96, float %1661, float %1652
  %1665 = select i1 %96, float 1.000000e+00, float %1653
  %1666 = select i1 %96, float %1662, float %1657
  %1667 = select i1 %96, float 0.000000e+00, float %1658
  %1668 = select i1 %96, float 0.000000e+00, float %1659
  %1669 = fmul fast float %1663, %1559
  %1670 = fmul fast float %1664, %1560
  %1671 = fmul fast float %1665, %1561
  %1672 = fadd fast float %1669, %1666
  %1673 = fadd fast float %1670, %1667
  %1674 = fadd fast float %1668, %1671
  %1675 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1676 = extractvalue %dx.types.CBufRet.i32 %1675, 3
  %1677 = and i32 %1676, 3
  %1678 = icmp ne i32 %1677, 0
  %1679 = and i32 %1676, 4
  %1680 = icmp ne i32 %1679, 0
  %1681 = and i1 %1678, %1680
  %1682 = and i1 %96, %1681
  br i1 %1682, label %1683, label %1689

; <label>:1683                                    ; preds = %1650
  %1684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1685 = extractvalue %dx.types.CBufRet.f32 %1684, 1
  %1686 = fadd fast float %1660, -1.000000e+00
  %1687 = fmul fast float %1685, %1686
  %1688 = fadd fast float %1687, 1.000000e+00
  br label %1689

; <label>:1689                                    ; preds = %1683, %1650
  %1690 = phi float [ %1688, %1683 ], [ %1660, %1650 ]
  %1691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1692 = extractvalue %dx.types.CBufRet.f32 %1691, 0
  br i1 %96, label %1693, label %1714

; <label>:1693                                    ; preds = %1689
  %1694 = fadd fast float %1672, %1673
  %1695 = fmul fast float %1692, %1694
  %1696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1697 = extractvalue %dx.types.CBufRet.f32 %1696, 3
  %1698 = extractvalue %dx.types.CBufRet.f32 %248, 1
  %1699 = fsub fast float %251, %1698
  %1700 = extractvalue %dx.types.CBufRet.f32 %248, 2
  %1701 = fmul fast float %1699, %1700
  %1702 = call float @dx.op.unary.f32(i32 7, float %1701)  ; Saturate(value)
  %1703 = fsub fast float %1702, %1697
  %1704 = fmul fast float %1703, %1690
  %1705 = fadd fast float %1704, %1697
  %1706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1707 = extractvalue %dx.types.CBufRet.f32 %1706, 0
  %1708 = fsub fast float %1705, %1707
  %1709 = fmul fast float %1708, 1.000000e+01
  %1710 = call float @dx.op.unary.f32(i32 7, float %1709)  ; Saturate(value)
  %1711 = fmul fast float %1710, %244
  %1712 = fsub fast float %244, %1711
  %1713 = fmul fast float %1712, %1705
  br label %1723

; <label>:1714                                    ; preds = %1689
  %1715 = fmul fast float %1692, %1672
  %1716 = fmul fast float %1692, %1673
  %1717 = fmul fast float %1692, %1674
  %1718 = call float @dx.op.binary.f32(i32 35, float %1716, float %1717)  ; FMax(a,b)
  %1719 = call float @dx.op.binary.f32(i32 35, float %1715, float %1718)  ; FMax(a,b)
  %1720 = call float @dx.op.binary.f32(i32 35, float %1719, float %244)  ; FMax(a,b)
  %1721 = fcmp fast ugt float %1720, 0x3F10000000000000
  br i1 %1721, label %1723, label %1722

; <label>:1722                                    ; preds = %1714
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1723

; <label>:1723                                    ; preds = %1722, %1714, %1693
  %1724 = phi float [ %1695, %1693 ], [ %1715, %1722 ], [ %1715, %1714 ]
  %1725 = phi float [ %1713, %1693 ], [ %1716, %1722 ], [ %1716, %1714 ]
  %1726 = phi float [ %1712, %1693 ], [ %1717, %1722 ], [ %1717, %1714 ]
  %1727 = phi float [ %1712, %1693 ], [ %244, %1722 ], [ %244, %1714 ]
  %1728 = fadd fast float %167, 0x3FE3C6EF40000000
  %1729 = call float @dx.op.unary.f32(i32 22, float %1728)  ; Frc(value)
  %1730 = call float @dx.op.unary.f32(i32 23, float %1724)  ; Log(value)
  %1731 = fadd fast float %1730, -7.000000e+00
  %1732 = call float @dx.op.unary.f32(i32 21, float %1731)  ; Exp(value)
  %1733 = fmul fast float %1729, 2.000000e+00
  %1734 = fadd fast float %1733, -1.000000e+00
  %1735 = fmul fast float %1732, %1734
  %1736 = fcmp fast ogt float %1724, 0.000000e+00
  %1737 = select i1 %1736, float %1735, float 0.000000e+00
  %1738 = fadd fast float %1737, %1724
  %1739 = fadd fast float %167, 0x3FF3C6EF40000000
  %1740 = call float @dx.op.unary.f32(i32 22, float %1739)  ; Frc(value)
  %1741 = call float @dx.op.unary.f32(i32 23, float %1725)  ; Log(value)
  %1742 = fadd fast float %1741, -7.000000e+00
  %1743 = call float @dx.op.unary.f32(i32 21, float %1742)  ; Exp(value)
  %1744 = fmul fast float %1740, 2.000000e+00
  %1745 = fadd fast float %1744, -1.000000e+00
  %1746 = fmul fast float %1743, %1745
  %1747 = fcmp fast ogt float %1725, 0.000000e+00
  %1748 = select i1 %1747, float %1746, float 0.000000e+00
  %1749 = fadd fast float %1748, %1725
  %1750 = fadd fast float %167, 0x3FFDAA66E0000000
  %1751 = call float @dx.op.unary.f32(i32 22, float %1750)  ; Frc(value)
  %1752 = call float @dx.op.unary.f32(i32 23, float %1726)  ; Log(value)
  %1753 = fadd fast float %1752, -6.000000e+00
  %1754 = call float @dx.op.unary.f32(i32 21, float %1753)  ; Exp(value)
  %1755 = fmul fast float %1751, 2.000000e+00
  %1756 = fadd fast float %1755, -1.000000e+00
  %1757 = fmul fast float %1754, %1756
  %1758 = fcmp fast ogt float %1726, 0.000000e+00
  %1759 = select i1 %1758, float %1757, float 0.000000e+00
  %1760 = fadd fast float %1759, %1726
  %1761 = select i1 %96, float %1725, float %1749
  %1762 = select i1 %96, float %1726, float %1760
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1763 = call float @dx.op.binary.f32(i32 36, float %1738, float 3.225500e+04)  ; FMin(a,b)
  %1764 = call float @dx.op.binary.f32(i32 36, float %1761, float 3.225500e+04)  ; FMin(a,b)
  %1765 = call float @dx.op.binary.f32(i32 36, float %1762, float 3.225500e+04)  ; FMin(a,b)
  %1766 = call float @dx.op.binary.f32(i32 36, float %1727, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1763)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1764)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1765)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1766)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1727)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1727)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1727)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1727)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

