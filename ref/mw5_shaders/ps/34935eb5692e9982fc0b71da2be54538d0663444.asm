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
; shader hash: a411d3b8bf78bfea29390ef4551b5e66
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
  %115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 80, i32 undef)  ; BufferLoad(srv,index,wot)
  %116 = extractvalue %dx.types.ResRet.i32 %115, 0
  %117 = add i32 %116, 0
  %118 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %117, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %121 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %118, %dx.types.Handle %30, float %21, float %22, float undef, float undef, i32 0, i32 0, i32 undef, float %120, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %122 = extractvalue %dx.types.ResRet.f32 %121, 0
  %123 = fcmp fast ogt float %122, 0.000000e+00
  br i1 %123, label %125, label %124

; <label>:124                                     ; preds = %95
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %125

; <label>:125                                     ; preds = %124, %95
  %126 = call float @dx.op.unary.f32(i32 7, float %122)  ; Saturate(value)
  %127 = fmul fast float %33, 5.000000e-01
  %128 = fmul fast float %34, 5.000000e-01
  %129 = fptosi float %127 to i32
  %130 = fptosi float %128 to i32
  %131 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %129, i32 %130, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %132 = extractvalue %dx.types.ResRet.i32 %131, 0
  %133 = lshr i32 %132, 18
  %134 = uitofp i32 %133 to float
  %135 = fmul fast float %134, 0x3F4C00EBA0000000
  %136 = call float @dx.op.unary.f32(i32 21, float %135)  ; Exp(value)
  %137 = fadd fast float %136, -1.000000e+00
  %138 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %139 = extractvalue %dx.types.Dimensions %138, 0
  %140 = sitofp i32 %139 to float
  %141 = extractvalue %dx.types.Dimensions %138, 1
  %142 = sitofp i32 %141 to float
  %143 = fcmp fast oge float %127, %140
  %144 = fcmp fast oge float %128, %142
  %145 = or i1 %143, %144
  %146 = select i1 %145, float 0x4197782600000000, float %137
  %147 = fsub fast float %146, %26
  %148 = fcmp fast ogt float %147, 0.000000e+00
  %149 = and i32 %112, -2
  %150 = icmp eq i32 %149, 2
  %151 = and i1 %150, %148
  %152 = xor i1 %148, true
  %153 = icmp eq i32 %112, 1
  %154 = and i1 %153, %152
  %155 = or i1 %151, %154
  %156 = and i32 %114, 262144
  %157 = icmp ne i32 %156, 0
  %158 = and i1 %157, %155
  %159 = xor i1 %155, true
  %160 = and i32 %114, 131072
  %161 = icmp ne i32 %160, 0
  %162 = and i1 %161, %159
  %163 = or i1 %158, %162
  br i1 %163, label %164, label %165

; <label>:164                                     ; preds = %125
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %165

; <label>:165                                     ; preds = %164, %125
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 2
  %168 = fptosi float %26 to i32
  %169 = sitofp i32 %168 to float
  %170 = fadd fast float %167, %169
  %171 = fmul fast float %170, 0x3FE3C6EF40000000
  %172 = frem fast float %33, 2.560000e+02
  %173 = frem fast float %34, 2.560000e+02
  %174 = fptoui float %172 to i32
  %175 = fptoui float %173 to i32
  %176 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %174, i32 %175, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %177 = extractvalue %dx.types.ResRet.f32 %176, 0
  %178 = fadd fast float %177, %171
  %179 = call float @dx.op.unary.f32(i32 22, float %178)  ; Frc(value)
  %180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %181 = extractvalue %dx.types.ResRet.i32 %180, 0
  %182 = add i32 %181, 0
  %183 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %182, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %185 = extractvalue %dx.types.ResRet.i32 %184, 0
  %186 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %183, %dx.types.Handle %29, float %21, float %22, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %187 = extractvalue %dx.types.ResRet.f32 %186, 0
  %188 = extractvalue %dx.types.ResRet.f32 %186, 1
  %189 = extractvalue %dx.types.ResRet.f32 %186, 2
  %190 = extractvalue %dx.types.ResRet.f32 %186, 3
  %191 = and i32 %185, 255
  %192 = uitofp i32 %191 to float
  %193 = lshr i32 %185, 8
  %194 = and i32 %193, 255
  %195 = uitofp i32 %194 to float
  %196 = fmul fast float %190, %192
  %197 = fadd fast float %196, %195
  %198 = fmul fast float %197, 0x3F70101000000000
  %199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %200 = extractvalue %dx.types.ResRet.i32 %199, 0
  %201 = and i32 %200, 255
  %202 = uitofp i32 %201 to float
  %203 = fmul fast float %202, 0x3F70101020000000
  %204 = lshr i32 %200, 8
  %205 = and i32 %204, 255
  %206 = uitofp i32 %205 to float
  %207 = fmul fast float %206, 0x3F70101020000000
  %208 = lshr i32 %200, 16
  %209 = and i32 %208, 255
  %210 = uitofp i32 %209 to float
  %211 = fmul fast float %210, 0x3F70101020000000
  %212 = fadd fast float %198, 0xBFB99999A0000000
  %213 = call float @dx.op.unary.f32(i32 7, float %212)  ; Saturate(value)
  %214 = fmul fast float %213, 0x3FF1C71C80000000
  %215 = fsub fast float 1.000000e+00, %214
  %216 = call float @dx.op.unary.f32(i32 7, float %215)  ; Saturate(value)
  %217 = fmul fast float %216, %187
  %218 = fmul fast float %203, %203
  %219 = fmul fast float %218, %217
  %220 = fmul fast float %216, %188
  %221 = fmul fast float %207, %207
  %222 = fmul fast float %221, %220
  %223 = fmul fast float %216, %189
  %224 = fmul fast float %211, %211
  %225 = fmul fast float %224, %223
  %226 = call float @dx.op.unary.f32(i32 7, float %219)  ; Saturate(value)
  %227 = call float @dx.op.unary.f32(i32 7, float %222)  ; Saturate(value)
  %228 = call float @dx.op.unary.f32(i32 7, float %225)  ; Saturate(value)
  %229 = call float @dx.op.dot3.f32(i32 55, float %226, float %227, float %228, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.i32 %230, 0
  %232 = and i32 %231, 255
  %233 = uitofp i32 %232 to float
  %234 = lshr i32 %231, 8
  %235 = and i32 %234, 255
  %236 = uitofp i32 %235 to float
  %237 = fmul fast float %236, %229
  %238 = fadd fast float %237, %233
  %239 = fmul fast float %238, 0x3F70101020000000
  %240 = call float @dx.op.unary.f32(i32 7, float %239)  ; Saturate(value)
  %241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %242 = extractvalue %dx.types.CBufRet.f32 %241, 0
  %243 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %129, i32 %130, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %244 = extractvalue %dx.types.ResRet.i32 %243, 0
  %245 = lshr i32 %244, 18
  %246 = uitofp i32 %245 to float
  %247 = fmul fast float %246, 0x3F4C00EBA0000000
  %248 = call float @dx.op.unary.f32(i32 21, float %247)  ; Exp(value)
  %249 = fadd fast float %248, -1.000000e+00
  %250 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %251 = extractvalue %dx.types.Dimensions %250, 0
  %252 = sitofp i32 %251 to float
  %253 = extractvalue %dx.types.Dimensions %250, 1
  %254 = sitofp i32 %253 to float
  %255 = fcmp fast oge float %127, %252
  %256 = fcmp fast oge float %128, %254
  %257 = or i1 %255, %256
  %258 = select i1 %257, float 0x4197782600000000, float %249
  %259 = fsub fast float 1.000000e+00, %126
  %260 = call float @dx.op.dot3.f32(i32 55, float %259, float %259, float %259, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %261 = fsub fast float 1.000000e+00, %260
  %262 = fmul fast float %242, %240
  %263 = fsub fast float 1.000000e+00, %240
  %264 = call float @dx.op.unary.f32(i32 7, float %263)  ; Saturate(value)
  %265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %266 = extractvalue %dx.types.CBufRet.f32 %265, 3
  %267 = fmul fast float %266, %264
  %268 = fadd fast float %267, %262
  %269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %270 = extractvalue %dx.types.CBufRet.f32 %269, 3
  %271 = fmul fast float %226, %126
  %272 = fmul fast float %227, %126
  %273 = fmul fast float %228, %126
  %274 = icmp eq i32 %112, 3
  %275 = fcmp fast ogt float %26, %258
  %276 = and i1 %153, %275
  %277 = or i1 %274, %276
  %278 = icmp eq i32 %112, 2
  %279 = fcmp fast ole float %26, %258
  %280 = and i1 %278, %279
  %281 = or i1 %280, %277
  br i1 %276, label %282, label %421

; <label>:282                                     ; preds = %165
  %283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %284 = extractvalue %dx.types.CBufRet.f32 %283, 2
  %285 = extractvalue %dx.types.CBufRet.f32 %283, 3
  %286 = fmul fast float %284, %33
  %287 = fmul fast float %285, %34
  %288 = call float @dx.op.unary.f32(i32 7, float %286)  ; Saturate(value)
  %289 = call float @dx.op.unary.f32(i32 7, float %287)  ; Saturate(value)
  %290 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %17, float %288, float %289, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %291 = extractvalue %dx.types.ResRet.f32 %290, 0
  %292 = extractvalue %dx.types.ResRet.f32 %290, 1
  %293 = extractvalue %dx.types.ResRet.f32 %290, 2
  %294 = extractvalue %dx.types.ResRet.f32 %290, 3
  %295 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %17, float %288, float %289, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %296 = extractvalue %dx.types.ResRet.f32 %295, 0
  %297 = extractvalue %dx.types.ResRet.f32 %295, 1
  %298 = extractvalue %dx.types.ResRet.f32 %295, 2
  %299 = extractvalue %dx.types.ResRet.f32 %295, 3
  %300 = call float @dx.op.binary.f32(i32 35, float %292, float %293)  ; FMax(a,b)
  %301 = call float @dx.op.binary.f32(i32 35, float %291, float %300)  ; FMax(a,b)
  %302 = call float @dx.op.binary.f32(i32 35, float %301, float %294)  ; FMax(a,b)
  %303 = call float @dx.op.binary.f32(i32 36, float %297, float %298)  ; FMin(a,b)
  %304 = call float @dx.op.binary.f32(i32 36, float %296, float %303)  ; FMin(a,b)
  %305 = call float @dx.op.binary.f32(i32 36, float %304, float %299)  ; FMin(a,b)
  %306 = fmul fast float %302, 2.550000e+02
  %307 = fadd fast float %306, 0x3F70101020000000
  %308 = fptoui float %307 to i32
  %309 = fmul fast float %305, 2.550000e+02
  %310 = fadd fast float %309, 0x3F70101020000000
  %311 = fptoui float %310 to i32
  %312 = icmp ult i32 %308, %311
  br i1 %312, label %313, label %364

; <label>:313                                     ; preds = %282
  %314 = fcmp fast ogt float %25, 9.843750e-01
  %315 = fadd fast float %26, -4.000000e+00
  %316 = select i1 %314, float -4.000000e+00, float %315
  %317 = call float @dx.op.binary.f32(i32 35, float %316, float 0.000000e+00)  ; FMax(a,b)
  %318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %319 = extractvalue %dx.types.CBufRet.f32 %318, 0
  %320 = fadd fast float %319, %317
  %321 = extractvalue %dx.types.CBufRet.f32 %318, 2
  %322 = fmul fast float %320, %321
  %323 = call float @dx.op.unary.f32(i32 23, float %322)  ; Log(value)
  %324 = extractvalue %dx.types.CBufRet.f32 %318, 3
  %325 = fmul fast float %324, %323
  %326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %327 = extractvalue %dx.types.CBufRet.f32 %326, 2
  %328 = fmul fast float %325, %327
  %329 = call float @dx.op.unary.f32(i32 7, float %328)  ; Saturate(value)
  %330 = uitofp i32 %308 to float
  %331 = uitofp i32 %311 to float
  %332 = fadd fast float %330, 5.000000e-01
  %333 = fadd fast float %331, 5.000000e-01
  %334 = fmul fast float %327, %332
  %335 = fmul fast float %327, %333
  %336 = fadd fast float %334, 0x3F0FFB4800000000
  %337 = fadd fast float %335, 0xBF0FFB4800000000
  %338 = call float @dx.op.binary.f32(i32 35, float %329, float %336)  ; FMax(a,b)
  %339 = call float @dx.op.binary.f32(i32 36, float %338, float %337)  ; FMin(a,b)
  %340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %341 = extractvalue %dx.types.CBufRet.f32 %340, 1
  %342 = extractvalue %dx.types.CBufRet.f32 %340, 2
  %343 = extractvalue %dx.types.CBufRet.f32 %340, 0
  %344 = fmul fast float %341, %339
  %345 = fadd fast float %343, %344
  %346 = fadd fast float %343, %342
  %347 = fsub fast float %341, %342
  %348 = fadd fast float %347, %343
  %349 = call float @dx.op.binary.f32(i32 35, float %345, float %346)  ; FMax(a,b)
  %350 = call float @dx.op.binary.f32(i32 36, float %349, float %348)  ; FMin(a,b)
  %351 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %16, float %288, float %289, float %350, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %352 = extractvalue %dx.types.ResRet.f32 %351, 0
  %353 = extractvalue %dx.types.ResRet.f32 %351, 1
  %354 = extractvalue %dx.types.ResRet.f32 %351, 2
  %355 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %288, float %289, float %350, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %356 = extractvalue %dx.types.ResRet.f32 %355, 0
  %357 = extractvalue %dx.types.ResRet.f32 %355, 1
  %358 = extractvalue %dx.types.ResRet.f32 %355, 2
  %359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %360 = extractvalue %dx.types.CBufRet.f32 %359, 1
  %361 = fmul fast float %360, %356
  %362 = fmul fast float %360, %357
  %363 = fmul fast float %360, %358
  br label %364

; <label>:364                                     ; preds = %313, %282
  %365 = phi float [ %352, %313 ], [ 1.000000e+00, %282 ]
  %366 = phi float [ %353, %313 ], [ 1.000000e+00, %282 ]
  %367 = phi float [ %354, %313 ], [ 1.000000e+00, %282 ]
  %368 = phi float [ %361, %313 ], [ 0.000000e+00, %282 ]
  %369 = phi float [ %362, %313 ], [ 0.000000e+00, %282 ]
  %370 = phi float [ %363, %313 ], [ 0.000000e+00, %282 ]
  %371 = fmul fast float %368, %261
  %372 = fmul fast float %369, %261
  %373 = fmul fast float %370, %261
  %374 = call float @dx.op.dot3.f32(i32 55, float %365, float %366, float %367, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %375 = call float @dx.op.dot3.f32(i32 55, float %371, float %372, float %373, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %376 = select i1 %96, float %374, float %365
  %377 = select i1 %96, float %374, float %366
  %378 = select i1 %96, float 1.000000e+00, float %367
  %379 = select i1 %96, float %375, float %371
  %380 = select i1 %96, float 0.000000e+00, float %372
  %381 = select i1 %96, float 0.000000e+00, float %373
  %382 = fmul fast float %376, %271
  %383 = fmul fast float %377, %272
  %384 = fmul fast float %378, %273
  %385 = fadd fast float %382, %379
  %386 = fadd fast float %383, %380
  %387 = fadd fast float %381, %384
  %388 = fmul fast float %33, 2.000000e+00
  %389 = fmul fast float %388, %284
  %390 = fmul fast float %34, 2.000000e+00
  %391 = fmul fast float %390, %285
  %392 = fsub fast float 1.000000e+00, %389
  %393 = fsub fast float 1.000000e+00, %391
  %394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %395 = extractvalue %dx.types.CBufRet.f32 %394, 0
  %396 = extractvalue %dx.types.CBufRet.f32 %394, 1
  %397 = extractvalue %dx.types.CBufRet.f32 %394, 2
  %398 = fmul fast float %392, %395
  %399 = fmul fast float %392, %396
  %400 = fmul fast float %392, %397
  %401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %402 = extractvalue %dx.types.CBufRet.f32 %401, 0
  %403 = extractvalue %dx.types.CBufRet.f32 %401, 1
  %404 = extractvalue %dx.types.CBufRet.f32 %401, 2
  %405 = fmul fast float %393, %402
  %406 = fmul fast float %393, %403
  %407 = fmul fast float %393, %404
  %408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %409 = extractvalue %dx.types.CBufRet.f32 %408, 0
  %410 = extractvalue %dx.types.CBufRet.f32 %408, 1
  %411 = extractvalue %dx.types.CBufRet.f32 %408, 2
  %412 = fadd fast float %405, %409
  %413 = fadd fast float %412, %398
  %414 = fadd fast float %406, %410
  %415 = fadd fast float %414, %399
  %416 = fadd fast float %407, %411
  %417 = fadd fast float %416, %400
  %418 = fmul fast float %413, %258
  %419 = fmul fast float %415, %258
  %420 = fmul fast float %417, %258
  br label %421

; <label>:421                                     ; preds = %364, %165
  %422 = phi float [ %418, %364 ], [ %68, %165 ]
  %423 = phi float [ %419, %364 ], [ %69, %165 ]
  %424 = phi float [ %420, %364 ], [ %70, %165 ]
  %425 = phi float [ %258, %364 ], [ %26, %165 ]
  %426 = phi float [ %385, %364 ], [ %271, %165 ]
  %427 = phi float [ %386, %364 ], [ %272, %165 ]
  %428 = phi float [ %387, %364 ], [ %273, %165 ]
  %429 = phi float [ %365, %364 ], [ 1.000000e+00, %165 ]
  br i1 %281, label %1578, label %430

; <label>:430                                     ; preds = %421
  %431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %432 = extractvalue %dx.types.CBufRet.f32 %431, 0
  %433 = extractvalue %dx.types.CBufRet.f32 %431, 1
  %434 = extractvalue %dx.types.CBufRet.f32 %431, 2
  %435 = extractvalue %dx.types.CBufRet.f32 %431, 3
  %436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %437 = extractvalue %dx.types.CBufRet.f32 %436, 0
  %438 = extractvalue %dx.types.CBufRet.f32 %436, 1
  %439 = extractvalue %dx.types.CBufRet.f32 %436, 2
  %440 = extractvalue %dx.types.CBufRet.f32 %436, 3
  %441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %442 = extractvalue %dx.types.CBufRet.f32 %441, 0
  %443 = extractvalue %dx.types.CBufRet.f32 %441, 1
  %444 = extractvalue %dx.types.CBufRet.f32 %441, 2
  %445 = extractvalue %dx.types.CBufRet.f32 %441, 3
  %446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %447 = extractvalue %dx.types.CBufRet.f32 %446, 0
  %448 = extractvalue %dx.types.CBufRet.f32 %446, 1
  %449 = extractvalue %dx.types.CBufRet.f32 %446, 2
  %450 = extractvalue %dx.types.CBufRet.f32 %446, 3
  %451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %452 = extractvalue %dx.types.CBufRet.f32 %451, 3
  %453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %454 = extractvalue %dx.types.CBufRet.f32 %453, 3
  %455 = extractvalue %dx.types.CBufRet.f32 %453, 0
  %456 = extractvalue %dx.types.CBufRet.f32 %453, 1
  %457 = extractvalue %dx.types.CBufRet.f32 %453, 2
  %458 = fcmp fast olt float %457, -5.000000e-01
  %459 = call float @dx.op.dot3.f32(i32 55, float %422, float %423, float %424, float %422, float %423, float %424)  ; Dot3(ax,ay,az,bx,by,bz)
  %460 = call float @dx.op.unary.f32(i32 25, float %459)  ; Rsqrt(value)
  %461 = fmul fast float %460, %459
  %462 = fmul fast float %460, %422
  %463 = fmul fast float %460, %423
  %464 = fmul fast float %460, %424
  %465 = fadd fast float %461, %435
  %466 = call float @dx.op.dot3.f32(i32 55, float %462, float %463, float %464, float %432, float %433, float %434)  ; Dot3(ax,ay,az,bx,by,bz)
  %467 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %468 = extractvalue %dx.types.CBufRet.i32 %467, 1
  %469 = and i32 %468, 1
  %470 = icmp ne i32 %469, 0
  %471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %472 = extractvalue %dx.types.CBufRet.f32 %471, 2
  %473 = fcmp fast ogt float %472, 0.000000e+00
  %474 = and i1 %470, %473
  br i1 %474, label %475, label %881, !dx.controlflow.hints !50

; <label>:475                                     ; preds = %430
  %476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %477 = extractvalue %dx.types.CBufRet.f32 %476, 3
  %478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %479 = extractvalue %dx.types.CBufRet.f32 %478, 2
  %480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %481 = extractvalue %dx.types.CBufRet.f32 %480, 2
  %482 = fsub fast float %479, %481
  %483 = and i32 %468, 2
  %484 = extractvalue %dx.types.CBufRet.i32 %467, 0
  %485 = call i32 @dx.op.binary.i32(i32 40, i32 %484, i32 3)  ; UMin(a,b)
  %486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %487 = extractvalue %dx.types.CBufRet.f32 %486, 0
  %488 = extractvalue %dx.types.CBufRet.f32 %486, 1
  %489 = extractvalue %dx.types.CBufRet.f32 %480, 0
  %490 = extractvalue %dx.types.CBufRet.f32 %480, 1
  %491 = fsub fast float %487, %489
  %492 = fsub fast float %488, %490
  %493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %494 = extractvalue %dx.types.CBufRet.f32 %493, 0
  %495 = fcmp fast ogt float %494, 0.000000e+00
  %496 = fsub fast float -0.000000e+00, %491
  %497 = fsub fast float -0.000000e+00, %492
  %498 = call float @dx.op.dot2.f32(i32 54, float %462, float %463, float %462, float %463)  ; Dot2(ax,ay,bx,by)
  %499 = call float @dx.op.dot2.f32(i32 54, float %462, float %463, float %496, float %497)  ; Dot2(ax,ay,bx,by)
  %500 = fmul fast float %499, 2.000000e+00
  %501 = call float @dx.op.dot2.f32(i32 54, float %496, float %497, float %496, float %497)  ; Dot2(ax,ay,bx,by)
  %502 = fmul fast float %494, %494
  %503 = fsub fast float %501, %502
  %504 = fmul fast float %500, %500
  %505 = fmul fast float %498, 4.000000e+00
  %506 = fmul fast float %505, %503
  %507 = fsub fast float %504, %506
  %508 = fcmp fast ogt float %507, 0.000000e+00
  br i1 %508, label %509, label %524

; <label>:509                                     ; preds = %475
  %510 = fcmp fast ogt float %500, 0.000000e+00
  %511 = call float @dx.op.unary.f32(i32 24, float %507)  ; Sqrt(value)
  %512 = fsub fast float -0.000000e+00, %511
  %513 = select i1 %510, float %511, float %512
  %514 = fadd fast float %513, %500
  %515 = fmul float %514, -5.000000e-01
  %516 = fdiv fast float %515, %498
  %517 = call float @dx.op.binary.f32(i32 35, float %516, float 0.000000e+00)  ; FMax(a,b)
  %518 = call float @dx.op.binary.f32(i32 36, float %461, float %517)  ; FMin(a,b)
  %519 = fdiv fast float %503, %515
  %520 = call float @dx.op.binary.f32(i32 35, float %519, float 0.000000e+00)  ; FMax(a,b)
  %521 = call float @dx.op.binary.f32(i32 36, float %461, float %520)  ; FMin(a,b)
  %522 = call float @dx.op.binary.f32(i32 36, float %518, float %521)  ; FMin(a,b)
  %523 = call float @dx.op.binary.f32(i32 35, float %518, float %521)  ; FMax(a,b)
  br label %524

; <label>:524                                     ; preds = %509, %475
  %525 = phi float [ %523, %509 ], [ -1.000000e+00, %475 ]
  %526 = phi float [ %522, %509 ], [ -1.000000e+00, %475 ]
  %527 = phi i1 [ true, %509 ], [ false, %475 ]
  %528 = and i1 %495, %527
  br i1 %528, label %529, label %531

; <label>:529                                     ; preds = %524
  %530 = fcmp fast oeq float %526, %525
  br i1 %530, label %834, label %532

; <label>:531                                     ; preds = %524
  br i1 %495, label %834, label %532

; <label>:532                                     ; preds = %531, %529
  %533 = phi float [ %461, %531 ], [ %525, %529 ]
  %534 = phi float [ 0.000000e+00, %531 ], [ %526, %529 ]
  %535 = icmp ne i32 %483, 0
  %536 = fmul fast float %533, %464
  %537 = fadd fast float %536, %477
  %538 = fmul fast float %537, %533
  %539 = select i1 %535, float 0.000000e+00, float %538
  %540 = fcmp fast oeq float %464, 0.000000e+00
  %541 = fdiv fast float %482, %464
  %542 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %541)  ; FMax(a,b)
  %543 = select i1 %540, float %533, float %542
  %544 = call float @dx.op.binary.f32(i32 36, float %533, float %543)  ; FMin(a,b)
  %545 = fcmp fast ogt float %464, 0.000000e+00
  %546 = fcmp fast olt float %482, 0.000000e+00
  br i1 %545, label %547, label %604

; <label>:547                                     ; preds = %532
  %548 = icmp eq i32 %483, 0
  br i1 %546, label %549, label %593

; <label>:549                                     ; preds = %547
  %550 = select i1 %548, float %533, float 0.000000e+00
  %551 = fsub fast float -0.000000e+00, %550
  %552 = call float @dx.op.unary.f32(i32 6, float %551)  ; FAbs(value)
  %553 = fmul fast float %550, %464
  %554 = fadd fast float %553, %477
  %555 = fmul fast float %552, %554
  %556 = fsub fast float %539, %555
  %557 = fsub fast float %533, %552
  %558 = select i1 %548, float %557, float 0.000000e+00
  %559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %560 = extractvalue %dx.types.CBufRet.f32 %559, 0
  %561 = extractvalue %dx.types.CBufRet.f32 %559, 1
  %562 = extractvalue %dx.types.CBufRet.f32 %559, 2
  %563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %564 = extractvalue %dx.types.CBufRet.f32 %563, 0
  %565 = extractvalue %dx.types.CBufRet.f32 %563, 1
  %566 = extractvalue %dx.types.CBufRet.f32 %563, 2
  %567 = extractvalue %dx.types.CBufRet.f32 %563, 3
  %568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %569 = extractvalue %dx.types.CBufRet.f32 %568, 3
  %570 = call float @dx.op.binary.f32(i32 36, float %556, float %569)  ; FMin(a,b)
  %571 = fmul fast float %567, %558
  %572 = call float @dx.op.unary.f32(i32 7, float %571)  ; Saturate(value)
  %573 = fsub fast float %564, %560
  %574 = fsub fast float %565, %561
  %575 = fsub fast float %566, %562
  %576 = fmul fast float %572, %573
  %577 = fmul fast float %572, %574
  %578 = fmul fast float %572, %575
  %579 = fadd fast float %576, %560
  %580 = fadd fast float %577, %561
  %581 = fadd fast float %578, %562
  %582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %583 = extractvalue %dx.types.CBufRet.f32 %582, 0
  %584 = extractvalue %dx.types.CBufRet.f32 %582, 1
  %585 = fadd fast float %584, %583
  %586 = call float @dx.op.unary.f32(i32 7, float %585)  ; Saturate(value)
  %587 = extractvalue %dx.types.CBufRet.f32 %582, 2
  %588 = extractvalue %dx.types.CBufRet.f32 %582, 3
  %589 = fadd fast float %588, %587
  %590 = call float @dx.op.unary.f32(i32 7, float %589)  ; Saturate(value)
  %591 = fmul fast float %586, %570
  %592 = fmul fast float %591, %590
  br label %834

; <label>:593                                     ; preds = %547
  br i1 %548, label %594, label %615

; <label>:594                                     ; preds = %593
  %595 = call float @dx.op.binary.f32(i32 36, float %544, float %534)  ; FMin(a,b)
  %596 = fsub fast float %544, %595
  %597 = fsub fast float %596, %533
  %598 = call float @dx.op.unary.f32(i32 6, float %597)  ; FAbs(value)
  %599 = fadd fast float %596, %533
  %600 = fmul fast float %599, %464
  %601 = fadd fast float %600, %477
  %602 = fmul fast float %601, %598
  %603 = fsub fast float %539, %602
  br label %615

; <label>:604                                     ; preds = %532
  br i1 %546, label %605, label %615

; <label>:605                                     ; preds = %604
  %606 = call float @dx.op.binary.f32(i32 35, float %534, float %544)  ; FMax(a,b)
  %607 = icmp eq i32 %483, 0
  %608 = select i1 %607, float %544, float 0.000000e+00
  %609 = fsub fast float -0.000000e+00, %608
  %610 = call float @dx.op.unary.f32(i32 6, float %609)  ; FAbs(value)
  %611 = fmul fast float %608, %464
  %612 = fadd fast float %611, %477
  %613 = fmul fast float %610, %612
  %614 = fsub fast float %539, %613
  br label %615

; <label>:615                                     ; preds = %605, %604, %594, %593
  %616 = phi float [ %534, %593 ], [ %534, %594 ], [ %606, %605 ], [ %534, %604 ]
  %617 = phi float [ 0.000000e+00, %593 ], [ %598, %594 ], [ %610, %605 ], [ 0.000000e+00, %604 ]
  %618 = phi float [ %539, %593 ], [ %603, %594 ], [ %614, %605 ], [ %539, %604 ]
  %619 = phi float [ %544, %593 ], [ %544, %594 ], [ %533, %605 ], [ %533, %604 ]
  %620 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 0
  store float -1.000000e+00, float* %620, align 4, !tbaa !51, !noalias !55
  %621 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 1
  store float -1.000000e+00, float* %621, align 4, !tbaa !51, !noalias !55
  %622 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 2
  store float -1.000000e+00, float* %622, align 4, !tbaa !51, !noalias !55
  %623 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 0
  store float -1.000000e+00, float* %623, align 4, !tbaa !51, !noalias !55
  %624 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 1
  store float -1.000000e+00, float* %624, align 4, !tbaa !51, !noalias !55
  %625 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 2
  store float -1.000000e+00, float* %625, align 4, !tbaa !51, !noalias !55
  %626 = icmp sgt i32 %485, 0
  br i1 %626, label %627, label %688

; <label>:627                                     ; preds = %615
  br label %628

; <label>:628                                     ; preds = %677, %627
  %629 = phi i32 [ %678, %677 ], [ 0, %627 ]
  %630 = phi i32 [ %679, %677 ], [ 0, %627 ]
  %631 = add nuw i32 %630, 171
  %632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 %631)  ; CBufferLoadLegacy(handle,regIndex)
  %633 = extractvalue %dx.types.CBufRet.f32 %632, 0
  %634 = extractvalue %dx.types.CBufRet.f32 %632, 1
  %635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %636 = extractvalue %dx.types.CBufRet.f32 %635, 0
  %637 = extractvalue %dx.types.CBufRet.f32 %635, 1
  %638 = fsub fast float %633, %636
  %639 = fsub fast float %634, %637
  %640 = extractvalue %dx.types.CBufRet.f32 %632, 2
  %641 = fsub fast float -0.000000e+00, %638
  %642 = fsub fast float -0.000000e+00, %639
  %643 = call float @dx.op.dot2.f32(i32 54, float %462, float %463, float %641, float %642)  ; Dot2(ax,ay,bx,by)
  %644 = fmul fast float %643, 2.000000e+00
  %645 = call float @dx.op.dot2.f32(i32 54, float %641, float %642, float %641, float %642)  ; Dot2(ax,ay,bx,by)
  %646 = fmul fast float %640, %640
  %647 = fsub fast float %645, %646
  %648 = fmul fast float %644, %644
  %649 = fmul fast float %505, %647
  %650 = fsub fast float %648, %649
  %651 = fcmp fast ogt float %650, 0.000000e+00
  br i1 %651, label %652, label %667

; <label>:652                                     ; preds = %628
  %653 = fcmp fast ogt float %644, 0.000000e+00
  %654 = call float @dx.op.unary.f32(i32 24, float %650)  ; Sqrt(value)
  %655 = fsub fast float -0.000000e+00, %654
  %656 = select i1 %653, float %654, float %655
  %657 = fadd fast float %656, %644
  %658 = fmul float %657, -5.000000e-01
  %659 = fdiv fast float %658, %498
  %660 = call float @dx.op.binary.f32(i32 35, float %659, float 0.000000e+00)  ; FMax(a,b)
  %661 = call float @dx.op.binary.f32(i32 36, float %533, float %660)  ; FMin(a,b)
  %662 = fdiv fast float %647, %658
  %663 = call float @dx.op.binary.f32(i32 35, float %662, float 0.000000e+00)  ; FMax(a,b)
  %664 = call float @dx.op.binary.f32(i32 36, float %533, float %663)  ; FMin(a,b)
  %665 = call float @dx.op.binary.f32(i32 36, float %661, float %664)  ; FMin(a,b)
  %666 = call float @dx.op.binary.f32(i32 35, float %661, float %664)  ; FMax(a,b)
  br label %667

; <label>:667                                     ; preds = %652, %628
  %668 = phi float [ %666, %652 ], [ -1.000000e+00, %628 ]
  %669 = phi float [ %665, %652 ], [ -1.000000e+00, %628 ]
  %670 = phi i1 [ true, %652 ], [ false, %628 ]
  br i1 %670, label %671, label %677

; <label>:671                                     ; preds = %667
  %672 = call float @dx.op.binary.f32(i32 35, float %616, float %669)  ; FMax(a,b)
  %673 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %630
  store float %672, float* %673, align 4, !tbaa !51, !noalias !55
  %674 = call float @dx.op.binary.f32(i32 35, float %616, float %668)  ; FMax(a,b)
  %675 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %630
  store float %674, float* %675, align 4, !tbaa !51, !noalias !55
  %676 = add nsw i32 %629, 1
  br label %677

; <label>:677                                     ; preds = %671, %667
  %678 = phi i32 [ %676, %671 ], [ %629, %667 ]
  %679 = add nuw nsw i32 %630, 1
  %680 = icmp eq i32 %679, %485
  br i1 %680, label %681, label %628

; <label>:681                                     ; preds = %677
  %682 = load float, float* %622, align 4, !tbaa !51, !alias.scope !71, !noalias !74
  %683 = load float, float* %621, align 4, !tbaa !51, !alias.scope !77, !noalias !78
  %684 = load float, float* %620, align 4, !tbaa !51, !alias.scope !79, !noalias !80
  %685 = load float, float* %625, align 4, !tbaa !51, !alias.scope !81, !noalias !84
  %686 = load float, float* %624, align 4, !tbaa !51, !alias.scope !87, !noalias !88
  %687 = load float, float* %623, align 4, !tbaa !51, !alias.scope !89, !noalias !90
  br label %688

; <label>:688                                     ; preds = %681, %615
  %689 = phi float [ -1.000000e+00, %615 ], [ %687, %681 ]
  %690 = phi float [ -1.000000e+00, %615 ], [ %686, %681 ]
  %691 = phi float [ -1.000000e+00, %615 ], [ %685, %681 ]
  %692 = phi float [ -1.000000e+00, %615 ], [ %684, %681 ]
  %693 = phi float [ -1.000000e+00, %615 ], [ %683, %681 ]
  %694 = phi float [ -1.000000e+00, %615 ], [ %682, %681 ]
  %695 = phi i32 [ 0, %615 ], [ %678, %681 ]
  %696 = call float @dx.op.binary.f32(i32 36, float %693, float %694)  ; FMin(a,b)
  %697 = call float @dx.op.binary.f32(i32 36, float %692, float %696)  ; FMin(a,b)
  %698 = call float @dx.op.binary.f32(i32 35, float %692, float %693)  ; FMax(a,b)
  %699 = call float @dx.op.binary.f32(i32 36, float %698, float %694)  ; FMin(a,b)
  %700 = call float @dx.op.binary.f32(i32 36, float %692, float %693)  ; FMin(a,b)
  %701 = call float @dx.op.binary.f32(i32 35, float %700, float %699)  ; FMax(a,b)
  %702 = call float @dx.op.binary.f32(i32 35, float %693, float %694)  ; FMax(a,b)
  %703 = call float @dx.op.binary.f32(i32 35, float %692, float %702)  ; FMax(a,b)
  store float %697, float* %620, align 4, !tbaa !51, !alias.scope !79, !noalias !80
  store float %701, float* %621, align 4, !tbaa !51, !alias.scope !77, !noalias !78
  store float %703, float* %622, align 4, !tbaa !51, !alias.scope !71, !noalias !74
  %704 = call float @dx.op.binary.f32(i32 36, float %690, float %691)  ; FMin(a,b)
  %705 = call float @dx.op.binary.f32(i32 36, float %689, float %704)  ; FMin(a,b)
  %706 = call float @dx.op.binary.f32(i32 35, float %689, float %690)  ; FMax(a,b)
  %707 = call float @dx.op.binary.f32(i32 36, float %706, float %691)  ; FMin(a,b)
  %708 = call float @dx.op.binary.f32(i32 36, float %689, float %690)  ; FMin(a,b)
  %709 = call float @dx.op.binary.f32(i32 35, float %708, float %707)  ; FMax(a,b)
  %710 = call float @dx.op.binary.f32(i32 35, float %690, float %691)  ; FMax(a,b)
  %711 = call float @dx.op.binary.f32(i32 35, float %689, float %710)  ; FMax(a,b)
  store float %705, float* %623, align 4, !tbaa !51, !alias.scope !89, !noalias !90
  store float %709, float* %624, align 4, !tbaa !51, !alias.scope !87, !noalias !88
  store float %711, float* %625, align 4, !tbaa !51, !alias.scope !81, !noalias !84
  %712 = sub nsw i32 3, %695
  %713 = icmp sgt i32 %712, 2
  br i1 %713, label %714, label %752

; <label>:714                                     ; preds = %688
  %715 = icmp eq i32 %483, 0
  %716 = fsub fast float %533, %617
  %717 = select i1 %715, float %716, float %617
  %718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %719 = extractvalue %dx.types.CBufRet.f32 %718, 0
  %720 = extractvalue %dx.types.CBufRet.f32 %718, 1
  %721 = extractvalue %dx.types.CBufRet.f32 %718, 2
  %722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %723 = extractvalue %dx.types.CBufRet.f32 %722, 0
  %724 = extractvalue %dx.types.CBufRet.f32 %722, 1
  %725 = extractvalue %dx.types.CBufRet.f32 %722, 2
  %726 = extractvalue %dx.types.CBufRet.f32 %722, 3
  %727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %728 = extractvalue %dx.types.CBufRet.f32 %727, 3
  %729 = call float @dx.op.binary.f32(i32 36, float %618, float %728)  ; FMin(a,b)
  %730 = fmul fast float %726, %717
  %731 = call float @dx.op.unary.f32(i32 7, float %730)  ; Saturate(value)
  %732 = fsub fast float %723, %719
  %733 = fsub fast float %724, %720
  %734 = fsub fast float %725, %721
  %735 = fmul fast float %731, %732
  %736 = fmul fast float %731, %733
  %737 = fmul fast float %731, %734
  %738 = fadd fast float %735, %719
  %739 = fadd fast float %736, %720
  %740 = fadd fast float %737, %721
  %741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %742 = extractvalue %dx.types.CBufRet.f32 %741, 0
  %743 = extractvalue %dx.types.CBufRet.f32 %741, 1
  %744 = fadd fast float %743, %742
  %745 = call float @dx.op.unary.f32(i32 7, float %744)  ; Saturate(value)
  %746 = extractvalue %dx.types.CBufRet.f32 %741, 2
  %747 = extractvalue %dx.types.CBufRet.f32 %741, 3
  %748 = fadd fast float %747, %746
  %749 = call float @dx.op.unary.f32(i32 7, float %748)  ; Saturate(value)
  %750 = fmul fast float %745, %729
  %751 = fmul fast float %750, %749
  br label %834

; <label>:752                                     ; preds = %688
  %753 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %712
  %754 = load float, float* %753, align 4, !tbaa !51, !noalias !55
  %755 = fcmp fast olt float %754, %619
  %756 = icmp sgt i32 %695, 0
  %757 = and i1 %756, %755
  br i1 %757, label %758, label %795

; <label>:758                                     ; preds = %752
  br label %759

; <label>:759                                     ; preds = %788, %758
  %760 = phi float [ %789, %788 ], [ %617, %758 ]
  %761 = phi float [ %790, %788 ], [ %618, %758 ]
  %762 = phi float [ %770, %788 ], [ %754, %758 ]
  %763 = phi i32 [ %767, %788 ], [ %712, %758 ]
  %764 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %763
  %765 = load float, float* %764, align 4, !tbaa !51, !noalias !55
  %766 = icmp slt i32 %763, 2
  %767 = add nsw i32 %763, 1
  %768 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %767
  %769 = load float, float* %768, align 4, !tbaa !51, !noalias !55
  %770 = select i1 %766, float %769, float %533
  %771 = call float @dx.op.binary.f32(i32 36, float %770, float %765)  ; FMin(a,b)
  %772 = call float @dx.op.binary.f32(i32 36, float %619, float %771)  ; FMin(a,b)
  %773 = icmp eq i32 %483, 0
  %774 = fadd fast float %772, %762
  %775 = fmul fast float %774, %464
  %776 = fadd fast float %775, %477
  br i1 %773, label %782, label %777

; <label>:777                                     ; preds = %759
  %778 = fsub fast float %772, %762
  %779 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %778)  ; FMax(a,b)
  %780 = fmul fast float %779, %776
  %781 = fadd fast float %780, %761
  br label %788

; <label>:782                                     ; preds = %759
  %783 = fsub fast float %762, %772
  %784 = call float @dx.op.unary.f32(i32 6, float %783)  ; FAbs(value)
  %785 = fadd fast float %784, %760
  %786 = fmul fast float %784, %776
  %787 = fsub fast float %761, %786
  br label %788

; <label>:788                                     ; preds = %782, %777
  %789 = phi float [ %779, %777 ], [ %785, %782 ]
  %790 = phi float [ %781, %777 ], [ %787, %782 ]
  %791 = fcmp fast olt float %770, %619
  %792 = icmp slt i32 %767, 3
  %793 = and i1 %792, %791
  br i1 %793, label %759, label %794

; <label>:794                                     ; preds = %788
  br label %795

; <label>:795                                     ; preds = %794, %752
  %796 = phi float [ %617, %752 ], [ %789, %794 ]
  %797 = phi float [ %618, %752 ], [ %790, %794 ]
  %798 = fsub fast float %533, %796
  %799 = select i1 %535, float %796, float %798
  %800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %801 = extractvalue %dx.types.CBufRet.f32 %800, 0
  %802 = extractvalue %dx.types.CBufRet.f32 %800, 1
  %803 = extractvalue %dx.types.CBufRet.f32 %800, 2
  %804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %805 = extractvalue %dx.types.CBufRet.f32 %804, 0
  %806 = extractvalue %dx.types.CBufRet.f32 %804, 1
  %807 = extractvalue %dx.types.CBufRet.f32 %804, 2
  %808 = extractvalue %dx.types.CBufRet.f32 %804, 3
  %809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %810 = extractvalue %dx.types.CBufRet.f32 %809, 3
  %811 = call float @dx.op.binary.f32(i32 36, float %797, float %810)  ; FMin(a,b)
  %812 = fmul fast float %808, %799
  %813 = call float @dx.op.unary.f32(i32 7, float %812)  ; Saturate(value)
  %814 = fsub fast float %805, %801
  %815 = fsub fast float %806, %802
  %816 = fsub fast float %807, %803
  %817 = fmul fast float %813, %814
  %818 = fmul fast float %813, %815
  %819 = fmul fast float %813, %816
  %820 = fadd fast float %817, %801
  %821 = fadd fast float %818, %802
  %822 = fadd fast float %819, %803
  %823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %824 = extractvalue %dx.types.CBufRet.f32 %823, 0
  %825 = extractvalue %dx.types.CBufRet.f32 %823, 1
  %826 = fadd fast float %825, %824
  %827 = call float @dx.op.unary.f32(i32 7, float %826)  ; Saturate(value)
  %828 = extractvalue %dx.types.CBufRet.f32 %823, 2
  %829 = extractvalue %dx.types.CBufRet.f32 %823, 3
  %830 = fadd fast float %829, %828
  %831 = call float @dx.op.unary.f32(i32 7, float %830)  ; Saturate(value)
  %832 = fmul fast float %827, %811
  %833 = fmul fast float %832, %831
  br label %834

; <label>:834                                     ; preds = %795, %714, %549, %531, %529
  %835 = phi float [ %558, %549 ], [ %717, %714 ], [ %799, %795 ], [ 0.000000e+00, %529 ], [ 0.000000e+00, %531 ]
  %836 = phi float [ %592, %549 ], [ %751, %714 ], [ %833, %795 ], [ 0.000000e+00, %529 ], [ 0.000000e+00, %531 ]
  %837 = phi float [ %579, %549 ], [ %738, %714 ], [ %820, %795 ], [ 0.000000e+00, %529 ], [ 0.000000e+00, %531 ]
  %838 = phi float [ %580, %549 ], [ %739, %714 ], [ %821, %795 ], [ 0.000000e+00, %529 ], [ 0.000000e+00, %531 ]
  %839 = phi float [ %581, %549 ], [ %740, %714 ], [ %822, %795 ], [ 0.000000e+00, %529 ], [ 0.000000e+00, %531 ]
  %840 = fmul fast float %472, %836
  %841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %842 = extractvalue %dx.types.CBufRet.f32 %841, 2
  %843 = fsub fast float %479, %842
  %844 = fcmp fast olt float %840, -2.000000e+01
  %845 = call float @dx.op.unary.f32(i32 21, float %840)  ; Exp(value)
  %846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %847 = extractvalue %dx.types.CBufRet.f32 %846, 2
  %848 = extractvalue %dx.types.CBufRet.f32 %846, 3
  %849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %850 = extractvalue %dx.types.CBufRet.f32 %849, 2
  %851 = fmul fast float %848, %843
  %852 = call float @dx.op.unary.f32(i32 7, float %851)  ; Saturate(value)
  %853 = fsub fast float 1.000000e+00, %852
  %854 = fmul fast float %464, 5.000000e-01
  %855 = fadd fast float %854, 5.000000e-01
  %856 = call float @dx.op.unary.f32(i32 7, float %855)  ; Saturate(value)
  %857 = fsub fast float 1.000000e+00, %856
  %858 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %853)  ; FMax(a,b)
  %859 = fdiv fast float %857, %858
  %860 = fsub fast float %843, %424
  %861 = call float @dx.op.unary.f32(i32 6, float %860)  ; FAbs(value)
  %862 = fmul fast float %861, %847
  %863 = call float @dx.op.unary.f32(i32 7, float %859)  ; Saturate(value)
  %864 = fsub fast float 1.000000e+00, %862
  %865 = fmul fast float %864, %863
  %866 = fadd fast float %865, %862
  %867 = fmul fast float %850, %843
  %868 = call float @dx.op.unary.f32(i32 7, float %867)  ; Saturate(value)
  %869 = fsub fast float 1.000000e+00, %866
  %870 = fmul fast float %869, %868
  %871 = fadd fast float %870, %866
  %872 = call float @dx.op.unary.f32(i32 7, float %871)  ; Saturate(value)
  %873 = fadd fast float %845, -1.000000e+00
  %874 = select i1 %844, float -1.000000e+00, float %873
  %875 = fmul fast float %872, %874
  %876 = fadd fast float %875, 1.000000e+00
  %877 = fsub fast float -0.000000e+00, %875
  %878 = fmul fast float %837, %877
  %879 = fmul fast float %838, %877
  %880 = fmul fast float %839, %877
  br label %881

; <label>:881                                     ; preds = %834, %430
  %882 = phi float [ %835, %834 ], [ 0.000000e+00, %430 ]
  %883 = phi float [ %876, %834 ], [ 1.000000e+00, %430 ]
  %884 = phi float [ %878, %834 ], [ 0.000000e+00, %430 ]
  %885 = phi float [ %879, %834 ], [ 0.000000e+00, %430 ]
  %886 = phi float [ %880, %834 ], [ 0.000000e+00, %430 ]
  %887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %888 = extractvalue %dx.types.CBufRet.f32 %887, 1
  %889 = fsub fast float 1.000000e+00, %883
  %890 = fmul fast float %889, %465
  %891 = fmul fast float %890, %888
  %892 = fsub fast float %465, %891
  br i1 %458, label %893, label %922, !dx.controlflow.hints !91

; <label>:893                                     ; preds = %881
  %894 = fmul fast float %466, %455
  %895 = fadd fast float %894, %456
  %896 = call float @dx.op.unary.f32(i32 7, float %895)  ; Saturate(value)
  %897 = fmul fast float %437, %892
  %898 = fsub fast float -0.000000e+00, %897
  %899 = fmul fast float %438, %892
  %900 = fsub fast float -0.000000e+00, %899
  %901 = call float @dx.op.unary.f32(i32 21, float %898)  ; Exp(value)
  %902 = call float @dx.op.unary.f32(i32 21, float %900)  ; Exp(value)
  %903 = call float @dx.op.binary.f32(i32 35, float %445, float %901)  ; FMax(a,b)
  %904 = call float @dx.op.binary.f32(i32 35, float %445, float %902)  ; FMax(a,b)
  %905 = fsub fast float %904, %903
  %906 = fmul fast float %905, %896
  %907 = fadd fast float %906, %903
  %908 = call float @dx.op.unary.f32(i32 7, float %907)  ; Saturate(value)
  %909 = fsub fast float %442, %447
  %910 = fsub fast float %443, %448
  %911 = fsub fast float %444, %449
  %912 = fmul fast float %896, %909
  %913 = fmul fast float %896, %910
  %914 = fmul fast float %896, %911
  %915 = fadd fast float %912, %447
  %916 = fadd fast float %913, %448
  %917 = fadd fast float %914, %449
  %918 = fsub fast float 1.000000e+00, %908
  %919 = fmul fast float %918, %915
  %920 = fmul fast float %918, %916
  %921 = fmul fast float %918, %917
  br label %981

; <label>:922                                     ; preds = %881
  %923 = fmul fast float %892, %454
  %924 = call float @dx.op.unary.f32(i32 7, float %923)  ; Saturate(value)
  %925 = fsub fast float 2.000000e+00, %924
  %926 = fmul fast float %924, 9.921875e-01
  %927 = fmul fast float %926, %925
  %928 = fadd fast float %927, 3.906250e-03
  %929 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %928, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %930 = extractvalue %dx.types.ResRet.f32 %929, 0
  %931 = fsub fast float %924, %930
  %932 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %931)  ; FMax(a,b)
  %933 = fmul fast float %440, %424
  %934 = call float @dx.op.unary.f32(i32 6, float %933)  ; FAbs(value)
  %935 = fcmp fast ogt float %934, 0x3EB0C6F7A0000000
  br i1 %935, label %936, label %942, !dx.controlflow.hints !92

; <label>:936                                     ; preds = %922
  %937 = fmul fast float %933, 0xBFF7154760000000
  %938 = call float @dx.op.unary.f32(i32 21, float %937)  ; Exp(value)
  %939 = fsub fast float 1.000000e+00, %938
  %940 = fdiv fast float %939, %933
  %941 = fmul fast float %940, %450
  br label %942

; <label>:942                                     ; preds = %936, %922
  %943 = phi float [ %941, %936 ], [ %450, %922 ]
  %944 = fadd fast float %943, %452
  %945 = fmul fast float %944, %932
  %946 = fmul fast float %437, %945
  %947 = fsub fast float -0.000000e+00, %946
  %948 = fmul fast float %438, %945
  %949 = fsub fast float -0.000000e+00, %948
  %950 = fmul fast float %439, %945
  %951 = fsub fast float -0.000000e+00, %950
  %952 = call float @dx.op.unary.f32(i32 21, float %947)  ; Exp(value)
  %953 = call float @dx.op.unary.f32(i32 21, float %949)  ; Exp(value)
  %954 = call float @dx.op.unary.f32(i32 21, float %951)  ; Exp(value)
  %955 = fmul fast float %466, %466
  %956 = fadd fast float %955, 1.000000e+00
  %957 = fmul fast float %956, 0x3FAE8EC8A0000000
  %958 = fmul fast float %957, %447
  %959 = fmul fast float %957, %448
  %960 = fmul fast float %957, %449
  %961 = fmul fast float %466, %445
  %962 = fsub fast float 1.000000e+00, %961
  %963 = fmul fast float %445, %445
  %964 = fsub fast float 1.000000e+00, %963
  %965 = fmul fast float %964, 0x3FB45F3060000000
  %966 = fmul fast float %962, %962
  %967 = fdiv fast float 1.000000e+00, %966
  %968 = fmul fast float %965, %967
  %969 = fmul fast float %968, %442
  %970 = fmul fast float %968, %443
  %971 = fmul fast float %968, %444
  %972 = fadd fast float %969, %958
  %973 = fadd fast float %970, %959
  %974 = fadd fast float %971, %960
  %975 = fsub fast float 1.000000e+00, %952
  %976 = fsub fast float 1.000000e+00, %953
  %977 = fsub fast float 1.000000e+00, %954
  %978 = fmul fast float %972, %975
  %979 = fmul fast float %973, %976
  %980 = fmul fast float %974, %977
  br label %981

; <label>:981                                     ; preds = %942, %893
  %982 = phi float [ %919, %893 ], [ %978, %942 ]
  %983 = phi float [ %920, %893 ], [ %979, %942 ]
  %984 = phi float [ %921, %893 ], [ %980, %942 ]
  %985 = phi float [ %908, %893 ], [ %952, %942 ]
  %986 = phi float [ %908, %893 ], [ %953, %942 ]
  %987 = phi float [ %908, %893 ], [ %954, %942 ]
  br i1 %474, label %988, label %1186, !dx.controlflow.hints !93

; <label>:988                                     ; preds = %981
  %989 = extractvalue %dx.types.CBufRet.f32 %887, 0
  %990 = fmul fast float %989, %889
  %991 = fsub fast float %884, %982
  %992 = fsub fast float %885, %983
  %993 = fsub fast float %886, %984
  %994 = fmul fast float %990, %991
  %995 = fmul fast float %990, %992
  %996 = fmul fast float %990, %993
  %997 = fadd fast float %994, %982
  %998 = fadd fast float %995, %983
  %999 = fadd fast float %996, %984
  %1000 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %985)  ; FMax(a,b)
  %1001 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %986)  ; FMax(a,b)
  %1002 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %987)  ; FMax(a,b)
  %1003 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %883)  ; FMax(a,b)
  %1004 = call float @dx.op.binary.f32(i32 35, float %882, float %892)  ; FMax(a,b)
  %1005 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1004)  ; FMax(a,b)
  %1006 = fdiv fast float %882, %1005
  %1007 = call float @dx.op.unary.f32(i32 7, float %1006)  ; Saturate(value)
  %1008 = fdiv fast float %892, %1005
  %1009 = call float @dx.op.unary.f32(i32 7, float %1008)  ; Saturate(value)
  %1010 = fcmp fast une float %1003, 1.000000e+00
  br i1 %1010, label %1011, label %1024, !dx.controlflow.hints !94

; <label>:1011                                    ; preds = %988
  %1012 = call float @dx.op.unary.f32(i32 23, float %1003)  ; Log(value)
  %1013 = fmul fast float %1012, 0x3FE62E4300000000
  %1014 = fmul fast float %884, %1013
  %1015 = fsub fast float -0.000000e+00, %1014
  %1016 = fmul fast float %885, %1013
  %1017 = fsub fast float -0.000000e+00, %1016
  %1018 = fmul fast float %886, %1013
  %1019 = fsub fast float -0.000000e+00, %1018
  %1020 = fsub fast float 1.000000e+00, %1003
  %1021 = fdiv fast float %1015, %1020
  %1022 = fdiv fast float %1017, %1020
  %1023 = fdiv fast float %1019, %1020
  br label %1024

; <label>:1024                                    ; preds = %1011, %988
  %1025 = phi float [ %1021, %1011 ], [ %884, %988 ]
  %1026 = phi float [ %1022, %1011 ], [ %885, %988 ]
  %1027 = phi float [ %1023, %1011 ], [ %886, %988 ]
  %1028 = phi float [ %1013, %1011 ], [ 0.000000e+00, %988 ]
  %1029 = fcmp fast une float %1000, 1.000000e+00
  br i1 %1029, label %1030, label %1037, !dx.controlflow.hints !95

; <label>:1030                                    ; preds = %1024
  %1031 = call float @dx.op.unary.f32(i32 23, float %1000)  ; Log(value)
  %1032 = fmul fast float %1031, 0x3FE62E4300000000
  %1033 = fmul fast float %997, %1032
  %1034 = fsub fast float -0.000000e+00, %1033
  %1035 = fsub fast float 1.000000e+00, %1000
  %1036 = fdiv fast float %1034, %1035
  br label %1037

; <label>:1037                                    ; preds = %1030, %1024
  %1038 = phi float [ %1036, %1030 ], [ %997, %1024 ]
  %1039 = phi float [ %1032, %1030 ], [ 0.000000e+00, %1024 ]
  %1040 = fcmp fast une float %1001, 1.000000e+00
  br i1 %1040, label %1041, label %1048, !dx.controlflow.hints !95

; <label>:1041                                    ; preds = %1037
  %1042 = call float @dx.op.unary.f32(i32 23, float %1001)  ; Log(value)
  %1043 = fmul fast float %1042, 0x3FE62E4300000000
  %1044 = fmul fast float %998, %1043
  %1045 = fsub fast float -0.000000e+00, %1044
  %1046 = fsub fast float 1.000000e+00, %1001
  %1047 = fdiv fast float %1045, %1046
  br label %1048

; <label>:1048                                    ; preds = %1041, %1037
  %1049 = phi float [ %1047, %1041 ], [ %998, %1037 ]
  %1050 = phi float [ %1043, %1041 ], [ 0.000000e+00, %1037 ]
  %1051 = fcmp fast une float %1002, 1.000000e+00
  br i1 %1051, label %1052, label %1059, !dx.controlflow.hints !95

; <label>:1052                                    ; preds = %1048
  %1053 = call float @dx.op.unary.f32(i32 23, float %1002)  ; Log(value)
  %1054 = fmul fast float %1053, 0x3FE62E4300000000
  %1055 = fmul fast float %999, %1054
  %1056 = fsub fast float -0.000000e+00, %1055
  %1057 = fsub fast float 1.000000e+00, %1002
  %1058 = fdiv fast float %1056, %1057
  br label %1059

; <label>:1059                                    ; preds = %1052, %1048
  %1060 = phi float [ %1058, %1052 ], [ %999, %1048 ]
  %1061 = phi float [ %1054, %1052 ], [ 0.000000e+00, %1048 ]
  %1062 = fmul fast float %1025, %1009
  %1063 = fmul fast float %1026, %1009
  %1064 = fmul fast float %1027, %1009
  %1065 = fmul fast float %1028, %1009
  %1066 = fmul fast float %1038, %1007
  %1067 = fmul fast float %1049, %1007
  %1068 = fmul fast float %1060, %1007
  %1069 = fmul fast float %1039, %1007
  %1070 = fmul fast float %1050, %1007
  %1071 = fmul fast float %1061, %1007
  %1072 = fadd fast float %1066, %1062
  %1073 = fadd fast float %1067, %1063
  %1074 = fadd fast float %1068, %1064
  %1075 = fadd fast float %1069, %1065
  %1076 = fadd fast float %1070, %1065
  %1077 = fadd fast float %1071, %1065
  %1078 = fcmp fast une float %1075, 0.000000e+00
  br i1 %1078, label %1079, label %1086, !dx.controlflow.hints !96

; <label>:1079                                    ; preds = %1059
  %1080 = fmul fast float %1075, 0x3FF7154760000000
  %1081 = call float @dx.op.unary.f32(i32 21, float %1080)  ; Exp(value)
  %1082 = fsub fast float 1.000000e+00, %1081
  %1083 = fmul fast float %1072, %1082
  %1084 = fsub fast float -0.000000e+00, %1083
  %1085 = fdiv fast float %1084, %1075
  br label %1086

; <label>:1086                                    ; preds = %1079, %1059
  %1087 = phi float [ %1081, %1079 ], [ 1.000000e+00, %1059 ]
  %1088 = phi float [ %1085, %1079 ], [ %1072, %1059 ]
  %1089 = fcmp fast une float %1076, 0.000000e+00
  br i1 %1089, label %1090, label %1097, !dx.controlflow.hints !96

; <label>:1090                                    ; preds = %1086
  %1091 = fmul fast float %1076, 0x3FF7154760000000
  %1092 = call float @dx.op.unary.f32(i32 21, float %1091)  ; Exp(value)
  %1093 = fsub fast float 1.000000e+00, %1092
  %1094 = fmul fast float %1073, %1093
  %1095 = fsub fast float -0.000000e+00, %1094
  %1096 = fdiv fast float %1095, %1076
  br label %1097

; <label>:1097                                    ; preds = %1090, %1086
  %1098 = phi float [ %1092, %1090 ], [ 1.000000e+00, %1086 ]
  %1099 = phi float [ %1096, %1090 ], [ %1073, %1086 ]
  %1100 = fcmp fast une float %1077, 0.000000e+00
  br i1 %1100, label %1101, label %1108, !dx.controlflow.hints !96

; <label>:1101                                    ; preds = %1097
  %1102 = fmul fast float %1077, 0x3FF7154760000000
  %1103 = call float @dx.op.unary.f32(i32 21, float %1102)  ; Exp(value)
  %1104 = fsub fast float 1.000000e+00, %1103
  %1105 = fmul fast float %1074, %1104
  %1106 = fsub fast float -0.000000e+00, %1105
  %1107 = fdiv fast float %1106, %1077
  br label %1108

; <label>:1108                                    ; preds = %1101, %1097
  %1109 = phi float [ %1103, %1101 ], [ 1.000000e+00, %1097 ]
  %1110 = phi float [ %1107, %1101 ], [ %1074, %1097 ]
  %1111 = fcmp fast ogt float %1007, %1009
  br i1 %1111, label %1112, label %1132

; <label>:1112                                    ; preds = %1108
  %1113 = fsub fast float 1.000000e+00, %1009
  %1114 = fmul fast float %1025, %1113
  %1115 = fmul fast float %1026, %1113
  %1116 = fmul fast float %1027, %1113
  %1117 = fmul fast float %1028, %1113
  %1118 = fcmp fast une float %1117, 0.000000e+00
  br i1 %1118, label %1119, label %1170, !dx.controlflow.hints !97

; <label>:1119                                    ; preds = %1112
  %1120 = fmul fast float %1117, 0x3FF7154760000000
  %1121 = call float @dx.op.unary.f32(i32 21, float %1120)  ; Exp(value)
  %1122 = fsub fast float 1.000000e+00, %1121
  %1123 = fmul fast float %1114, %1122
  %1124 = fsub fast float -0.000000e+00, %1123
  %1125 = fmul fast float %1115, %1122
  %1126 = fsub fast float -0.000000e+00, %1125
  %1127 = fmul fast float %1116, %1122
  %1128 = fsub fast float -0.000000e+00, %1127
  %1129 = fdiv fast float %1124, %1117
  %1130 = fdiv fast float %1126, %1117
  %1131 = fdiv fast float %1128, %1117
  br label %1170

; <label>:1132                                    ; preds = %1108
  %1133 = fsub fast float 1.000000e+00, %1007
  %1134 = fmul fast float %1038, %1133
  %1135 = fmul fast float %1049, %1133
  %1136 = fmul fast float %1060, %1133
  %1137 = fmul fast float %1039, %1133
  %1138 = fmul fast float %1050, %1133
  %1139 = fmul fast float %1061, %1133
  %1140 = fcmp fast une float %1137, 0.000000e+00
  br i1 %1140, label %1141, label %1148, !dx.controlflow.hints !96

; <label>:1141                                    ; preds = %1132
  %1142 = fmul fast float %1137, 0x3FF7154760000000
  %1143 = call float @dx.op.unary.f32(i32 21, float %1142)  ; Exp(value)
  %1144 = fsub fast float 1.000000e+00, %1143
  %1145 = fmul fast float %1134, %1144
  %1146 = fsub fast float -0.000000e+00, %1145
  %1147 = fdiv fast float %1146, %1137
  br label %1148

; <label>:1148                                    ; preds = %1141, %1132
  %1149 = phi float [ %1147, %1141 ], [ %1134, %1132 ]
  %1150 = phi float [ %1143, %1141 ], [ 1.000000e+00, %1132 ]
  %1151 = fcmp fast une float %1138, 0.000000e+00
  br i1 %1151, label %1152, label %1159, !dx.controlflow.hints !96

; <label>:1152                                    ; preds = %1148
  %1153 = fmul fast float %1138, 0x3FF7154760000000
  %1154 = call float @dx.op.unary.f32(i32 21, float %1153)  ; Exp(value)
  %1155 = fsub fast float 1.000000e+00, %1154
  %1156 = fmul fast float %1135, %1155
  %1157 = fsub fast float -0.000000e+00, %1156
  %1158 = fdiv fast float %1157, %1138
  br label %1159

; <label>:1159                                    ; preds = %1152, %1148
  %1160 = phi float [ %1158, %1152 ], [ %1135, %1148 ]
  %1161 = phi float [ %1154, %1152 ], [ 1.000000e+00, %1148 ]
  %1162 = fcmp fast une float %1139, 0.000000e+00
  br i1 %1162, label %1163, label %1170, !dx.controlflow.hints !96

; <label>:1163                                    ; preds = %1159
  %1164 = fmul fast float %1139, 0x3FF7154760000000
  %1165 = call float @dx.op.unary.f32(i32 21, float %1164)  ; Exp(value)
  %1166 = fsub fast float 1.000000e+00, %1165
  %1167 = fmul fast float %1136, %1166
  %1168 = fsub fast float -0.000000e+00, %1167
  %1169 = fdiv fast float %1168, %1139
  br label %1170

; <label>:1170                                    ; preds = %1163, %1159, %1119, %1112
  %1171 = phi float [ %1169, %1163 ], [ %1131, %1119 ], [ %1116, %1112 ], [ %1136, %1159 ]
  %1172 = phi float [ %1160, %1163 ], [ %1130, %1119 ], [ %1115, %1112 ], [ %1160, %1159 ]
  %1173 = phi float [ %1149, %1163 ], [ %1129, %1119 ], [ %1114, %1112 ], [ %1149, %1159 ]
  %1174 = phi float [ %1165, %1163 ], [ %1121, %1119 ], [ 1.000000e+00, %1112 ], [ 1.000000e+00, %1159 ]
  %1175 = phi float [ %1161, %1163 ], [ %1121, %1119 ], [ 1.000000e+00, %1112 ], [ %1161, %1159 ]
  %1176 = phi float [ %1150, %1163 ], [ %1121, %1119 ], [ 1.000000e+00, %1112 ], [ %1150, %1159 ]
  %1177 = fmul fast float %1176, %1088
  %1178 = fmul fast float %1175, %1099
  %1179 = fmul fast float %1174, %1110
  %1180 = fadd fast float %1177, %1173
  %1181 = fadd fast float %1178, %1172
  %1182 = fadd fast float %1179, %1171
  %1183 = fmul fast float %1176, %1087
  %1184 = fmul fast float %1175, %1098
  %1185 = fmul fast float %1174, %1109
  br label %1186

; <label>:1186                                    ; preds = %1170, %981
  %1187 = phi float [ %1185, %1170 ], [ %987, %981 ]
  %1188 = phi float [ %1184, %1170 ], [ %986, %981 ]
  %1189 = phi float [ %1183, %1170 ], [ %985, %981 ]
  %1190 = phi float [ %1182, %1170 ], [ %984, %981 ]
  %1191 = phi float [ %1181, %1170 ], [ %983, %981 ]
  %1192 = phi float [ %1180, %1170 ], [ %982, %981 ]
  %1193 = fmul fast float %1192, %261
  %1194 = fmul fast float %1191, %261
  %1195 = fmul fast float %1190, %261
  %1196 = fmul fast float %1189, %429
  %1197 = call float @dx.op.dot3.f32(i32 55, float %1189, float %1188, float %1187, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1198 = call float @dx.op.dot3.f32(i32 55, float %1193, float %1194, float %1195, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1199 = select i1 %96, float %1197, float %1189
  %1200 = select i1 %96, float %1197, float %1188
  %1201 = select i1 %96, float 1.000000e+00, float %1187
  %1202 = select i1 %96, float %1198, float %1193
  %1203 = select i1 %96, float 0.000000e+00, float %1194
  %1204 = select i1 %96, float 0.000000e+00, float %1195
  %1205 = fmul fast float %1199, %426
  %1206 = fmul fast float %1200, %427
  %1207 = fmul fast float %1201, %428
  %1208 = fadd fast float %1205, %1202
  %1209 = fadd fast float %1206, %1203
  %1210 = fadd fast float %1204, %1207
  %1211 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1212 = extractvalue %dx.types.CBufRet.i32 %1211, 0
  %1213 = icmp eq i32 %1212, 0
  br i1 %1213, label %1578, label %1214, !dx.controlflow.hints !98

; <label>:1214                                    ; preds = %1186
  %1215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1216 = extractvalue %dx.types.CBufRet.f32 %1215, 2
  %1217 = extractvalue %dx.types.CBufRet.f32 %1215, 3
  %1218 = fmul fast float %1216, %33
  %1219 = fmul fast float %1217, %34
  %1220 = fmul fast float %1218, 2.000000e+00
  %1221 = fmul fast float %1219, 2.000000e+00
  %1222 = fsub fast float 1.000000e+00, %1220
  %1223 = fsub fast float 1.000000e+00, %1221
  %1224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1225 = extractvalue %dx.types.CBufRet.f32 %1224, 0
  %1226 = extractvalue %dx.types.CBufRet.f32 %1224, 1
  %1227 = extractvalue %dx.types.CBufRet.f32 %1224, 2
  %1228 = fmul fast float %1222, %1225
  %1229 = fmul fast float %1222, %1226
  %1230 = fmul fast float %1222, %1227
  %1231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1232 = extractvalue %dx.types.CBufRet.f32 %1231, 0
  %1233 = extractvalue %dx.types.CBufRet.f32 %1231, 1
  %1234 = extractvalue %dx.types.CBufRet.f32 %1231, 2
  %1235 = fmul fast float %1223, %1232
  %1236 = fmul fast float %1223, %1233
  %1237 = fmul fast float %1223, %1234
  %1238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1239 = extractvalue %dx.types.CBufRet.f32 %1238, 0
  %1240 = extractvalue %dx.types.CBufRet.f32 %1238, 1
  %1241 = extractvalue %dx.types.CBufRet.f32 %1238, 2
  %1242 = fadd fast float %1235, %1239
  %1243 = fadd fast float %1242, %1228
  %1244 = fadd fast float %1236, %1240
  %1245 = fadd fast float %1244, %1229
  %1246 = fadd fast float %1237, %1241
  %1247 = fadd fast float %1246, %1230
  %1248 = fmul fast float %1243, %425
  %1249 = fmul fast float %1245, %425
  %1250 = fmul fast float %1247, %425
  %1251 = fmul fast float %1248, %1248
  %1252 = fmul fast float %1249, %1249
  %1253 = fadd fast float %1251, %1252
  %1254 = fmul fast float %1250, %1250
  %1255 = fadd fast float %1253, %1254
  %1256 = call float @dx.op.unary.f32(i32 24, float %1255)  ; Sqrt(value)
  %1257 = extractvalue %dx.types.CBufRet.f32 %269, 0
  %1258 = fsub fast float %1256, %1257
  %1259 = extractvalue %dx.types.CBufRet.f32 %269, 2
  %1260 = fmul fast float %1258, %1259
  %1261 = call float @dx.op.unary.f32(i32 7, float %1260)  ; Saturate(value)
  %1262 = fadd fast float %1261, -5.000000e-01
  %1263 = fmul fast float %1262, 2.000000e+00
  %1264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1265 = extractvalue %dx.types.CBufRet.f32 %1264, 2
  %1266 = call float @dx.op.binary.f32(i32 36, float %1265, float %1263)  ; FMin(a,b)
  %1267 = fsub fast float -0.000000e+00, %1265
  %1268 = fcmp fast ogt float %1266, %1267
  br i1 %1268, label %1269, label %1578, !dx.controlflow.hints !99

; <label>:1269                                    ; preds = %1214
  %1270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %1271 = extractvalue %dx.types.CBufRet.f32 %1270, 3
  %1272 = fcmp fast ogt float %1271, 0.000000e+00
  br i1 %1272, label %1273, label %1348, !dx.controlflow.hints !100

; <label>:1273                                    ; preds = %1269
  %1274 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %12, i32 0)  ; GetDimensions(handle,mipLevel)
  %1275 = extractvalue %dx.types.Dimensions %1274, 0
  %1276 = sitofp i32 %1275 to float
  %1277 = extractvalue %dx.types.Dimensions %1274, 1
  %1278 = sitofp i32 %1277 to float
  %1279 = fmul fast float %1218, %1276
  %1280 = fmul fast float %1219, %1278
  %1281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1282 = extractvalue %dx.types.CBufRet.f32 %1281, 1
  %1283 = fsub fast float -0.000000e+00, %1282
  %1284 = fptoui float %1283 to i32
  %1285 = fptoui float %1279 to i32
  %1286 = fptoui float %1280 to i32
  %1287 = and i32 %1284, 31
  %1288 = lshr i32 %1285, %1287
  %1289 = lshr i32 %1286, %1287
  %1290 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %1284, i32 %1288, i32 %1289, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1291 = extractvalue %dx.types.ResRet.f32 %1290, 0
  %1292 = fcmp fast olt float %1291, -1.000000e+00
  %1293 = fcmp fast ogt float %1291, -1.000000e+00
  %1294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1295 = extractvalue %dx.types.CBufRet.f32 %1294, 1
  %1296 = select i1 %1293, float %1295, float 1.000000e+00
  %1297 = fadd fast float %1291, 1.000000e+00
  %1298 = fmul fast float %1296, %1297
  %1299 = call float @dx.op.unary.f32(i32 6, float %1298)  ; FAbs(value)
  %1300 = extractvalue %dx.types.CBufRet.f32 %1294, 3
  %1301 = fcmp fast oge float %1299, %1300
  %1302 = select i1 %1301, float 0x4197782600000000, float %1299
  %1303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %1304 = extractvalue %dx.types.CBufRet.f32 %1303, 0
  %1305 = extractvalue %dx.types.CBufRet.f32 %1303, 1
  %1306 = extractvalue %dx.types.CBufRet.f32 %1303, 2
  %1307 = select i1 %1292, float %1304, float %1225
  %1308 = select i1 %1292, float %1305, float %1226
  %1309 = select i1 %1292, float %1306, float %1227
  %1310 = fmul fast float %1307, %1222
  %1311 = fmul fast float %1308, %1222
  %1312 = fmul fast float %1309, %1222
  %1313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %1314 = extractvalue %dx.types.CBufRet.f32 %1313, 0
  %1315 = extractvalue %dx.types.CBufRet.f32 %1313, 1
  %1316 = extractvalue %dx.types.CBufRet.f32 %1313, 2
  %1317 = select i1 %1292, float %1314, float %1232
  %1318 = select i1 %1292, float %1315, float %1233
  %1319 = select i1 %1292, float %1316, float %1234
  %1320 = fmul fast float %1317, %1223
  %1321 = fmul fast float %1318, %1223
  %1322 = fmul fast float %1319, %1223
  %1323 = fadd fast float %1320, %1310
  %1324 = fadd fast float %1321, %1311
  %1325 = fadd fast float %1322, %1312
  %1326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %1327 = extractvalue %dx.types.CBufRet.f32 %1326, 0
  %1328 = extractvalue %dx.types.CBufRet.f32 %1326, 1
  %1329 = extractvalue %dx.types.CBufRet.f32 %1326, 2
  %1330 = select i1 %1292, float %1327, float %1239
  %1331 = select i1 %1292, float %1328, float %1240
  %1332 = select i1 %1292, float %1329, float %1241
  %1333 = fadd fast float %1323, %1330
  %1334 = fadd fast float %1324, %1331
  %1335 = fadd fast float %1325, %1332
  %1336 = fmul fast float %1333, %1302
  %1337 = fmul fast float %1334, %1302
  %1338 = fmul fast float %1335, %1302
  %1339 = fmul fast float %1336, %1336
  %1340 = fmul fast float %1337, %1337
  %1341 = fadd fast float %1339, %1340
  %1342 = fmul fast float %1338, %1338
  %1343 = fadd fast float %1341, %1342
  %1344 = call float @dx.op.unary.f32(i32 24, float %1343)  ; Sqrt(value)
  %1345 = fsub fast float %1344, %1257
  %1346 = fmul fast float %1345, %1259
  %1347 = call float @dx.op.unary.f32(i32 7, float %1346)  ; Saturate(value)
  br label %1348

; <label>:1348                                    ; preds = %1273, %1269
  %1349 = phi float [ %1347, %1273 ], [ 1.000000e+00, %1269 ]
  %1350 = fmul fast float %1266, 5.000000e-01
  %1351 = fadd fast float %1350, 5.000000e-01
  %1352 = call float @dx.op.unary.f32(i32 22, float %1351)  ; Frc(value)
  %1353 = call float @dx.op.unary.f32(i32 27, float %1352)  ; Round_ni(value)
  %1354 = call float @dx.op.unary.f32(i32 22, float %1352)  ; Frc(value)
  %1355 = fmul fast float %1354, 2.000000e+00
  %1356 = fadd fast float %1355, -1.000000e+00
  %1357 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %17, float %1218, float %1219, float %1353, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1358 = extractvalue %dx.types.ResRet.f32 %1357, 0
  %1359 = extractvalue %dx.types.ResRet.f32 %1357, 1
  %1360 = extractvalue %dx.types.ResRet.f32 %1357, 2
  %1361 = extractvalue %dx.types.ResRet.f32 %1357, 3
  %1362 = fadd fast float %1358, -5.000000e-01
  %1363 = fadd fast float %1360, -5.000000e-01
  %1364 = fmul fast float %1362, 0xBFD5555560000000
  %1365 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1363, float %1364)  ; FMad(a,b,c)
  %1366 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1359, float 0.000000e+00)  ; FMad(a,b,c)
  %1367 = fadd fast float %1366, %1361
  %1368 = fmul fast float %1362, -7.500000e-01
  %1369 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1363, float %1368)  ; FMad(a,b,c)
  %1370 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1359, float 0.000000e+00)  ; FMad(a,b,c)
  %1371 = fadd fast float %1370, %1361
  %1372 = call float @dx.op.binary.f32(i32 35, float %1365, float -1.000000e+00)  ; FMax(a,b)
  %1373 = call float @dx.op.binary.f32(i32 35, float %1367, float -1.000000e+00)  ; FMax(a,b)
  %1374 = call float @dx.op.binary.f32(i32 35, float %1369, float -1.000000e+00)  ; FMax(a,b)
  %1375 = call float @dx.op.binary.f32(i32 35, float %1371, float -1.000000e+00)  ; FMax(a,b)
  %1376 = call float @dx.op.binary.f32(i32 36, float %1372, float 1.000000e+00)  ; FMin(a,b)
  %1377 = call float @dx.op.binary.f32(i32 36, float %1373, float 1.000000e+00)  ; FMin(a,b)
  %1378 = call float @dx.op.binary.f32(i32 36, float %1374, float 1.000000e+00)  ; FMin(a,b)
  %1379 = call float @dx.op.binary.f32(i32 36, float %1375, float 1.000000e+00)  ; FMin(a,b)
  %1380 = fcmp fast olt float %1376, 0x3FEFFF8020000000
  br i1 %1380, label %1381, label %1496, !dx.controlflow.hints !101

; <label>:1381                                    ; preds = %1348
  %1382 = extractvalue %dx.types.CBufRet.f32 %1264, 3
  %1383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1384 = extractvalue %dx.types.CBufRet.f32 %1383, 0
  %1385 = extractvalue %dx.types.CBufRet.f32 %1383, 1
  %1386 = extractvalue %dx.types.CBufRet.f32 %1383, 2
  %1387 = extractvalue %dx.types.CBufRet.f32 %1383, 3
  %1388 = fsub fast float %1384, %1376
  %1389 = fsub fast float %1385, %1377
  %1390 = fsub fast float %1386, %1378
  %1391 = fsub fast float %1387, %1379
  %1392 = fmul fast float %1388, %1382
  %1393 = fmul fast float %1389, %1382
  %1394 = fmul fast float %1390, %1382
  %1395 = fmul fast float %1391, %1382
  %1396 = fadd fast float %1392, %1376
  %1397 = fadd fast float %1393, %1377
  %1398 = fsub fast float -0.000000e+00, %1397
  %1399 = fadd fast float %1394, %1378
  %1400 = fadd fast float %1395, %1379
  %1401 = fmul fast float %1396, %1396
  %1402 = fsub fast float %1397, %1401
  %1403 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1402)  ; FMax(a,b)
  %1404 = fdiv fast float 1.000000e+00, %1403
  %1405 = fmul fast float %1397, %1396
  %1406 = fsub fast float %1399, %1405
  %1407 = fsub fast float %1356, %1396
  %1408 = fmul fast float %1356, %1356
  %1409 = fsub fast float %1408, %1397
  %1410 = fmul fast float %1407, %1404
  %1411 = fmul fast float %1410, %1406
  %1412 = fsub fast float %1409, %1411
  %1413 = fmul fast float %1397, %1397
  %1414 = fsub fast float %1400, %1413
  %1415 = fmul fast float %1406, %1406
  %1416 = fmul fast float %1415, %1404
  %1417 = fsub fast float %1414, %1416
  %1418 = fdiv fast float %1412, %1417
  %1419 = fmul fast float %1406, %1418
  %1420 = fsub fast float %1407, %1419
  %1421 = fmul fast float %1420, %1404
  %1422 = fmul fast float %1421, %1396
  %1423 = fsub fast float 1.000000e+00, %1422
  %1424 = fmul fast float %1397, %1418
  %1425 = fsub fast float %1423, %1424
  %1426 = fmul fast float %1421, %1421
  %1427 = fmul fast float %1418, 4.000000e+00
  %1428 = fmul fast float %1427, %1425
  %1429 = fsub fast float %1426, %1428
  %1430 = call float @dx.op.unary.f32(i32 24, float %1429)  ; Sqrt(value)
  %1431 = fcmp fast oge float %1421, 0.000000e+00
  %1432 = fsub fast float -0.000000e+00, %1430
  %1433 = select i1 %1431, float %1432, float %1430
  %1434 = fsub fast float %1433, %1421
  %1435 = fdiv fast float %1434, %1418
  %1436 = fdiv fast float %1425, %1434
  %1437 = fmul fast float %1435, 5.000000e-01
  %1438 = fmul fast float %1436, 2.000000e+00
  %1439 = select i1 %1431, float %1437, float %1438
  %1440 = select i1 %1431, float %1438, float %1437
  %1441 = call float @dx.op.binary.f32(i32 35, float %1439, float %1440)  ; FMax(a,b)
  %1442 = call float @dx.op.binary.f32(i32 36, float %1439, float %1440)  ; FMin(a,b)
  %1443 = fcmp fast ogt float %1356, %1442
  br i1 %1443, label %1444, label %1454

; <label>:1444                                    ; preds = %1381
  %1445 = fsub fast float %1356, %1442
  %1446 = fsub fast float %1441, %1442
  %1447 = fmul fast float %1445, %1446
  %1448 = fmul fast float %1441, %1356
  %1449 = fadd fast float %1441, %1356
  %1450 = fmul fast float %1449, %1396
  %1451 = fadd fast float %1448, %1397
  %1452 = fsub fast float %1451, %1450
  %1453 = fdiv fast float %1452, %1447
  br label %1454

; <label>:1454                                    ; preds = %1444, %1381
  %1455 = phi float [ %1453, %1444 ], [ 0.000000e+00, %1381 ]
  %1456 = fcmp fast ogt float %1356, %1441
  %1457 = fsub fast float %1356, %1441
  br i1 %1456, label %1458, label %1468

; <label>:1458                                    ; preds = %1454
  %1459 = fsub fast float %1441, %1442
  %1460 = fmul fast float %1459, %1457
  %1461 = fmul fast float %1442, %1356
  %1462 = fadd fast float %1442, %1356
  %1463 = fmul fast float %1462, %1396
  %1464 = fsub fast float %1398, %1461
  %1465 = fadd fast float %1464, %1463
  %1466 = fdiv fast float %1465, %1460
  %1467 = fadd fast float %1466, %1455
  br label %1468

; <label>:1468                                    ; preds = %1458, %1454
  %1469 = phi float [ %1467, %1458 ], [ %1455, %1454 ]
  %1470 = fsub fast float %1356, %1442
  %1471 = fmul fast float %1470, %1457
  %1472 = fmul fast float %1442, %1441
  %1473 = fadd fast float %1442, %1441
  %1474 = fmul fast float %1473, %1396
  %1475 = fadd fast float %1472, %1397
  %1476 = fsub fast float %1475, %1474
  %1477 = fdiv fast float %1476, %1471
  %1478 = call float @dx.op.unary.f32(i32 7, float %1469)  ; Saturate(value)
  %1479 = fcmp fast oeq float %270, 0.000000e+00
  %1480 = extractvalue %dx.types.CBufRet.f32 %1264, 0
  %1481 = fcmp fast oeq float %1480, 0.000000e+00
  %1482 = or i1 %1479, %1481
  %1483 = fmul fast float %1480, 2.000000e+00
  %1484 = fadd fast float %1265, %1266
  %1485 = fdiv fast float %1484, %1483
  %1486 = call float @dx.op.unary.f32(i32 7, float %1485)  ; Saturate(value)
  %1487 = fmul fast float %1486, 2.000000e+00
  %1488 = fsub fast float 3.000000e+00, %1487
  %1489 = fmul fast float %1486, %1486
  %1490 = fmul fast float %1489, %1488
  %1491 = select i1 %1482, float 1.000000e+00, float %1490
  %1492 = fmul fast float %1477, %270
  %1493 = fadd fast float %1478, %1492
  %1494 = call float @dx.op.unary.f32(i32 7, float %1493)  ; Saturate(value)
  %1495 = fmul fast float %1491, %1494
  br label %1496

; <label>:1496                                    ; preds = %1468, %1348
  %1497 = phi float [ %1495, %1468 ], [ 0.000000e+00, %1348 ]
  %1498 = fsub fast float 1.000000e+00, %1497
  %1499 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %1218, float %1219, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1500 = extractvalue %dx.types.ResRet.f32 %1499, 0
  %1501 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1502 = extractvalue %dx.types.CBufRet.i32 %1501, 2
  %1503 = icmp eq i32 %1502, 0
  br i1 %1503, label %1509, label %1504

; <label>:1504                                    ; preds = %1496
  %1505 = call float @dx.op.unary.f32(i32 7, float %1497)  ; Saturate(value)
  %1506 = fadd fast float %1500, -1.000000e+00
  %1507 = fmul fast float %1505, %1506
  %1508 = fadd fast float %1507, 1.000000e+00
  br label %1509

; <label>:1509                                    ; preds = %1504, %1496
  %1510 = phi float [ %1508, %1504 ], [ %1498, %1496 ]
  br i1 %1272, label %1511, label %1529

; <label>:1511                                    ; preds = %1509
  %1512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1513 = extractvalue %dx.types.CBufRet.f32 %1512, 1
  %1514 = fsub fast float %1349, %1513
  %1515 = call float @dx.op.unary.f32(i32 7, float %1514)  ; Saturate(value)
  %1516 = fsub fast float %1349, %1271
  %1517 = call float @dx.op.unary.f32(i32 7, float %1516)  ; Saturate(value)
  %1518 = fsub fast float %1515, %1517
  %1519 = fsub fast float %1351, %1517
  %1520 = fdiv fast float %1519, %1518
  %1521 = call float @dx.op.unary.f32(i32 7, float %1520)  ; Saturate(value)
  %1522 = fmul fast float %1521, 2.000000e+00
  %1523 = fsub fast float 3.000000e+00, %1522
  %1524 = fsub fast float %1500, %1510
  %1525 = fmul fast float %1521, %1521
  %1526 = fmul fast float %1525, %1524
  %1527 = fmul fast float %1526, %1523
  %1528 = fadd fast float %1527, %1510
  br label %1529

; <label>:1529                                    ; preds = %1511, %1509
  %1530 = phi float [ %1528, %1511 ], [ %1510, %1509 ]
  %1531 = call float @dx.op.binary.f32(i32 35, float %1500, float %1530)  ; FMax(a,b)
  %1532 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1533 = extractvalue %dx.types.CBufRet.i32 %1532, 2
  %1534 = and i32 %1533, 1
  %1535 = icmp eq i32 %1534, 0
  %1536 = fcmp fast une float %1531, 1.000000e+00
  %1537 = and i1 %1536, %1535
  br i1 %1537, label %1538, label %1557

; <label>:1538                                    ; preds = %1529
  %1539 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %17, float %1218, float %1219, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1540 = extractvalue %dx.types.ResRet.f32 %1539, 0
  %1541 = extractvalue %dx.types.ResRet.f32 %1539, 1
  %1542 = extractvalue %dx.types.ResRet.f32 %1539, 2
  %1543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1544 = extractvalue %dx.types.CBufRet.f32 %1543, 1
  %1545 = fmul fast float %1544, %1540
  %1546 = fmul fast float %1544, %1541
  %1547 = fmul fast float %1544, %1542
  %1548 = fcmp fast ogt float %1500, 0x3FEFFF2E40000000
  %1549 = fsub fast float 1.000000e+00, %1531
  %1550 = fsub fast float 1.000000e+00, %1500
  %1551 = fdiv fast float %1549, %1550
  %1552 = call float @dx.op.unary.f32(i32 7, float %1551)  ; Saturate(value)
  %1553 = select i1 %1548, float 0.000000e+00, float %1552
  %1554 = fmul fast float %1545, %1553
  %1555 = fmul fast float %1546, %1553
  %1556 = fmul fast float %1547, %1553
  br label %1557

; <label>:1557                                    ; preds = %1538, %1529
  %1558 = phi float [ 0.000000e+00, %1529 ], [ %1554, %1538 ]
  %1559 = phi float [ 0.000000e+00, %1529 ], [ %1555, %1538 ]
  %1560 = phi float [ 0.000000e+00, %1529 ], [ %1556, %1538 ]
  %1561 = fmul fast float %1558, %261
  %1562 = fmul fast float %1559, %261
  %1563 = fmul fast float %1560, %261
  %1564 = fmul fast float %1531, %1196
  %1565 = call float @dx.op.dot3.f32(i32 55, float %1531, float %1531, float %1531, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1566 = call float @dx.op.dot3.f32(i32 55, float %1561, float %1562, float %1563, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1567 = select i1 %96, float %1565, float %1531
  %1568 = select i1 %96, float 1.000000e+00, float %1531
  %1569 = select i1 %96, float %1566, float %1561
  %1570 = select i1 %96, float 0.000000e+00, float %1562
  %1571 = select i1 %96, float 0.000000e+00, float %1563
  %1572 = fmul fast float %1567, %1208
  %1573 = fmul fast float %1567, %1209
  %1574 = fmul fast float %1568, %1210
  %1575 = fadd fast float %1572, %1569
  %1576 = fadd fast float %1573, %1570
  %1577 = fadd fast float %1571, %1574
  br label %1578

; <label>:1578                                    ; preds = %1557, %1214, %1186, %421
  %1579 = phi float [ %426, %421 ], [ %1208, %1186 ], [ %1575, %1557 ], [ %1208, %1214 ]
  %1580 = phi float [ %427, %421 ], [ %1209, %1186 ], [ %1576, %1557 ], [ %1209, %1214 ]
  %1581 = phi float [ %428, %421 ], [ %1210, %1186 ], [ %1577, %1557 ], [ %1210, %1214 ]
  %1582 = phi float [ %429, %421 ], [ %1196, %1186 ], [ %1564, %1557 ], [ %1196, %1214 ]
  %1583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1584 = extractvalue %dx.types.CBufRet.f32 %1583, 2
  %1585 = extractvalue %dx.types.CBufRet.f32 %1583, 3
  %1586 = fmul fast float %1584, %33
  %1587 = fmul fast float %1585, %34
  %1588 = call float @dx.op.unary.f32(i32 7, float %1586)  ; Saturate(value)
  %1589 = call float @dx.op.unary.f32(i32 7, float %1587)  ; Saturate(value)
  %1590 = select i1 %281, i32 2, i32 0
  %1591 = or i32 %1590, 1
  %1592 = uitofp i32 %1591 to float
  %1593 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %17, float %1588, float %1589, float %1592, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1594 = extractvalue %dx.types.ResRet.f32 %1593, 0
  %1595 = extractvalue %dx.types.ResRet.f32 %1593, 1
  %1596 = extractvalue %dx.types.ResRet.f32 %1593, 2
  %1597 = extractvalue %dx.types.ResRet.f32 %1593, 3
  %1598 = add nuw nsw i32 %1590, 2
  %1599 = uitofp i32 %1598 to float
  %1600 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %17, float %1588, float %1589, float %1599, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1601 = extractvalue %dx.types.ResRet.f32 %1600, 0
  %1602 = extractvalue %dx.types.ResRet.f32 %1600, 1
  %1603 = extractvalue %dx.types.ResRet.f32 %1600, 2
  %1604 = extractvalue %dx.types.ResRet.f32 %1600, 3
  %1605 = call float @dx.op.binary.f32(i32 35, float %1595, float %1596)  ; FMax(a,b)
  %1606 = call float @dx.op.binary.f32(i32 35, float %1594, float %1605)  ; FMax(a,b)
  %1607 = call float @dx.op.binary.f32(i32 35, float %1606, float %1597)  ; FMax(a,b)
  %1608 = call float @dx.op.binary.f32(i32 36, float %1602, float %1603)  ; FMin(a,b)
  %1609 = call float @dx.op.binary.f32(i32 36, float %1601, float %1608)  ; FMin(a,b)
  %1610 = call float @dx.op.binary.f32(i32 36, float %1609, float %1604)  ; FMin(a,b)
  %1611 = fmul fast float %1607, 2.550000e+02
  %1612 = fadd fast float %1611, 0x3F70101020000000
  %1613 = fptoui float %1612 to i32
  %1614 = fmul fast float %1610, 2.550000e+02
  %1615 = fadd fast float %1614, 0x3F70101020000000
  %1616 = fptoui float %1615 to i32
  %1617 = icmp ult i32 %1613, %1616
  br i1 %1617, label %1618, label %1670

; <label>:1618                                    ; preds = %1578
  %1619 = fcmp fast ogt float %25, 9.843750e-01
  %1620 = fadd fast float %425, -4.000000e+00
  %1621 = select i1 %1619, float -4.000000e+00, float %1620
  %1622 = call float @dx.op.binary.f32(i32 35, float %1621, float 0.000000e+00)  ; FMax(a,b)
  %1623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1624 = extractvalue %dx.types.CBufRet.f32 %1623, 0
  %1625 = fadd fast float %1624, %1622
  %1626 = extractvalue %dx.types.CBufRet.f32 %1623, 2
  %1627 = fmul fast float %1625, %1626
  %1628 = call float @dx.op.unary.f32(i32 23, float %1627)  ; Log(value)
  %1629 = extractvalue %dx.types.CBufRet.f32 %1623, 3
  %1630 = fmul fast float %1629, %1628
  %1631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1632 = extractvalue %dx.types.CBufRet.f32 %1631, 2
  %1633 = fmul fast float %1630, %1632
  %1634 = call float @dx.op.unary.f32(i32 7, float %1633)  ; Saturate(value)
  %1635 = uitofp i32 %1613 to float
  %1636 = uitofp i32 %1616 to float
  %1637 = fadd fast float %1635, 5.000000e-01
  %1638 = fadd fast float %1636, 5.000000e-01
  %1639 = fmul fast float %1632, %1637
  %1640 = fmul fast float %1632, %1638
  %1641 = fadd fast float %1639, 0x3F0FFB4800000000
  %1642 = fadd fast float %1640, 0xBF0FFB4800000000
  %1643 = call float @dx.op.binary.f32(i32 35, float %1634, float %1641)  ; FMax(a,b)
  %1644 = call float @dx.op.binary.f32(i32 36, float %1643, float %1642)  ; FMin(a,b)
  %1645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1646 = extractvalue %dx.types.CBufRet.f32 %1645, 1
  %1647 = extractvalue %dx.types.CBufRet.f32 %1645, 2
  %1648 = extractvalue %dx.types.CBufRet.f32 %1645, 0
  %1649 = select i1 %281, float %1648, float 0.000000e+00
  %1650 = fmul fast float %1646, %1644
  %1651 = fadd fast float %1649, %1650
  %1652 = fadd fast float %1649, %1647
  %1653 = fsub fast float %1646, %1647
  %1654 = fadd fast float %1653, %1649
  %1655 = call float @dx.op.binary.f32(i32 35, float %1651, float %1652)  ; FMax(a,b)
  %1656 = call float @dx.op.binary.f32(i32 36, float %1655, float %1654)  ; FMin(a,b)
  %1657 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %16, float %1588, float %1589, float %1656, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1658 = extractvalue %dx.types.ResRet.f32 %1657, 0
  %1659 = extractvalue %dx.types.ResRet.f32 %1657, 1
  %1660 = extractvalue %dx.types.ResRet.f32 %1657, 2
  %1661 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1588, float %1589, float %1656, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1662 = extractvalue %dx.types.ResRet.f32 %1661, 0
  %1663 = extractvalue %dx.types.ResRet.f32 %1661, 1
  %1664 = extractvalue %dx.types.ResRet.f32 %1661, 2
  %1665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1666 = extractvalue %dx.types.CBufRet.f32 %1665, 1
  %1667 = fmul fast float %1666, %1662
  %1668 = fmul fast float %1666, %1663
  %1669 = fmul fast float %1666, %1664
  br label %1670

; <label>:1670                                    ; preds = %1618, %1578
  %1671 = phi float [ %1658, %1618 ], [ 1.000000e+00, %1578 ]
  %1672 = phi float [ %1659, %1618 ], [ 1.000000e+00, %1578 ]
  %1673 = phi float [ %1660, %1618 ], [ 1.000000e+00, %1578 ]
  %1674 = phi float [ %1667, %1618 ], [ 0.000000e+00, %1578 ]
  %1675 = phi float [ %1668, %1618 ], [ 0.000000e+00, %1578 ]
  %1676 = phi float [ %1669, %1618 ], [ 0.000000e+00, %1578 ]
  %1677 = fmul fast float %1674, %261
  %1678 = fmul fast float %1675, %261
  %1679 = fmul fast float %1676, %261
  %1680 = fmul fast float %1671, %1582
  %1681 = call float @dx.op.dot3.f32(i32 55, float %1671, float %1672, float %1673, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1682 = call float @dx.op.dot3.f32(i32 55, float %1677, float %1678, float %1679, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1683 = select i1 %96, float %1681, float %1671
  %1684 = select i1 %96, float %1681, float %1672
  %1685 = select i1 %96, float 1.000000e+00, float %1673
  %1686 = select i1 %96, float %1682, float %1677
  %1687 = select i1 %96, float 0.000000e+00, float %1678
  %1688 = select i1 %96, float 0.000000e+00, float %1679
  %1689 = fmul fast float %1683, %1579
  %1690 = fmul fast float %1684, %1580
  %1691 = fmul fast float %1685, %1581
  %1692 = fadd fast float %1689, %1686
  %1693 = fadd fast float %1690, %1687
  %1694 = fadd fast float %1688, %1691
  %1695 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1696 = extractvalue %dx.types.CBufRet.i32 %1695, 3
  %1697 = and i32 %1696, 3
  %1698 = icmp ne i32 %1697, 0
  %1699 = and i32 %1696, 4
  %1700 = icmp ne i32 %1699, 0
  %1701 = and i1 %1698, %1700
  %1702 = and i1 %96, %1701
  br i1 %1702, label %1703, label %1709

; <label>:1703                                    ; preds = %1670
  %1704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1705 = extractvalue %dx.types.CBufRet.f32 %1704, 1
  %1706 = fadd fast float %1680, -1.000000e+00
  %1707 = fmul fast float %1705, %1706
  %1708 = fadd fast float %1707, 1.000000e+00
  br label %1709

; <label>:1709                                    ; preds = %1703, %1670
  %1710 = phi float [ %1708, %1703 ], [ %1680, %1670 ]
  %1711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1712 = extractvalue %dx.types.CBufRet.f32 %1711, 0
  br i1 %96, label %1713, label %1734

; <label>:1713                                    ; preds = %1709
  %1714 = fadd fast float %1692, %1693
  %1715 = fmul fast float %1712, %1714
  %1716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1717 = extractvalue %dx.types.CBufRet.f32 %1716, 3
  %1718 = extractvalue %dx.types.CBufRet.f32 %265, 1
  %1719 = fsub fast float %268, %1718
  %1720 = extractvalue %dx.types.CBufRet.f32 %265, 2
  %1721 = fmul fast float %1719, %1720
  %1722 = call float @dx.op.unary.f32(i32 7, float %1721)  ; Saturate(value)
  %1723 = fsub fast float %1722, %1717
  %1724 = fmul fast float %1723, %1710
  %1725 = fadd fast float %1724, %1717
  %1726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1727 = extractvalue %dx.types.CBufRet.f32 %1726, 0
  %1728 = fsub fast float %1725, %1727
  %1729 = fmul fast float %1728, 1.000000e+01
  %1730 = call float @dx.op.unary.f32(i32 7, float %1729)  ; Saturate(value)
  %1731 = fmul fast float %1730, %261
  %1732 = fsub fast float %261, %1731
  %1733 = fmul fast float %1732, %1725
  br label %1743

; <label>:1734                                    ; preds = %1709
  %1735 = fmul fast float %1712, %1692
  %1736 = fmul fast float %1712, %1693
  %1737 = fmul fast float %1712, %1694
  %1738 = call float @dx.op.binary.f32(i32 35, float %1736, float %1737)  ; FMax(a,b)
  %1739 = call float @dx.op.binary.f32(i32 35, float %1735, float %1738)  ; FMax(a,b)
  %1740 = call float @dx.op.binary.f32(i32 35, float %1739, float %261)  ; FMax(a,b)
  %1741 = fcmp fast ugt float %1740, 0x3F10000000000000
  br i1 %1741, label %1743, label %1742

; <label>:1742                                    ; preds = %1734
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1743

; <label>:1743                                    ; preds = %1742, %1734, %1713
  %1744 = phi float [ %1715, %1713 ], [ %1735, %1742 ], [ %1735, %1734 ]
  %1745 = phi float [ %1733, %1713 ], [ %1736, %1742 ], [ %1736, %1734 ]
  %1746 = phi float [ %1732, %1713 ], [ %1737, %1742 ], [ %1737, %1734 ]
  %1747 = phi float [ %1732, %1713 ], [ %261, %1742 ], [ %261, %1734 ]
  %1748 = fadd fast float %179, 0x3FE3C6EF40000000
  %1749 = call float @dx.op.unary.f32(i32 22, float %1748)  ; Frc(value)
  %1750 = call float @dx.op.unary.f32(i32 23, float %1744)  ; Log(value)
  %1751 = fadd fast float %1750, -7.000000e+00
  %1752 = call float @dx.op.unary.f32(i32 21, float %1751)  ; Exp(value)
  %1753 = fmul fast float %1749, 2.000000e+00
  %1754 = fadd fast float %1753, -1.000000e+00
  %1755 = fmul fast float %1752, %1754
  %1756 = fcmp fast ogt float %1744, 0.000000e+00
  %1757 = select i1 %1756, float %1755, float 0.000000e+00
  %1758 = fadd fast float %1757, %1744
  %1759 = fadd fast float %179, 0x3FF3C6EF40000000
  %1760 = call float @dx.op.unary.f32(i32 22, float %1759)  ; Frc(value)
  %1761 = call float @dx.op.unary.f32(i32 23, float %1745)  ; Log(value)
  %1762 = fadd fast float %1761, -7.000000e+00
  %1763 = call float @dx.op.unary.f32(i32 21, float %1762)  ; Exp(value)
  %1764 = fmul fast float %1760, 2.000000e+00
  %1765 = fadd fast float %1764, -1.000000e+00
  %1766 = fmul fast float %1763, %1765
  %1767 = fcmp fast ogt float %1745, 0.000000e+00
  %1768 = select i1 %1767, float %1766, float 0.000000e+00
  %1769 = fadd fast float %1768, %1745
  %1770 = fadd fast float %179, 0x3FFDAA66E0000000
  %1771 = call float @dx.op.unary.f32(i32 22, float %1770)  ; Frc(value)
  %1772 = call float @dx.op.unary.f32(i32 23, float %1746)  ; Log(value)
  %1773 = fadd fast float %1772, -6.000000e+00
  %1774 = call float @dx.op.unary.f32(i32 21, float %1773)  ; Exp(value)
  %1775 = fmul fast float %1771, 2.000000e+00
  %1776 = fadd fast float %1775, -1.000000e+00
  %1777 = fmul fast float %1774, %1776
  %1778 = fcmp fast ogt float %1746, 0.000000e+00
  %1779 = select i1 %1778, float %1777, float 0.000000e+00
  %1780 = fadd fast float %1779, %1746
  %1781 = select i1 %96, float %1745, float %1769
  %1782 = select i1 %96, float %1746, float %1780
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1783 = call float @dx.op.binary.f32(i32 36, float %1758, float 3.225500e+04)  ; FMin(a,b)
  %1784 = call float @dx.op.binary.f32(i32 36, float %1781, float 3.225500e+04)  ; FMin(a,b)
  %1785 = call float @dx.op.binary.f32(i32 36, float %1782, float 3.225500e+04)  ; FMin(a,b)
  %1786 = call float @dx.op.binary.f32(i32 36, float %1747, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1783)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1784)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1785)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1786)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1747)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1747)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1747)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1747)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

