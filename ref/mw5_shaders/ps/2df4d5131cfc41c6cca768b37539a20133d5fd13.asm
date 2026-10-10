;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; TEXCOORD                 0   xy          1     NONE   float   xy  
; TEXCOORD                 2   xyzw        2     NONE   float   xyz 
; COLOR                    4   x           3     NONE    uint       
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
; shader hash: 568a732b64e49632c7eebf962cbcacda
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
; TEXCOORD                 2        nointerpolation       
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
; Number of inputs: 13, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10 }
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
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = alloca [3 x float], align 4
  %31 = alloca [3 x float], align 4
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %35 = extractvalue %dx.types.CBufRet.f32 %34, 0
  %36 = fmul fast float %35, %26
  %37 = fmul fast float %35, %27
  %38 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %39 = extractvalue %dx.types.CBufRet.f32 %38, 2
  %40 = extractvalue %dx.types.CBufRet.f32 %38, 3
  %41 = fmul fast float %39, 2.000000e+00
  %42 = fmul fast float %41, %36
  %43 = fmul fast float %40, 2.000000e+00
  %44 = fmul fast float %43, %37
  %45 = fsub fast float 1.000000e+00, %42
  %46 = fsub fast float 1.000000e+00, %44
  %47 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %48 = extractvalue %dx.types.CBufRet.f32 %47, 0
  %49 = extractvalue %dx.types.CBufRet.f32 %47, 1
  %50 = extractvalue %dx.types.CBufRet.f32 %47, 2
  %51 = fmul fast float %45, %48
  %52 = fmul fast float %45, %49
  %53 = fmul fast float %45, %50
  %54 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %55 = extractvalue %dx.types.CBufRet.f32 %54, 0
  %56 = extractvalue %dx.types.CBufRet.f32 %54, 1
  %57 = extractvalue %dx.types.CBufRet.f32 %54, 2
  %58 = fmul fast float %46, %55
  %59 = fmul fast float %46, %56
  %60 = fmul fast float %46, %57
  %61 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %62 = extractvalue %dx.types.CBufRet.f32 %61, 0
  %63 = extractvalue %dx.types.CBufRet.f32 %61, 1
  %64 = extractvalue %dx.types.CBufRet.f32 %61, 2
  %65 = fadd fast float %58, %62
  %66 = fadd fast float %65, %51
  %67 = fadd fast float %59, %63
  %68 = fadd fast float %67, %52
  %69 = fadd fast float %60, %64
  %70 = fadd fast float %69, %53
  %71 = fmul fast float %66, %29
  %72 = fmul fast float %68, %29
  %73 = fmul fast float %70, %29
  %74 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %75 = extractvalue %dx.types.CBufRet.i32 %74, 3
  %76 = and i32 %75, 3
  %77 = icmp ne i32 %76, 0
  %78 = and i32 %75, 4
  %79 = icmp ne i32 %78, 0
  %80 = and i1 %77, %79
  br i1 %80, label %81, label %90

; <label>:81                                      ; preds = %0
  %82 = fmul fast float %40, %37
  %83 = fmul fast float %39, %36
  %84 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %83, float %82, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %85 = extractvalue %dx.types.ResRet.f32 %84, 0
  %86 = fsub fast float 1.000000e+00, %85
  %87 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %88 = extractvalue %dx.types.CBufRet.f32 %87, 0
  %89 = fcmp fast olt float %86, %88
  br label %98

; <label>:90                                      ; preds = %0
  %91 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %92 = extractvalue %dx.types.CBufRet.i32 %91, 3
  %93 = and i32 %92, 3
  %94 = icmp ne i32 %93, 0
  %95 = and i32 %92, 4
  %96 = icmp eq i32 %95, 0
  %97 = and i1 %94, %96
  br label %98

; <label>:98                                      ; preds = %90, %81
  %99 = phi i1 [ %89, %81 ], [ %97, %90 ]
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 2
  %102 = extractvalue %dx.types.CBufRet.f32 %100, 3
  %103 = fmul fast float %101, %36
  %104 = fmul fast float %102, %37
  %105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %106 = extractvalue %dx.types.ResRet.i32 %105, 0
  %107 = and i32 %106, 114688
  %108 = icmp ne i32 %107, 0
  %109 = select i1 %108, float %103, float 0.000000e+00
  %110 = select i1 %108, float %104, float 0.000000e+00
  %111 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %18, float %109, float %110, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %112 = extractvalue %dx.types.ResRet.f32 %111, 0
  %113 = fmul fast float %112, 2.550000e+02
  %114 = fptoui float %113 to i32
  %115 = select i1 %108, i32 %114, i32 0
  %116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 188, i32 undef)  ; BufferLoad(srv,index,wot)
  %117 = extractvalue %dx.types.ResRet.i32 %116, 0
  %118 = fadd fast float %24, %21
  %119 = fadd fast float %25, %22
  %120 = fmul fast float %36, 5.000000e-01
  %121 = fmul fast float %37, 5.000000e-01
  %122 = fptosi float %120 to i32
  %123 = fptosi float %121 to i32
  %124 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %122, i32 %123, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %125 = extractvalue %dx.types.ResRet.i32 %124, 0
  %126 = lshr i32 %125, 18
  %127 = uitofp i32 %126 to float
  %128 = fmul fast float %127, 0x3F4C00EBA0000000
  %129 = call float @dx.op.unary.f32(i32 21, float %128)  ; Exp(value)
  %130 = fadd fast float %129, -1.000000e+00
  %131 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %132 = extractvalue %dx.types.Dimensions %131, 0
  %133 = sitofp i32 %132 to float
  %134 = extractvalue %dx.types.Dimensions %131, 1
  %135 = sitofp i32 %134 to float
  %136 = fcmp fast oge float %120, %133
  %137 = fcmp fast oge float %121, %135
  %138 = or i1 %136, %137
  %139 = select i1 %138, float 0x4197782600000000, float %130
  %140 = fsub fast float %139, %29
  %141 = fcmp fast ogt float %140, 0.000000e+00
  %142 = and i32 %115, -2
  %143 = icmp eq i32 %142, 2
  %144 = and i1 %143, %141
  %145 = xor i1 %141, true
  %146 = icmp eq i32 %115, 1
  %147 = and i1 %146, %145
  %148 = or i1 %144, %147
  %149 = and i32 %117, 262144
  %150 = icmp ne i32 %149, 0
  %151 = and i1 %150, %148
  %152 = xor i1 %148, true
  %153 = and i32 %117, 131072
  %154 = icmp ne i32 %153, 0
  %155 = and i1 %154, %152
  %156 = or i1 %151, %155
  br i1 %156, label %157, label %158

; <label>:157                                     ; preds = %98
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %158

; <label>:158                                     ; preds = %157, %98
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.f32 %159, 2
  %161 = fptosi float %29 to i32
  %162 = sitofp i32 %161 to float
  %163 = fadd fast float %160, %162
  %164 = fmul fast float %163, 0x3FE3C6EF40000000
  %165 = frem fast float %36, 2.560000e+02
  %166 = frem fast float %37, 2.560000e+02
  %167 = fptoui float %165 to i32
  %168 = fptoui float %166 to i32
  %169 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %167, i32 %168, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %170 = extractvalue %dx.types.ResRet.f32 %169, 0
  %171 = fadd fast float %170, %164
  %172 = call float @dx.op.unary.f32(i32 22, float %171)  ; Frc(value)
  %173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %174 = extractvalue %dx.types.ResRet.i32 %173, 0
  %175 = add i32 %174, 0
  %176 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %175, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %177 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %176, %dx.types.Handle %32, float %24, float %25, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %178 = extractvalue %dx.types.ResRet.f32 %177, 0
  %179 = extractvalue %dx.types.ResRet.f32 %177, 1
  %180 = extractvalue %dx.types.ResRet.f32 %177, 2
  %181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %182 = extractvalue %dx.types.ResRet.i32 %181, 0
  %183 = and i32 %182, 255
  %184 = uitofp i32 %183 to float
  %185 = fmul fast float %184, 0x3F70101020000000
  %186 = lshr i32 %182, 8
  %187 = and i32 %186, 255
  %188 = uitofp i32 %187 to float
  %189 = fmul fast float %188, 0x3F70101020000000
  %190 = lshr i32 %182, 16
  %191 = and i32 %190, 255
  %192 = uitofp i32 %191 to float
  %193 = fmul fast float %192, 0x3F70101020000000
  %194 = fmul fast float %185, %185
  %195 = fmul fast float %194, %178
  %196 = fmul fast float %189, %189
  %197 = fmul fast float %196, %179
  %198 = fmul fast float %193, %193
  %199 = fmul fast float %198, %180
  %200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %201 = extractvalue %dx.types.ResRet.i32 %200, 0
  %202 = add i32 %201, 0
  %203 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %202, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %204 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %203, %dx.types.Handle %32, float %118, float %119, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %205 = extractvalue %dx.types.ResRet.f32 %204, 0
  %206 = extractvalue %dx.types.ResRet.f32 %204, 1
  %207 = extractvalue %dx.types.ResRet.f32 %204, 2
  %208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %209 = extractvalue %dx.types.ResRet.i32 %208, 0
  %210 = and i32 %209, 255
  %211 = uitofp i32 %210 to float
  %212 = fmul fast float %211, 0x3F70101020000000
  %213 = lshr i32 %209, 8
  %214 = and i32 %213, 255
  %215 = uitofp i32 %214 to float
  %216 = fmul fast float %215, 0x3F70101020000000
  %217 = lshr i32 %209, 16
  %218 = and i32 %217, 255
  %219 = uitofp i32 %218 to float
  %220 = fmul fast float %219, 0x3F70101020000000
  %221 = fmul fast float %212, %212
  %222 = fmul fast float %221, %205
  %223 = fmul fast float %216, %216
  %224 = fmul fast float %223, %206
  %225 = fmul fast float %220, %220
  %226 = fmul fast float %225, %207
  %227 = fsub fast float %222, %195
  %228 = fsub fast float %224, %197
  %229 = fsub fast float %226, %199
  %230 = fmul fast float %227, %23
  %231 = fmul fast float %228, %23
  %232 = fmul fast float %229, %23
  %233 = fadd fast float %230, %195
  %234 = fadd fast float %231, %197
  %235 = fadd fast float %232, %199
  %236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.i32 %236, 0
  %238 = and i32 %237, 255
  %239 = uitofp i32 %238 to float
  %240 = fmul fast float %239, 0x3F70101020000000
  %241 = fmul fast float %240, %240
  %242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 124, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.i32 %242, 0
  %244 = add i32 %243, 0
  %245 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %244, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %246 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %245, %dx.types.Handle %33, float %24, float %25, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %247 = extractvalue %dx.types.ResRet.f32 %246, 0
  %248 = fmul fast float %241, %247
  %249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %250 = extractvalue %dx.types.ResRet.i32 %249, 0
  %251 = and i32 %250, 255
  %252 = uitofp i32 %251 to float
  %253 = fmul fast float %252, 0x3F70101020000000
  %254 = fmul fast float %253, %253
  %255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 124, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.i32 %255, 0
  %257 = add i32 %256, 0
  %258 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %257, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %259 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %258, %dx.types.Handle %33, float %118, float %119, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %260 = extractvalue %dx.types.ResRet.f32 %259, 0
  %261 = fmul fast float %254, %260
  %262 = fsub fast float %261, %248
  %263 = fmul fast float %262, %23
  %264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %265 = extractvalue %dx.types.CBufRet.f32 %264, 0
  %266 = fmul fast float %265, %233
  %267 = fmul fast float %265, %234
  %268 = fmul fast float %265, %235
  %269 = call float @dx.op.dot3.f32(i32 55, float %266, float %267, float %268, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = and i32 %271, 255
  %273 = uitofp i32 %272 to float
  %274 = lshr i32 %271, 8
  %275 = and i32 %274, 255
  %276 = uitofp i32 %275 to float
  %277 = fmul fast float %276, %269
  %278 = fadd fast float %277, %273
  %279 = fmul fast float %278, 0x3F70101020000000
  %280 = call float @dx.op.unary.f32(i32 7, float %279)  ; Saturate(value)
  %281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 104, i32 undef)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.i32 %281, 0
  %283 = bitcast i32 %282 to float
  %284 = fcmp fast oge float %283, 0.000000e+00
  %285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %286 = extractvalue %dx.types.CBufRet.f32 %285, 0
  %287 = select i1 %284, float %283, float %286
  %288 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %122, i32 %123, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = lshr i32 %289, 18
  %291 = uitofp i32 %290 to float
  %292 = fmul fast float %291, 0x3F4C00EBA0000000
  %293 = call float @dx.op.unary.f32(i32 21, float %292)  ; Exp(value)
  %294 = fadd fast float %293, -1.000000e+00
  %295 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %296 = extractvalue %dx.types.Dimensions %295, 0
  %297 = sitofp i32 %296 to float
  %298 = extractvalue %dx.types.Dimensions %295, 1
  %299 = sitofp i32 %298 to float
  %300 = fcmp fast oge float %120, %297
  %301 = fcmp fast oge float %121, %299
  %302 = or i1 %300, %301
  %303 = select i1 %302, float 0x4197782600000000, float %294
  %304 = fadd fast float %263, %248
  %305 = call float @dx.op.dot3.f32(i32 55, float %304, float %304, float %304, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %306 = fsub fast float 1.000000e+00, %305
  %307 = fmul fast float %287, %280
  %308 = fsub fast float 1.000000e+00, %280
  %309 = call float @dx.op.unary.f32(i32 7, float %308)  ; Saturate(value)
  %310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %311 = extractvalue %dx.types.CBufRet.f32 %310, 3
  %312 = fmul fast float %311, %309
  %313 = fadd fast float %312, %307
  %314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %315 = extractvalue %dx.types.CBufRet.f32 %314, 3
  %316 = icmp eq i32 %115, 3
  %317 = fcmp fast ogt float %29, %303
  %318 = and i1 %146, %317
  %319 = or i1 %316, %318
  %320 = icmp eq i32 %115, 2
  %321 = fcmp fast ole float %29, %303
  %322 = and i1 %320, %321
  %323 = or i1 %322, %319
  br i1 %318, label %324, label %463

; <label>:324                                     ; preds = %158
  %325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %326 = extractvalue %dx.types.CBufRet.f32 %325, 2
  %327 = extractvalue %dx.types.CBufRet.f32 %325, 3
  %328 = fmul fast float %326, %36
  %329 = fmul fast float %327, %37
  %330 = call float @dx.op.unary.f32(i32 7, float %328)  ; Saturate(value)
  %331 = call float @dx.op.unary.f32(i32 7, float %329)  ; Saturate(value)
  %332 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %17, float %330, float %331, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %333 = extractvalue %dx.types.ResRet.f32 %332, 0
  %334 = extractvalue %dx.types.ResRet.f32 %332, 1
  %335 = extractvalue %dx.types.ResRet.f32 %332, 2
  %336 = extractvalue %dx.types.ResRet.f32 %332, 3
  %337 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %17, float %330, float %331, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %338 = extractvalue %dx.types.ResRet.f32 %337, 0
  %339 = extractvalue %dx.types.ResRet.f32 %337, 1
  %340 = extractvalue %dx.types.ResRet.f32 %337, 2
  %341 = extractvalue %dx.types.ResRet.f32 %337, 3
  %342 = call float @dx.op.binary.f32(i32 35, float %334, float %335)  ; FMax(a,b)
  %343 = call float @dx.op.binary.f32(i32 35, float %333, float %342)  ; FMax(a,b)
  %344 = call float @dx.op.binary.f32(i32 35, float %343, float %336)  ; FMax(a,b)
  %345 = call float @dx.op.binary.f32(i32 36, float %339, float %340)  ; FMin(a,b)
  %346 = call float @dx.op.binary.f32(i32 36, float %338, float %345)  ; FMin(a,b)
  %347 = call float @dx.op.binary.f32(i32 36, float %346, float %341)  ; FMin(a,b)
  %348 = fmul fast float %344, 2.550000e+02
  %349 = fadd fast float %348, 0x3F70101020000000
  %350 = fptoui float %349 to i32
  %351 = fmul fast float %347, 2.550000e+02
  %352 = fadd fast float %351, 0x3F70101020000000
  %353 = fptoui float %352 to i32
  %354 = icmp ult i32 %350, %353
  br i1 %354, label %355, label %406

; <label>:355                                     ; preds = %324
  %356 = fcmp fast ogt float %28, 9.843750e-01
  %357 = fadd fast float %29, -4.000000e+00
  %358 = select i1 %356, float -4.000000e+00, float %357
  %359 = call float @dx.op.binary.f32(i32 35, float %358, float 0.000000e+00)  ; FMax(a,b)
  %360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %361 = extractvalue %dx.types.CBufRet.f32 %360, 0
  %362 = fadd fast float %361, %359
  %363 = extractvalue %dx.types.CBufRet.f32 %360, 2
  %364 = fmul fast float %362, %363
  %365 = call float @dx.op.unary.f32(i32 23, float %364)  ; Log(value)
  %366 = extractvalue %dx.types.CBufRet.f32 %360, 3
  %367 = fmul fast float %366, %365
  %368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %369 = extractvalue %dx.types.CBufRet.f32 %368, 2
  %370 = fmul fast float %367, %369
  %371 = call float @dx.op.unary.f32(i32 7, float %370)  ; Saturate(value)
  %372 = uitofp i32 %350 to float
  %373 = uitofp i32 %353 to float
  %374 = fadd fast float %372, 5.000000e-01
  %375 = fadd fast float %373, 5.000000e-01
  %376 = fmul fast float %369, %374
  %377 = fmul fast float %369, %375
  %378 = fadd fast float %376, 0x3F0FFB4800000000
  %379 = fadd fast float %377, 0xBF0FFB4800000000
  %380 = call float @dx.op.binary.f32(i32 35, float %371, float %378)  ; FMax(a,b)
  %381 = call float @dx.op.binary.f32(i32 36, float %380, float %379)  ; FMin(a,b)
  %382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %383 = extractvalue %dx.types.CBufRet.f32 %382, 1
  %384 = extractvalue %dx.types.CBufRet.f32 %382, 2
  %385 = extractvalue %dx.types.CBufRet.f32 %382, 0
  %386 = fmul fast float %383, %381
  %387 = fadd fast float %385, %386
  %388 = fadd fast float %385, %384
  %389 = fsub fast float %383, %384
  %390 = fadd fast float %389, %385
  %391 = call float @dx.op.binary.f32(i32 35, float %387, float %388)  ; FMax(a,b)
  %392 = call float @dx.op.binary.f32(i32 36, float %391, float %390)  ; FMin(a,b)
  %393 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %16, float %330, float %331, float %392, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %394 = extractvalue %dx.types.ResRet.f32 %393, 0
  %395 = extractvalue %dx.types.ResRet.f32 %393, 1
  %396 = extractvalue %dx.types.ResRet.f32 %393, 2
  %397 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %330, float %331, float %392, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %398 = extractvalue %dx.types.ResRet.f32 %397, 0
  %399 = extractvalue %dx.types.ResRet.f32 %397, 1
  %400 = extractvalue %dx.types.ResRet.f32 %397, 2
  %401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %402 = extractvalue %dx.types.CBufRet.f32 %401, 1
  %403 = fmul fast float %402, %398
  %404 = fmul fast float %402, %399
  %405 = fmul fast float %402, %400
  br label %406

; <label>:406                                     ; preds = %355, %324
  %407 = phi float [ %394, %355 ], [ 1.000000e+00, %324 ]
  %408 = phi float [ %395, %355 ], [ 1.000000e+00, %324 ]
  %409 = phi float [ %396, %355 ], [ 1.000000e+00, %324 ]
  %410 = phi float [ %403, %355 ], [ 0.000000e+00, %324 ]
  %411 = phi float [ %404, %355 ], [ 0.000000e+00, %324 ]
  %412 = phi float [ %405, %355 ], [ 0.000000e+00, %324 ]
  %413 = fmul fast float %410, %306
  %414 = fmul fast float %411, %306
  %415 = fmul fast float %412, %306
  %416 = call float @dx.op.dot3.f32(i32 55, float %407, float %408, float %409, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %417 = call float @dx.op.dot3.f32(i32 55, float %413, float %414, float %415, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %418 = select i1 %99, float %416, float %407
  %419 = select i1 %99, float %416, float %408
  %420 = select i1 %99, float 1.000000e+00, float %409
  %421 = select i1 %99, float %417, float %413
  %422 = select i1 %99, float 0.000000e+00, float %414
  %423 = select i1 %99, float 0.000000e+00, float %415
  %424 = fmul fast float %418, %266
  %425 = fmul fast float %419, %267
  %426 = fmul fast float %420, %268
  %427 = fadd fast float %424, %421
  %428 = fadd fast float %425, %422
  %429 = fadd fast float %423, %426
  %430 = fmul fast float %36, 2.000000e+00
  %431 = fmul fast float %430, %326
  %432 = fmul fast float %37, 2.000000e+00
  %433 = fmul fast float %432, %327
  %434 = fsub fast float 1.000000e+00, %431
  %435 = fsub fast float 1.000000e+00, %433
  %436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %437 = extractvalue %dx.types.CBufRet.f32 %436, 0
  %438 = extractvalue %dx.types.CBufRet.f32 %436, 1
  %439 = extractvalue %dx.types.CBufRet.f32 %436, 2
  %440 = fmul fast float %434, %437
  %441 = fmul fast float %434, %438
  %442 = fmul fast float %434, %439
  %443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %444 = extractvalue %dx.types.CBufRet.f32 %443, 0
  %445 = extractvalue %dx.types.CBufRet.f32 %443, 1
  %446 = extractvalue %dx.types.CBufRet.f32 %443, 2
  %447 = fmul fast float %435, %444
  %448 = fmul fast float %435, %445
  %449 = fmul fast float %435, %446
  %450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %451 = extractvalue %dx.types.CBufRet.f32 %450, 0
  %452 = extractvalue %dx.types.CBufRet.f32 %450, 1
  %453 = extractvalue %dx.types.CBufRet.f32 %450, 2
  %454 = fadd fast float %447, %451
  %455 = fadd fast float %454, %440
  %456 = fadd fast float %448, %452
  %457 = fadd fast float %456, %441
  %458 = fadd fast float %449, %453
  %459 = fadd fast float %458, %442
  %460 = fmul fast float %455, %303
  %461 = fmul fast float %457, %303
  %462 = fmul fast float %459, %303
  br label %463

; <label>:463                                     ; preds = %406, %158
  %464 = phi float [ %460, %406 ], [ %71, %158 ]
  %465 = phi float [ %461, %406 ], [ %72, %158 ]
  %466 = phi float [ %462, %406 ], [ %73, %158 ]
  %467 = phi float [ %303, %406 ], [ %29, %158 ]
  %468 = phi float [ %427, %406 ], [ %266, %158 ]
  %469 = phi float [ %428, %406 ], [ %267, %158 ]
  %470 = phi float [ %429, %406 ], [ %268, %158 ]
  %471 = phi float [ %407, %406 ], [ 1.000000e+00, %158 ]
  br i1 %323, label %1620, label %472

; <label>:472                                     ; preds = %463
  %473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %474 = extractvalue %dx.types.CBufRet.f32 %473, 0
  %475 = extractvalue %dx.types.CBufRet.f32 %473, 1
  %476 = extractvalue %dx.types.CBufRet.f32 %473, 2
  %477 = extractvalue %dx.types.CBufRet.f32 %473, 3
  %478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %479 = extractvalue %dx.types.CBufRet.f32 %478, 0
  %480 = extractvalue %dx.types.CBufRet.f32 %478, 1
  %481 = extractvalue %dx.types.CBufRet.f32 %478, 2
  %482 = extractvalue %dx.types.CBufRet.f32 %478, 3
  %483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %484 = extractvalue %dx.types.CBufRet.f32 %483, 0
  %485 = extractvalue %dx.types.CBufRet.f32 %483, 1
  %486 = extractvalue %dx.types.CBufRet.f32 %483, 2
  %487 = extractvalue %dx.types.CBufRet.f32 %483, 3
  %488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %489 = extractvalue %dx.types.CBufRet.f32 %488, 0
  %490 = extractvalue %dx.types.CBufRet.f32 %488, 1
  %491 = extractvalue %dx.types.CBufRet.f32 %488, 2
  %492 = extractvalue %dx.types.CBufRet.f32 %488, 3
  %493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %494 = extractvalue %dx.types.CBufRet.f32 %493, 3
  %495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %496 = extractvalue %dx.types.CBufRet.f32 %495, 3
  %497 = extractvalue %dx.types.CBufRet.f32 %495, 0
  %498 = extractvalue %dx.types.CBufRet.f32 %495, 1
  %499 = extractvalue %dx.types.CBufRet.f32 %495, 2
  %500 = fcmp fast olt float %499, -5.000000e-01
  %501 = call float @dx.op.dot3.f32(i32 55, float %464, float %465, float %466, float %464, float %465, float %466)  ; Dot3(ax,ay,az,bx,by,bz)
  %502 = call float @dx.op.unary.f32(i32 25, float %501)  ; Rsqrt(value)
  %503 = fmul fast float %502, %501
  %504 = fmul fast float %502, %464
  %505 = fmul fast float %502, %465
  %506 = fmul fast float %502, %466
  %507 = fadd fast float %503, %477
  %508 = call float @dx.op.dot3.f32(i32 55, float %504, float %505, float %506, float %474, float %475, float %476)  ; Dot3(ax,ay,az,bx,by,bz)
  %509 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %510 = extractvalue %dx.types.CBufRet.i32 %509, 1
  %511 = and i32 %510, 1
  %512 = icmp ne i32 %511, 0
  %513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %514 = extractvalue %dx.types.CBufRet.f32 %513, 2
  %515 = fcmp fast ogt float %514, 0.000000e+00
  %516 = and i1 %512, %515
  br i1 %516, label %517, label %923, !dx.controlflow.hints !53

; <label>:517                                     ; preds = %472
  %518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %519 = extractvalue %dx.types.CBufRet.f32 %518, 3
  %520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %521 = extractvalue %dx.types.CBufRet.f32 %520, 2
  %522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %523 = extractvalue %dx.types.CBufRet.f32 %522, 2
  %524 = fsub fast float %521, %523
  %525 = and i32 %510, 2
  %526 = extractvalue %dx.types.CBufRet.i32 %509, 0
  %527 = call i32 @dx.op.binary.i32(i32 40, i32 %526, i32 3)  ; UMin(a,b)
  %528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %529 = extractvalue %dx.types.CBufRet.f32 %528, 0
  %530 = extractvalue %dx.types.CBufRet.f32 %528, 1
  %531 = extractvalue %dx.types.CBufRet.f32 %522, 0
  %532 = extractvalue %dx.types.CBufRet.f32 %522, 1
  %533 = fsub fast float %529, %531
  %534 = fsub fast float %530, %532
  %535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %536 = extractvalue %dx.types.CBufRet.f32 %535, 0
  %537 = fcmp fast ogt float %536, 0.000000e+00
  %538 = fsub fast float -0.000000e+00, %533
  %539 = fsub fast float -0.000000e+00, %534
  %540 = call float @dx.op.dot2.f32(i32 54, float %504, float %505, float %504, float %505)  ; Dot2(ax,ay,bx,by)
  %541 = call float @dx.op.dot2.f32(i32 54, float %504, float %505, float %538, float %539)  ; Dot2(ax,ay,bx,by)
  %542 = fmul fast float %541, 2.000000e+00
  %543 = call float @dx.op.dot2.f32(i32 54, float %538, float %539, float %538, float %539)  ; Dot2(ax,ay,bx,by)
  %544 = fmul fast float %536, %536
  %545 = fsub fast float %543, %544
  %546 = fmul fast float %542, %542
  %547 = fmul fast float %540, 4.000000e+00
  %548 = fmul fast float %547, %545
  %549 = fsub fast float %546, %548
  %550 = fcmp fast ogt float %549, 0.000000e+00
  br i1 %550, label %551, label %566

; <label>:551                                     ; preds = %517
  %552 = fcmp fast ogt float %542, 0.000000e+00
  %553 = call float @dx.op.unary.f32(i32 24, float %549)  ; Sqrt(value)
  %554 = fsub fast float -0.000000e+00, %553
  %555 = select i1 %552, float %553, float %554
  %556 = fadd fast float %555, %542
  %557 = fmul float %556, -5.000000e-01
  %558 = fdiv fast float %557, %540
  %559 = call float @dx.op.binary.f32(i32 35, float %558, float 0.000000e+00)  ; FMax(a,b)
  %560 = call float @dx.op.binary.f32(i32 36, float %503, float %559)  ; FMin(a,b)
  %561 = fdiv fast float %545, %557
  %562 = call float @dx.op.binary.f32(i32 35, float %561, float 0.000000e+00)  ; FMax(a,b)
  %563 = call float @dx.op.binary.f32(i32 36, float %503, float %562)  ; FMin(a,b)
  %564 = call float @dx.op.binary.f32(i32 36, float %560, float %563)  ; FMin(a,b)
  %565 = call float @dx.op.binary.f32(i32 35, float %560, float %563)  ; FMax(a,b)
  br label %566

; <label>:566                                     ; preds = %551, %517
  %567 = phi float [ %565, %551 ], [ -1.000000e+00, %517 ]
  %568 = phi float [ %564, %551 ], [ -1.000000e+00, %517 ]
  %569 = phi i1 [ true, %551 ], [ false, %517 ]
  %570 = and i1 %537, %569
  br i1 %570, label %571, label %573

; <label>:571                                     ; preds = %566
  %572 = fcmp fast oeq float %568, %567
  br i1 %572, label %876, label %574

; <label>:573                                     ; preds = %566
  br i1 %537, label %876, label %574

; <label>:574                                     ; preds = %573, %571
  %575 = phi float [ %503, %573 ], [ %567, %571 ]
  %576 = phi float [ 0.000000e+00, %573 ], [ %568, %571 ]
  %577 = icmp ne i32 %525, 0
  %578 = fmul fast float %575, %506
  %579 = fadd fast float %578, %519
  %580 = fmul fast float %579, %575
  %581 = select i1 %577, float 0.000000e+00, float %580
  %582 = fcmp fast oeq float %506, 0.000000e+00
  %583 = fdiv fast float %524, %506
  %584 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %583)  ; FMax(a,b)
  %585 = select i1 %582, float %575, float %584
  %586 = call float @dx.op.binary.f32(i32 36, float %575, float %585)  ; FMin(a,b)
  %587 = fcmp fast ogt float %506, 0.000000e+00
  %588 = fcmp fast olt float %524, 0.000000e+00
  br i1 %587, label %589, label %646

; <label>:589                                     ; preds = %574
  %590 = icmp eq i32 %525, 0
  br i1 %588, label %591, label %635

; <label>:591                                     ; preds = %589
  %592 = select i1 %590, float %575, float 0.000000e+00
  %593 = fsub fast float -0.000000e+00, %592
  %594 = call float @dx.op.unary.f32(i32 6, float %593)  ; FAbs(value)
  %595 = fmul fast float %592, %506
  %596 = fadd fast float %595, %519
  %597 = fmul fast float %594, %596
  %598 = fsub fast float %581, %597
  %599 = fsub fast float %575, %594
  %600 = select i1 %590, float %599, float 0.000000e+00
  %601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %602 = extractvalue %dx.types.CBufRet.f32 %601, 0
  %603 = extractvalue %dx.types.CBufRet.f32 %601, 1
  %604 = extractvalue %dx.types.CBufRet.f32 %601, 2
  %605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %606 = extractvalue %dx.types.CBufRet.f32 %605, 0
  %607 = extractvalue %dx.types.CBufRet.f32 %605, 1
  %608 = extractvalue %dx.types.CBufRet.f32 %605, 2
  %609 = extractvalue %dx.types.CBufRet.f32 %605, 3
  %610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %611 = extractvalue %dx.types.CBufRet.f32 %610, 3
  %612 = call float @dx.op.binary.f32(i32 36, float %598, float %611)  ; FMin(a,b)
  %613 = fmul fast float %609, %600
  %614 = call float @dx.op.unary.f32(i32 7, float %613)  ; Saturate(value)
  %615 = fsub fast float %606, %602
  %616 = fsub fast float %607, %603
  %617 = fsub fast float %608, %604
  %618 = fmul fast float %614, %615
  %619 = fmul fast float %614, %616
  %620 = fmul fast float %614, %617
  %621 = fadd fast float %618, %602
  %622 = fadd fast float %619, %603
  %623 = fadd fast float %620, %604
  %624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %625 = extractvalue %dx.types.CBufRet.f32 %624, 0
  %626 = extractvalue %dx.types.CBufRet.f32 %624, 1
  %627 = fadd fast float %626, %625
  %628 = call float @dx.op.unary.f32(i32 7, float %627)  ; Saturate(value)
  %629 = extractvalue %dx.types.CBufRet.f32 %624, 2
  %630 = extractvalue %dx.types.CBufRet.f32 %624, 3
  %631 = fadd fast float %630, %629
  %632 = call float @dx.op.unary.f32(i32 7, float %631)  ; Saturate(value)
  %633 = fmul fast float %628, %612
  %634 = fmul fast float %633, %632
  br label %876

; <label>:635                                     ; preds = %589
  br i1 %590, label %636, label %657

; <label>:636                                     ; preds = %635
  %637 = call float @dx.op.binary.f32(i32 36, float %586, float %576)  ; FMin(a,b)
  %638 = fsub fast float %586, %637
  %639 = fsub fast float %638, %575
  %640 = call float @dx.op.unary.f32(i32 6, float %639)  ; FAbs(value)
  %641 = fadd fast float %638, %575
  %642 = fmul fast float %641, %506
  %643 = fadd fast float %642, %519
  %644 = fmul fast float %643, %640
  %645 = fsub fast float %581, %644
  br label %657

; <label>:646                                     ; preds = %574
  br i1 %588, label %647, label %657

; <label>:647                                     ; preds = %646
  %648 = call float @dx.op.binary.f32(i32 35, float %576, float %586)  ; FMax(a,b)
  %649 = icmp eq i32 %525, 0
  %650 = select i1 %649, float %586, float 0.000000e+00
  %651 = fsub fast float -0.000000e+00, %650
  %652 = call float @dx.op.unary.f32(i32 6, float %651)  ; FAbs(value)
  %653 = fmul fast float %650, %506
  %654 = fadd fast float %653, %519
  %655 = fmul fast float %652, %654
  %656 = fsub fast float %581, %655
  br label %657

; <label>:657                                     ; preds = %647, %646, %636, %635
  %658 = phi float [ %576, %635 ], [ %576, %636 ], [ %648, %647 ], [ %576, %646 ]
  %659 = phi float [ 0.000000e+00, %635 ], [ %640, %636 ], [ %652, %647 ], [ 0.000000e+00, %646 ]
  %660 = phi float [ %581, %635 ], [ %645, %636 ], [ %656, %647 ], [ %581, %646 ]
  %661 = phi float [ %586, %635 ], [ %586, %636 ], [ %575, %647 ], [ %575, %646 ]
  %662 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 0
  store float -1.000000e+00, float* %662, align 4, !tbaa !54, !noalias !58
  %663 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 1
  store float -1.000000e+00, float* %663, align 4, !tbaa !54, !noalias !58
  %664 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 2
  store float -1.000000e+00, float* %664, align 4, !tbaa !54, !noalias !58
  %665 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 0
  store float -1.000000e+00, float* %665, align 4, !tbaa !54, !noalias !58
  %666 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 1
  store float -1.000000e+00, float* %666, align 4, !tbaa !54, !noalias !58
  %667 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 2
  store float -1.000000e+00, float* %667, align 4, !tbaa !54, !noalias !58
  %668 = icmp sgt i32 %527, 0
  br i1 %668, label %669, label %730

; <label>:669                                     ; preds = %657
  br label %670

; <label>:670                                     ; preds = %719, %669
  %671 = phi i32 [ %720, %719 ], [ 0, %669 ]
  %672 = phi i32 [ %721, %719 ], [ 0, %669 ]
  %673 = add nuw i32 %672, 171
  %674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 %673)  ; CBufferLoadLegacy(handle,regIndex)
  %675 = extractvalue %dx.types.CBufRet.f32 %674, 0
  %676 = extractvalue %dx.types.CBufRet.f32 %674, 1
  %677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %678 = extractvalue %dx.types.CBufRet.f32 %677, 0
  %679 = extractvalue %dx.types.CBufRet.f32 %677, 1
  %680 = fsub fast float %675, %678
  %681 = fsub fast float %676, %679
  %682 = extractvalue %dx.types.CBufRet.f32 %674, 2
  %683 = fsub fast float -0.000000e+00, %680
  %684 = fsub fast float -0.000000e+00, %681
  %685 = call float @dx.op.dot2.f32(i32 54, float %504, float %505, float %683, float %684)  ; Dot2(ax,ay,bx,by)
  %686 = fmul fast float %685, 2.000000e+00
  %687 = call float @dx.op.dot2.f32(i32 54, float %683, float %684, float %683, float %684)  ; Dot2(ax,ay,bx,by)
  %688 = fmul fast float %682, %682
  %689 = fsub fast float %687, %688
  %690 = fmul fast float %686, %686
  %691 = fmul fast float %547, %689
  %692 = fsub fast float %690, %691
  %693 = fcmp fast ogt float %692, 0.000000e+00
  br i1 %693, label %694, label %709

; <label>:694                                     ; preds = %670
  %695 = fcmp fast ogt float %686, 0.000000e+00
  %696 = call float @dx.op.unary.f32(i32 24, float %692)  ; Sqrt(value)
  %697 = fsub fast float -0.000000e+00, %696
  %698 = select i1 %695, float %696, float %697
  %699 = fadd fast float %698, %686
  %700 = fmul float %699, -5.000000e-01
  %701 = fdiv fast float %700, %540
  %702 = call float @dx.op.binary.f32(i32 35, float %701, float 0.000000e+00)  ; FMax(a,b)
  %703 = call float @dx.op.binary.f32(i32 36, float %575, float %702)  ; FMin(a,b)
  %704 = fdiv fast float %689, %700
  %705 = call float @dx.op.binary.f32(i32 35, float %704, float 0.000000e+00)  ; FMax(a,b)
  %706 = call float @dx.op.binary.f32(i32 36, float %575, float %705)  ; FMin(a,b)
  %707 = call float @dx.op.binary.f32(i32 36, float %703, float %706)  ; FMin(a,b)
  %708 = call float @dx.op.binary.f32(i32 35, float %703, float %706)  ; FMax(a,b)
  br label %709

; <label>:709                                     ; preds = %694, %670
  %710 = phi float [ %708, %694 ], [ -1.000000e+00, %670 ]
  %711 = phi float [ %707, %694 ], [ -1.000000e+00, %670 ]
  %712 = phi i1 [ true, %694 ], [ false, %670 ]
  br i1 %712, label %713, label %719

; <label>:713                                     ; preds = %709
  %714 = call float @dx.op.binary.f32(i32 35, float %658, float %711)  ; FMax(a,b)
  %715 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 %672
  store float %714, float* %715, align 4, !tbaa !54, !noalias !58
  %716 = call float @dx.op.binary.f32(i32 35, float %658, float %710)  ; FMax(a,b)
  %717 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 %672
  store float %716, float* %717, align 4, !tbaa !54, !noalias !58
  %718 = add nsw i32 %671, 1
  br label %719

; <label>:719                                     ; preds = %713, %709
  %720 = phi i32 [ %718, %713 ], [ %671, %709 ]
  %721 = add nuw nsw i32 %672, 1
  %722 = icmp eq i32 %721, %527
  br i1 %722, label %723, label %670

; <label>:723                                     ; preds = %719
  %724 = load float, float* %664, align 4, !tbaa !54, !alias.scope !74, !noalias !77
  %725 = load float, float* %663, align 4, !tbaa !54, !alias.scope !80, !noalias !81
  %726 = load float, float* %662, align 4, !tbaa !54, !alias.scope !82, !noalias !83
  %727 = load float, float* %667, align 4, !tbaa !54, !alias.scope !84, !noalias !87
  %728 = load float, float* %666, align 4, !tbaa !54, !alias.scope !90, !noalias !91
  %729 = load float, float* %665, align 4, !tbaa !54, !alias.scope !92, !noalias !93
  br label %730

; <label>:730                                     ; preds = %723, %657
  %731 = phi float [ -1.000000e+00, %657 ], [ %729, %723 ]
  %732 = phi float [ -1.000000e+00, %657 ], [ %728, %723 ]
  %733 = phi float [ -1.000000e+00, %657 ], [ %727, %723 ]
  %734 = phi float [ -1.000000e+00, %657 ], [ %726, %723 ]
  %735 = phi float [ -1.000000e+00, %657 ], [ %725, %723 ]
  %736 = phi float [ -1.000000e+00, %657 ], [ %724, %723 ]
  %737 = phi i32 [ 0, %657 ], [ %720, %723 ]
  %738 = call float @dx.op.binary.f32(i32 36, float %735, float %736)  ; FMin(a,b)
  %739 = call float @dx.op.binary.f32(i32 36, float %734, float %738)  ; FMin(a,b)
  %740 = call float @dx.op.binary.f32(i32 35, float %734, float %735)  ; FMax(a,b)
  %741 = call float @dx.op.binary.f32(i32 36, float %740, float %736)  ; FMin(a,b)
  %742 = call float @dx.op.binary.f32(i32 36, float %734, float %735)  ; FMin(a,b)
  %743 = call float @dx.op.binary.f32(i32 35, float %742, float %741)  ; FMax(a,b)
  %744 = call float @dx.op.binary.f32(i32 35, float %735, float %736)  ; FMax(a,b)
  %745 = call float @dx.op.binary.f32(i32 35, float %734, float %744)  ; FMax(a,b)
  store float %739, float* %662, align 4, !tbaa !54, !alias.scope !82, !noalias !83
  store float %743, float* %663, align 4, !tbaa !54, !alias.scope !80, !noalias !81
  store float %745, float* %664, align 4, !tbaa !54, !alias.scope !74, !noalias !77
  %746 = call float @dx.op.binary.f32(i32 36, float %732, float %733)  ; FMin(a,b)
  %747 = call float @dx.op.binary.f32(i32 36, float %731, float %746)  ; FMin(a,b)
  %748 = call float @dx.op.binary.f32(i32 35, float %731, float %732)  ; FMax(a,b)
  %749 = call float @dx.op.binary.f32(i32 36, float %748, float %733)  ; FMin(a,b)
  %750 = call float @dx.op.binary.f32(i32 36, float %731, float %732)  ; FMin(a,b)
  %751 = call float @dx.op.binary.f32(i32 35, float %750, float %749)  ; FMax(a,b)
  %752 = call float @dx.op.binary.f32(i32 35, float %732, float %733)  ; FMax(a,b)
  %753 = call float @dx.op.binary.f32(i32 35, float %731, float %752)  ; FMax(a,b)
  store float %747, float* %665, align 4, !tbaa !54, !alias.scope !92, !noalias !93
  store float %751, float* %666, align 4, !tbaa !54, !alias.scope !90, !noalias !91
  store float %753, float* %667, align 4, !tbaa !54, !alias.scope !84, !noalias !87
  %754 = sub nsw i32 3, %737
  %755 = icmp sgt i32 %754, 2
  br i1 %755, label %756, label %794

; <label>:756                                     ; preds = %730
  %757 = icmp eq i32 %525, 0
  %758 = fsub fast float %575, %659
  %759 = select i1 %757, float %758, float %659
  %760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %761 = extractvalue %dx.types.CBufRet.f32 %760, 0
  %762 = extractvalue %dx.types.CBufRet.f32 %760, 1
  %763 = extractvalue %dx.types.CBufRet.f32 %760, 2
  %764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %765 = extractvalue %dx.types.CBufRet.f32 %764, 0
  %766 = extractvalue %dx.types.CBufRet.f32 %764, 1
  %767 = extractvalue %dx.types.CBufRet.f32 %764, 2
  %768 = extractvalue %dx.types.CBufRet.f32 %764, 3
  %769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %770 = extractvalue %dx.types.CBufRet.f32 %769, 3
  %771 = call float @dx.op.binary.f32(i32 36, float %660, float %770)  ; FMin(a,b)
  %772 = fmul fast float %768, %759
  %773 = call float @dx.op.unary.f32(i32 7, float %772)  ; Saturate(value)
  %774 = fsub fast float %765, %761
  %775 = fsub fast float %766, %762
  %776 = fsub fast float %767, %763
  %777 = fmul fast float %773, %774
  %778 = fmul fast float %773, %775
  %779 = fmul fast float %773, %776
  %780 = fadd fast float %777, %761
  %781 = fadd fast float %778, %762
  %782 = fadd fast float %779, %763
  %783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %784 = extractvalue %dx.types.CBufRet.f32 %783, 0
  %785 = extractvalue %dx.types.CBufRet.f32 %783, 1
  %786 = fadd fast float %785, %784
  %787 = call float @dx.op.unary.f32(i32 7, float %786)  ; Saturate(value)
  %788 = extractvalue %dx.types.CBufRet.f32 %783, 2
  %789 = extractvalue %dx.types.CBufRet.f32 %783, 3
  %790 = fadd fast float %789, %788
  %791 = call float @dx.op.unary.f32(i32 7, float %790)  ; Saturate(value)
  %792 = fmul fast float %787, %771
  %793 = fmul fast float %792, %791
  br label %876

; <label>:794                                     ; preds = %730
  %795 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 %754
  %796 = load float, float* %795, align 4, !tbaa !54, !noalias !58
  %797 = fcmp fast olt float %796, %661
  %798 = icmp sgt i32 %737, 0
  %799 = and i1 %798, %797
  br i1 %799, label %800, label %837

; <label>:800                                     ; preds = %794
  br label %801

; <label>:801                                     ; preds = %830, %800
  %802 = phi float [ %831, %830 ], [ %659, %800 ]
  %803 = phi float [ %832, %830 ], [ %660, %800 ]
  %804 = phi float [ %812, %830 ], [ %796, %800 ]
  %805 = phi i32 [ %809, %830 ], [ %754, %800 ]
  %806 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 %805
  %807 = load float, float* %806, align 4, !tbaa !54, !noalias !58
  %808 = icmp slt i32 %805, 2
  %809 = add nsw i32 %805, 1
  %810 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 %809
  %811 = load float, float* %810, align 4, !tbaa !54, !noalias !58
  %812 = select i1 %808, float %811, float %575
  %813 = call float @dx.op.binary.f32(i32 36, float %812, float %807)  ; FMin(a,b)
  %814 = call float @dx.op.binary.f32(i32 36, float %661, float %813)  ; FMin(a,b)
  %815 = icmp eq i32 %525, 0
  %816 = fadd fast float %814, %804
  %817 = fmul fast float %816, %506
  %818 = fadd fast float %817, %519
  br i1 %815, label %824, label %819

; <label>:819                                     ; preds = %801
  %820 = fsub fast float %814, %804
  %821 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %820)  ; FMax(a,b)
  %822 = fmul fast float %821, %818
  %823 = fadd fast float %822, %803
  br label %830

; <label>:824                                     ; preds = %801
  %825 = fsub fast float %804, %814
  %826 = call float @dx.op.unary.f32(i32 6, float %825)  ; FAbs(value)
  %827 = fadd fast float %826, %802
  %828 = fmul fast float %826, %818
  %829 = fsub fast float %803, %828
  br label %830

; <label>:830                                     ; preds = %824, %819
  %831 = phi float [ %821, %819 ], [ %827, %824 ]
  %832 = phi float [ %823, %819 ], [ %829, %824 ]
  %833 = fcmp fast olt float %812, %661
  %834 = icmp slt i32 %809, 3
  %835 = and i1 %834, %833
  br i1 %835, label %801, label %836

; <label>:836                                     ; preds = %830
  br label %837

; <label>:837                                     ; preds = %836, %794
  %838 = phi float [ %659, %794 ], [ %831, %836 ]
  %839 = phi float [ %660, %794 ], [ %832, %836 ]
  %840 = fsub fast float %575, %838
  %841 = select i1 %577, float %838, float %840
  %842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %843 = extractvalue %dx.types.CBufRet.f32 %842, 0
  %844 = extractvalue %dx.types.CBufRet.f32 %842, 1
  %845 = extractvalue %dx.types.CBufRet.f32 %842, 2
  %846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %847 = extractvalue %dx.types.CBufRet.f32 %846, 0
  %848 = extractvalue %dx.types.CBufRet.f32 %846, 1
  %849 = extractvalue %dx.types.CBufRet.f32 %846, 2
  %850 = extractvalue %dx.types.CBufRet.f32 %846, 3
  %851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %852 = extractvalue %dx.types.CBufRet.f32 %851, 3
  %853 = call float @dx.op.binary.f32(i32 36, float %839, float %852)  ; FMin(a,b)
  %854 = fmul fast float %850, %841
  %855 = call float @dx.op.unary.f32(i32 7, float %854)  ; Saturate(value)
  %856 = fsub fast float %847, %843
  %857 = fsub fast float %848, %844
  %858 = fsub fast float %849, %845
  %859 = fmul fast float %855, %856
  %860 = fmul fast float %855, %857
  %861 = fmul fast float %855, %858
  %862 = fadd fast float %859, %843
  %863 = fadd fast float %860, %844
  %864 = fadd fast float %861, %845
  %865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %866 = extractvalue %dx.types.CBufRet.f32 %865, 0
  %867 = extractvalue %dx.types.CBufRet.f32 %865, 1
  %868 = fadd fast float %867, %866
  %869 = call float @dx.op.unary.f32(i32 7, float %868)  ; Saturate(value)
  %870 = extractvalue %dx.types.CBufRet.f32 %865, 2
  %871 = extractvalue %dx.types.CBufRet.f32 %865, 3
  %872 = fadd fast float %871, %870
  %873 = call float @dx.op.unary.f32(i32 7, float %872)  ; Saturate(value)
  %874 = fmul fast float %869, %853
  %875 = fmul fast float %874, %873
  br label %876

; <label>:876                                     ; preds = %837, %756, %591, %573, %571
  %877 = phi float [ %600, %591 ], [ %759, %756 ], [ %841, %837 ], [ 0.000000e+00, %571 ], [ 0.000000e+00, %573 ]
  %878 = phi float [ %634, %591 ], [ %793, %756 ], [ %875, %837 ], [ 0.000000e+00, %571 ], [ 0.000000e+00, %573 ]
  %879 = phi float [ %621, %591 ], [ %780, %756 ], [ %862, %837 ], [ 0.000000e+00, %571 ], [ 0.000000e+00, %573 ]
  %880 = phi float [ %622, %591 ], [ %781, %756 ], [ %863, %837 ], [ 0.000000e+00, %571 ], [ 0.000000e+00, %573 ]
  %881 = phi float [ %623, %591 ], [ %782, %756 ], [ %864, %837 ], [ 0.000000e+00, %571 ], [ 0.000000e+00, %573 ]
  %882 = fmul fast float %514, %878
  %883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %884 = extractvalue %dx.types.CBufRet.f32 %883, 2
  %885 = fsub fast float %521, %884
  %886 = fcmp fast olt float %882, -2.000000e+01
  %887 = call float @dx.op.unary.f32(i32 21, float %882)  ; Exp(value)
  %888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %889 = extractvalue %dx.types.CBufRet.f32 %888, 2
  %890 = extractvalue %dx.types.CBufRet.f32 %888, 3
  %891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %892 = extractvalue %dx.types.CBufRet.f32 %891, 2
  %893 = fmul fast float %890, %885
  %894 = call float @dx.op.unary.f32(i32 7, float %893)  ; Saturate(value)
  %895 = fsub fast float 1.000000e+00, %894
  %896 = fmul fast float %506, 5.000000e-01
  %897 = fadd fast float %896, 5.000000e-01
  %898 = call float @dx.op.unary.f32(i32 7, float %897)  ; Saturate(value)
  %899 = fsub fast float 1.000000e+00, %898
  %900 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %895)  ; FMax(a,b)
  %901 = fdiv fast float %899, %900
  %902 = fsub fast float %885, %466
  %903 = call float @dx.op.unary.f32(i32 6, float %902)  ; FAbs(value)
  %904 = fmul fast float %903, %889
  %905 = call float @dx.op.unary.f32(i32 7, float %901)  ; Saturate(value)
  %906 = fsub fast float 1.000000e+00, %904
  %907 = fmul fast float %906, %905
  %908 = fadd fast float %907, %904
  %909 = fmul fast float %892, %885
  %910 = call float @dx.op.unary.f32(i32 7, float %909)  ; Saturate(value)
  %911 = fsub fast float 1.000000e+00, %908
  %912 = fmul fast float %911, %910
  %913 = fadd fast float %912, %908
  %914 = call float @dx.op.unary.f32(i32 7, float %913)  ; Saturate(value)
  %915 = fadd fast float %887, -1.000000e+00
  %916 = select i1 %886, float -1.000000e+00, float %915
  %917 = fmul fast float %914, %916
  %918 = fadd fast float %917, 1.000000e+00
  %919 = fsub fast float -0.000000e+00, %917
  %920 = fmul fast float %879, %919
  %921 = fmul fast float %880, %919
  %922 = fmul fast float %881, %919
  br label %923

; <label>:923                                     ; preds = %876, %472
  %924 = phi float [ %877, %876 ], [ 0.000000e+00, %472 ]
  %925 = phi float [ %918, %876 ], [ 1.000000e+00, %472 ]
  %926 = phi float [ %920, %876 ], [ 0.000000e+00, %472 ]
  %927 = phi float [ %921, %876 ], [ 0.000000e+00, %472 ]
  %928 = phi float [ %922, %876 ], [ 0.000000e+00, %472 ]
  %929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %930 = extractvalue %dx.types.CBufRet.f32 %929, 1
  %931 = fsub fast float 1.000000e+00, %925
  %932 = fmul fast float %931, %507
  %933 = fmul fast float %932, %930
  %934 = fsub fast float %507, %933
  br i1 %500, label %935, label %964, !dx.controlflow.hints !94

; <label>:935                                     ; preds = %923
  %936 = fmul fast float %508, %497
  %937 = fadd fast float %936, %498
  %938 = call float @dx.op.unary.f32(i32 7, float %937)  ; Saturate(value)
  %939 = fmul fast float %479, %934
  %940 = fsub fast float -0.000000e+00, %939
  %941 = fmul fast float %480, %934
  %942 = fsub fast float -0.000000e+00, %941
  %943 = call float @dx.op.unary.f32(i32 21, float %940)  ; Exp(value)
  %944 = call float @dx.op.unary.f32(i32 21, float %942)  ; Exp(value)
  %945 = call float @dx.op.binary.f32(i32 35, float %487, float %943)  ; FMax(a,b)
  %946 = call float @dx.op.binary.f32(i32 35, float %487, float %944)  ; FMax(a,b)
  %947 = fsub fast float %946, %945
  %948 = fmul fast float %947, %938
  %949 = fadd fast float %948, %945
  %950 = call float @dx.op.unary.f32(i32 7, float %949)  ; Saturate(value)
  %951 = fsub fast float %484, %489
  %952 = fsub fast float %485, %490
  %953 = fsub fast float %486, %491
  %954 = fmul fast float %938, %951
  %955 = fmul fast float %938, %952
  %956 = fmul fast float %938, %953
  %957 = fadd fast float %954, %489
  %958 = fadd fast float %955, %490
  %959 = fadd fast float %956, %491
  %960 = fsub fast float 1.000000e+00, %950
  %961 = fmul fast float %960, %957
  %962 = fmul fast float %960, %958
  %963 = fmul fast float %960, %959
  br label %1023

; <label>:964                                     ; preds = %923
  %965 = fmul fast float %934, %496
  %966 = call float @dx.op.unary.f32(i32 7, float %965)  ; Saturate(value)
  %967 = fsub fast float 2.000000e+00, %966
  %968 = fmul fast float %966, 9.921875e-01
  %969 = fmul fast float %968, %967
  %970 = fadd fast float %969, 3.906250e-03
  %971 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %970, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %972 = extractvalue %dx.types.ResRet.f32 %971, 0
  %973 = fsub fast float %966, %972
  %974 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %973)  ; FMax(a,b)
  %975 = fmul fast float %482, %466
  %976 = call float @dx.op.unary.f32(i32 6, float %975)  ; FAbs(value)
  %977 = fcmp fast ogt float %976, 0x3EB0C6F7A0000000
  br i1 %977, label %978, label %984, !dx.controlflow.hints !95

; <label>:978                                     ; preds = %964
  %979 = fmul fast float %975, 0xBFF7154760000000
  %980 = call float @dx.op.unary.f32(i32 21, float %979)  ; Exp(value)
  %981 = fsub fast float 1.000000e+00, %980
  %982 = fdiv fast float %981, %975
  %983 = fmul fast float %982, %492
  br label %984

; <label>:984                                     ; preds = %978, %964
  %985 = phi float [ %983, %978 ], [ %492, %964 ]
  %986 = fadd fast float %985, %494
  %987 = fmul fast float %986, %974
  %988 = fmul fast float %479, %987
  %989 = fsub fast float -0.000000e+00, %988
  %990 = fmul fast float %480, %987
  %991 = fsub fast float -0.000000e+00, %990
  %992 = fmul fast float %481, %987
  %993 = fsub fast float -0.000000e+00, %992
  %994 = call float @dx.op.unary.f32(i32 21, float %989)  ; Exp(value)
  %995 = call float @dx.op.unary.f32(i32 21, float %991)  ; Exp(value)
  %996 = call float @dx.op.unary.f32(i32 21, float %993)  ; Exp(value)
  %997 = fmul fast float %508, %508
  %998 = fadd fast float %997, 1.000000e+00
  %999 = fmul fast float %998, 0x3FAE8EC8A0000000
  %1000 = fmul fast float %999, %489
  %1001 = fmul fast float %999, %490
  %1002 = fmul fast float %999, %491
  %1003 = fmul fast float %508, %487
  %1004 = fsub fast float 1.000000e+00, %1003
  %1005 = fmul fast float %487, %487
  %1006 = fsub fast float 1.000000e+00, %1005
  %1007 = fmul fast float %1006, 0x3FB45F3060000000
  %1008 = fmul fast float %1004, %1004
  %1009 = fdiv fast float 1.000000e+00, %1008
  %1010 = fmul fast float %1007, %1009
  %1011 = fmul fast float %1010, %484
  %1012 = fmul fast float %1010, %485
  %1013 = fmul fast float %1010, %486
  %1014 = fadd fast float %1011, %1000
  %1015 = fadd fast float %1012, %1001
  %1016 = fadd fast float %1013, %1002
  %1017 = fsub fast float 1.000000e+00, %994
  %1018 = fsub fast float 1.000000e+00, %995
  %1019 = fsub fast float 1.000000e+00, %996
  %1020 = fmul fast float %1014, %1017
  %1021 = fmul fast float %1015, %1018
  %1022 = fmul fast float %1016, %1019
  br label %1023

; <label>:1023                                    ; preds = %984, %935
  %1024 = phi float [ %961, %935 ], [ %1020, %984 ]
  %1025 = phi float [ %962, %935 ], [ %1021, %984 ]
  %1026 = phi float [ %963, %935 ], [ %1022, %984 ]
  %1027 = phi float [ %950, %935 ], [ %994, %984 ]
  %1028 = phi float [ %950, %935 ], [ %995, %984 ]
  %1029 = phi float [ %950, %935 ], [ %996, %984 ]
  br i1 %516, label %1030, label %1228, !dx.controlflow.hints !96

; <label>:1030                                    ; preds = %1023
  %1031 = extractvalue %dx.types.CBufRet.f32 %929, 0
  %1032 = fmul fast float %1031, %931
  %1033 = fsub fast float %926, %1024
  %1034 = fsub fast float %927, %1025
  %1035 = fsub fast float %928, %1026
  %1036 = fmul fast float %1032, %1033
  %1037 = fmul fast float %1032, %1034
  %1038 = fmul fast float %1032, %1035
  %1039 = fadd fast float %1036, %1024
  %1040 = fadd fast float %1037, %1025
  %1041 = fadd fast float %1038, %1026
  %1042 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1027)  ; FMax(a,b)
  %1043 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1028)  ; FMax(a,b)
  %1044 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1029)  ; FMax(a,b)
  %1045 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %925)  ; FMax(a,b)
  %1046 = call float @dx.op.binary.f32(i32 35, float %924, float %934)  ; FMax(a,b)
  %1047 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1046)  ; FMax(a,b)
  %1048 = fdiv fast float %924, %1047
  %1049 = call float @dx.op.unary.f32(i32 7, float %1048)  ; Saturate(value)
  %1050 = fdiv fast float %934, %1047
  %1051 = call float @dx.op.unary.f32(i32 7, float %1050)  ; Saturate(value)
  %1052 = fcmp fast une float %1045, 1.000000e+00
  br i1 %1052, label %1053, label %1066, !dx.controlflow.hints !97

; <label>:1053                                    ; preds = %1030
  %1054 = call float @dx.op.unary.f32(i32 23, float %1045)  ; Log(value)
  %1055 = fmul fast float %1054, 0x3FE62E4300000000
  %1056 = fmul fast float %926, %1055
  %1057 = fsub fast float -0.000000e+00, %1056
  %1058 = fmul fast float %927, %1055
  %1059 = fsub fast float -0.000000e+00, %1058
  %1060 = fmul fast float %928, %1055
  %1061 = fsub fast float -0.000000e+00, %1060
  %1062 = fsub fast float 1.000000e+00, %1045
  %1063 = fdiv fast float %1057, %1062
  %1064 = fdiv fast float %1059, %1062
  %1065 = fdiv fast float %1061, %1062
  br label %1066

; <label>:1066                                    ; preds = %1053, %1030
  %1067 = phi float [ %1063, %1053 ], [ %926, %1030 ]
  %1068 = phi float [ %1064, %1053 ], [ %927, %1030 ]
  %1069 = phi float [ %1065, %1053 ], [ %928, %1030 ]
  %1070 = phi float [ %1055, %1053 ], [ 0.000000e+00, %1030 ]
  %1071 = fcmp fast une float %1042, 1.000000e+00
  br i1 %1071, label %1072, label %1079, !dx.controlflow.hints !98

; <label>:1072                                    ; preds = %1066
  %1073 = call float @dx.op.unary.f32(i32 23, float %1042)  ; Log(value)
  %1074 = fmul fast float %1073, 0x3FE62E4300000000
  %1075 = fmul fast float %1039, %1074
  %1076 = fsub fast float -0.000000e+00, %1075
  %1077 = fsub fast float 1.000000e+00, %1042
  %1078 = fdiv fast float %1076, %1077
  br label %1079

; <label>:1079                                    ; preds = %1072, %1066
  %1080 = phi float [ %1078, %1072 ], [ %1039, %1066 ]
  %1081 = phi float [ %1074, %1072 ], [ 0.000000e+00, %1066 ]
  %1082 = fcmp fast une float %1043, 1.000000e+00
  br i1 %1082, label %1083, label %1090, !dx.controlflow.hints !98

; <label>:1083                                    ; preds = %1079
  %1084 = call float @dx.op.unary.f32(i32 23, float %1043)  ; Log(value)
  %1085 = fmul fast float %1084, 0x3FE62E4300000000
  %1086 = fmul fast float %1040, %1085
  %1087 = fsub fast float -0.000000e+00, %1086
  %1088 = fsub fast float 1.000000e+00, %1043
  %1089 = fdiv fast float %1087, %1088
  br label %1090

; <label>:1090                                    ; preds = %1083, %1079
  %1091 = phi float [ %1089, %1083 ], [ %1040, %1079 ]
  %1092 = phi float [ %1085, %1083 ], [ 0.000000e+00, %1079 ]
  %1093 = fcmp fast une float %1044, 1.000000e+00
  br i1 %1093, label %1094, label %1101, !dx.controlflow.hints !98

; <label>:1094                                    ; preds = %1090
  %1095 = call float @dx.op.unary.f32(i32 23, float %1044)  ; Log(value)
  %1096 = fmul fast float %1095, 0x3FE62E4300000000
  %1097 = fmul fast float %1041, %1096
  %1098 = fsub fast float -0.000000e+00, %1097
  %1099 = fsub fast float 1.000000e+00, %1044
  %1100 = fdiv fast float %1098, %1099
  br label %1101

; <label>:1101                                    ; preds = %1094, %1090
  %1102 = phi float [ %1100, %1094 ], [ %1041, %1090 ]
  %1103 = phi float [ %1096, %1094 ], [ 0.000000e+00, %1090 ]
  %1104 = fmul fast float %1067, %1051
  %1105 = fmul fast float %1068, %1051
  %1106 = fmul fast float %1069, %1051
  %1107 = fmul fast float %1070, %1051
  %1108 = fmul fast float %1080, %1049
  %1109 = fmul fast float %1091, %1049
  %1110 = fmul fast float %1102, %1049
  %1111 = fmul fast float %1081, %1049
  %1112 = fmul fast float %1092, %1049
  %1113 = fmul fast float %1103, %1049
  %1114 = fadd fast float %1108, %1104
  %1115 = fadd fast float %1109, %1105
  %1116 = fadd fast float %1110, %1106
  %1117 = fadd fast float %1111, %1107
  %1118 = fadd fast float %1112, %1107
  %1119 = fadd fast float %1113, %1107
  %1120 = fcmp fast une float %1117, 0.000000e+00
  br i1 %1120, label %1121, label %1128, !dx.controlflow.hints !99

; <label>:1121                                    ; preds = %1101
  %1122 = fmul fast float %1117, 0x3FF7154760000000
  %1123 = call float @dx.op.unary.f32(i32 21, float %1122)  ; Exp(value)
  %1124 = fsub fast float 1.000000e+00, %1123
  %1125 = fmul fast float %1114, %1124
  %1126 = fsub fast float -0.000000e+00, %1125
  %1127 = fdiv fast float %1126, %1117
  br label %1128

; <label>:1128                                    ; preds = %1121, %1101
  %1129 = phi float [ %1123, %1121 ], [ 1.000000e+00, %1101 ]
  %1130 = phi float [ %1127, %1121 ], [ %1114, %1101 ]
  %1131 = fcmp fast une float %1118, 0.000000e+00
  br i1 %1131, label %1132, label %1139, !dx.controlflow.hints !99

; <label>:1132                                    ; preds = %1128
  %1133 = fmul fast float %1118, 0x3FF7154760000000
  %1134 = call float @dx.op.unary.f32(i32 21, float %1133)  ; Exp(value)
  %1135 = fsub fast float 1.000000e+00, %1134
  %1136 = fmul fast float %1115, %1135
  %1137 = fsub fast float -0.000000e+00, %1136
  %1138 = fdiv fast float %1137, %1118
  br label %1139

; <label>:1139                                    ; preds = %1132, %1128
  %1140 = phi float [ %1134, %1132 ], [ 1.000000e+00, %1128 ]
  %1141 = phi float [ %1138, %1132 ], [ %1115, %1128 ]
  %1142 = fcmp fast une float %1119, 0.000000e+00
  br i1 %1142, label %1143, label %1150, !dx.controlflow.hints !99

; <label>:1143                                    ; preds = %1139
  %1144 = fmul fast float %1119, 0x3FF7154760000000
  %1145 = call float @dx.op.unary.f32(i32 21, float %1144)  ; Exp(value)
  %1146 = fsub fast float 1.000000e+00, %1145
  %1147 = fmul fast float %1116, %1146
  %1148 = fsub fast float -0.000000e+00, %1147
  %1149 = fdiv fast float %1148, %1119
  br label %1150

; <label>:1150                                    ; preds = %1143, %1139
  %1151 = phi float [ %1145, %1143 ], [ 1.000000e+00, %1139 ]
  %1152 = phi float [ %1149, %1143 ], [ %1116, %1139 ]
  %1153 = fcmp fast ogt float %1049, %1051
  br i1 %1153, label %1154, label %1174

; <label>:1154                                    ; preds = %1150
  %1155 = fsub fast float 1.000000e+00, %1051
  %1156 = fmul fast float %1067, %1155
  %1157 = fmul fast float %1068, %1155
  %1158 = fmul fast float %1069, %1155
  %1159 = fmul fast float %1070, %1155
  %1160 = fcmp fast une float %1159, 0.000000e+00
  br i1 %1160, label %1161, label %1212, !dx.controlflow.hints !100

; <label>:1161                                    ; preds = %1154
  %1162 = fmul fast float %1159, 0x3FF7154760000000
  %1163 = call float @dx.op.unary.f32(i32 21, float %1162)  ; Exp(value)
  %1164 = fsub fast float 1.000000e+00, %1163
  %1165 = fmul fast float %1156, %1164
  %1166 = fsub fast float -0.000000e+00, %1165
  %1167 = fmul fast float %1157, %1164
  %1168 = fsub fast float -0.000000e+00, %1167
  %1169 = fmul fast float %1158, %1164
  %1170 = fsub fast float -0.000000e+00, %1169
  %1171 = fdiv fast float %1166, %1159
  %1172 = fdiv fast float %1168, %1159
  %1173 = fdiv fast float %1170, %1159
  br label %1212

; <label>:1174                                    ; preds = %1150
  %1175 = fsub fast float 1.000000e+00, %1049
  %1176 = fmul fast float %1080, %1175
  %1177 = fmul fast float %1091, %1175
  %1178 = fmul fast float %1102, %1175
  %1179 = fmul fast float %1081, %1175
  %1180 = fmul fast float %1092, %1175
  %1181 = fmul fast float %1103, %1175
  %1182 = fcmp fast une float %1179, 0.000000e+00
  br i1 %1182, label %1183, label %1190, !dx.controlflow.hints !99

; <label>:1183                                    ; preds = %1174
  %1184 = fmul fast float %1179, 0x3FF7154760000000
  %1185 = call float @dx.op.unary.f32(i32 21, float %1184)  ; Exp(value)
  %1186 = fsub fast float 1.000000e+00, %1185
  %1187 = fmul fast float %1176, %1186
  %1188 = fsub fast float -0.000000e+00, %1187
  %1189 = fdiv fast float %1188, %1179
  br label %1190

; <label>:1190                                    ; preds = %1183, %1174
  %1191 = phi float [ %1189, %1183 ], [ %1176, %1174 ]
  %1192 = phi float [ %1185, %1183 ], [ 1.000000e+00, %1174 ]
  %1193 = fcmp fast une float %1180, 0.000000e+00
  br i1 %1193, label %1194, label %1201, !dx.controlflow.hints !99

; <label>:1194                                    ; preds = %1190
  %1195 = fmul fast float %1180, 0x3FF7154760000000
  %1196 = call float @dx.op.unary.f32(i32 21, float %1195)  ; Exp(value)
  %1197 = fsub fast float 1.000000e+00, %1196
  %1198 = fmul fast float %1177, %1197
  %1199 = fsub fast float -0.000000e+00, %1198
  %1200 = fdiv fast float %1199, %1180
  br label %1201

; <label>:1201                                    ; preds = %1194, %1190
  %1202 = phi float [ %1200, %1194 ], [ %1177, %1190 ]
  %1203 = phi float [ %1196, %1194 ], [ 1.000000e+00, %1190 ]
  %1204 = fcmp fast une float %1181, 0.000000e+00
  br i1 %1204, label %1205, label %1212, !dx.controlflow.hints !99

; <label>:1205                                    ; preds = %1201
  %1206 = fmul fast float %1181, 0x3FF7154760000000
  %1207 = call float @dx.op.unary.f32(i32 21, float %1206)  ; Exp(value)
  %1208 = fsub fast float 1.000000e+00, %1207
  %1209 = fmul fast float %1178, %1208
  %1210 = fsub fast float -0.000000e+00, %1209
  %1211 = fdiv fast float %1210, %1181
  br label %1212

; <label>:1212                                    ; preds = %1205, %1201, %1161, %1154
  %1213 = phi float [ %1211, %1205 ], [ %1173, %1161 ], [ %1158, %1154 ], [ %1178, %1201 ]
  %1214 = phi float [ %1202, %1205 ], [ %1172, %1161 ], [ %1157, %1154 ], [ %1202, %1201 ]
  %1215 = phi float [ %1191, %1205 ], [ %1171, %1161 ], [ %1156, %1154 ], [ %1191, %1201 ]
  %1216 = phi float [ %1207, %1205 ], [ %1163, %1161 ], [ 1.000000e+00, %1154 ], [ 1.000000e+00, %1201 ]
  %1217 = phi float [ %1203, %1205 ], [ %1163, %1161 ], [ 1.000000e+00, %1154 ], [ %1203, %1201 ]
  %1218 = phi float [ %1192, %1205 ], [ %1163, %1161 ], [ 1.000000e+00, %1154 ], [ %1192, %1201 ]
  %1219 = fmul fast float %1218, %1130
  %1220 = fmul fast float %1217, %1141
  %1221 = fmul fast float %1216, %1152
  %1222 = fadd fast float %1219, %1215
  %1223 = fadd fast float %1220, %1214
  %1224 = fadd fast float %1221, %1213
  %1225 = fmul fast float %1218, %1129
  %1226 = fmul fast float %1217, %1140
  %1227 = fmul fast float %1216, %1151
  br label %1228

; <label>:1228                                    ; preds = %1212, %1023
  %1229 = phi float [ %1227, %1212 ], [ %1029, %1023 ]
  %1230 = phi float [ %1226, %1212 ], [ %1028, %1023 ]
  %1231 = phi float [ %1225, %1212 ], [ %1027, %1023 ]
  %1232 = phi float [ %1224, %1212 ], [ %1026, %1023 ]
  %1233 = phi float [ %1223, %1212 ], [ %1025, %1023 ]
  %1234 = phi float [ %1222, %1212 ], [ %1024, %1023 ]
  %1235 = fmul fast float %1234, %306
  %1236 = fmul fast float %1233, %306
  %1237 = fmul fast float %1232, %306
  %1238 = fmul fast float %1231, %471
  %1239 = call float @dx.op.dot3.f32(i32 55, float %1231, float %1230, float %1229, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1240 = call float @dx.op.dot3.f32(i32 55, float %1235, float %1236, float %1237, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1241 = select i1 %99, float %1239, float %1231
  %1242 = select i1 %99, float %1239, float %1230
  %1243 = select i1 %99, float 1.000000e+00, float %1229
  %1244 = select i1 %99, float %1240, float %1235
  %1245 = select i1 %99, float 0.000000e+00, float %1236
  %1246 = select i1 %99, float 0.000000e+00, float %1237
  %1247 = fmul fast float %1241, %468
  %1248 = fmul fast float %1242, %469
  %1249 = fmul fast float %1243, %470
  %1250 = fadd fast float %1247, %1244
  %1251 = fadd fast float %1248, %1245
  %1252 = fadd fast float %1246, %1249
  %1253 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1254 = extractvalue %dx.types.CBufRet.i32 %1253, 0
  %1255 = icmp eq i32 %1254, 0
  br i1 %1255, label %1620, label %1256, !dx.controlflow.hints !101

; <label>:1256                                    ; preds = %1228
  %1257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1258 = extractvalue %dx.types.CBufRet.f32 %1257, 2
  %1259 = extractvalue %dx.types.CBufRet.f32 %1257, 3
  %1260 = fmul fast float %1258, %36
  %1261 = fmul fast float %1259, %37
  %1262 = fmul fast float %1260, 2.000000e+00
  %1263 = fmul fast float %1261, 2.000000e+00
  %1264 = fsub fast float 1.000000e+00, %1262
  %1265 = fsub fast float 1.000000e+00, %1263
  %1266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1267 = extractvalue %dx.types.CBufRet.f32 %1266, 0
  %1268 = extractvalue %dx.types.CBufRet.f32 %1266, 1
  %1269 = extractvalue %dx.types.CBufRet.f32 %1266, 2
  %1270 = fmul fast float %1264, %1267
  %1271 = fmul fast float %1264, %1268
  %1272 = fmul fast float %1264, %1269
  %1273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1274 = extractvalue %dx.types.CBufRet.f32 %1273, 0
  %1275 = extractvalue %dx.types.CBufRet.f32 %1273, 1
  %1276 = extractvalue %dx.types.CBufRet.f32 %1273, 2
  %1277 = fmul fast float %1265, %1274
  %1278 = fmul fast float %1265, %1275
  %1279 = fmul fast float %1265, %1276
  %1280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1281 = extractvalue %dx.types.CBufRet.f32 %1280, 0
  %1282 = extractvalue %dx.types.CBufRet.f32 %1280, 1
  %1283 = extractvalue %dx.types.CBufRet.f32 %1280, 2
  %1284 = fadd fast float %1277, %1281
  %1285 = fadd fast float %1284, %1270
  %1286 = fadd fast float %1278, %1282
  %1287 = fadd fast float %1286, %1271
  %1288 = fadd fast float %1279, %1283
  %1289 = fadd fast float %1288, %1272
  %1290 = fmul fast float %1285, %467
  %1291 = fmul fast float %1287, %467
  %1292 = fmul fast float %1289, %467
  %1293 = fmul fast float %1290, %1290
  %1294 = fmul fast float %1291, %1291
  %1295 = fadd fast float %1293, %1294
  %1296 = fmul fast float %1292, %1292
  %1297 = fadd fast float %1295, %1296
  %1298 = call float @dx.op.unary.f32(i32 24, float %1297)  ; Sqrt(value)
  %1299 = extractvalue %dx.types.CBufRet.f32 %314, 0
  %1300 = fsub fast float %1298, %1299
  %1301 = extractvalue %dx.types.CBufRet.f32 %314, 2
  %1302 = fmul fast float %1300, %1301
  %1303 = call float @dx.op.unary.f32(i32 7, float %1302)  ; Saturate(value)
  %1304 = fadd fast float %1303, -5.000000e-01
  %1305 = fmul fast float %1304, 2.000000e+00
  %1306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1307 = extractvalue %dx.types.CBufRet.f32 %1306, 2
  %1308 = call float @dx.op.binary.f32(i32 36, float %1307, float %1305)  ; FMin(a,b)
  %1309 = fsub fast float -0.000000e+00, %1307
  %1310 = fcmp fast ogt float %1308, %1309
  br i1 %1310, label %1311, label %1620, !dx.controlflow.hints !102

; <label>:1311                                    ; preds = %1256
  %1312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %1313 = extractvalue %dx.types.CBufRet.f32 %1312, 3
  %1314 = fcmp fast ogt float %1313, 0.000000e+00
  br i1 %1314, label %1315, label %1390, !dx.controlflow.hints !103

; <label>:1315                                    ; preds = %1311
  %1316 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %12, i32 0)  ; GetDimensions(handle,mipLevel)
  %1317 = extractvalue %dx.types.Dimensions %1316, 0
  %1318 = sitofp i32 %1317 to float
  %1319 = extractvalue %dx.types.Dimensions %1316, 1
  %1320 = sitofp i32 %1319 to float
  %1321 = fmul fast float %1260, %1318
  %1322 = fmul fast float %1261, %1320
  %1323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1324 = extractvalue %dx.types.CBufRet.f32 %1323, 1
  %1325 = fsub fast float -0.000000e+00, %1324
  %1326 = fptoui float %1325 to i32
  %1327 = fptoui float %1321 to i32
  %1328 = fptoui float %1322 to i32
  %1329 = and i32 %1326, 31
  %1330 = lshr i32 %1327, %1329
  %1331 = lshr i32 %1328, %1329
  %1332 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %1326, i32 %1330, i32 %1331, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1333 = extractvalue %dx.types.ResRet.f32 %1332, 0
  %1334 = fcmp fast olt float %1333, -1.000000e+00
  %1335 = fcmp fast ogt float %1333, -1.000000e+00
  %1336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1337 = extractvalue %dx.types.CBufRet.f32 %1336, 1
  %1338 = select i1 %1335, float %1337, float 1.000000e+00
  %1339 = fadd fast float %1333, 1.000000e+00
  %1340 = fmul fast float %1338, %1339
  %1341 = call float @dx.op.unary.f32(i32 6, float %1340)  ; FAbs(value)
  %1342 = extractvalue %dx.types.CBufRet.f32 %1336, 3
  %1343 = fcmp fast oge float %1341, %1342
  %1344 = select i1 %1343, float 0x4197782600000000, float %1341
  %1345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %1346 = extractvalue %dx.types.CBufRet.f32 %1345, 0
  %1347 = extractvalue %dx.types.CBufRet.f32 %1345, 1
  %1348 = extractvalue %dx.types.CBufRet.f32 %1345, 2
  %1349 = select i1 %1334, float %1346, float %1267
  %1350 = select i1 %1334, float %1347, float %1268
  %1351 = select i1 %1334, float %1348, float %1269
  %1352 = fmul fast float %1349, %1264
  %1353 = fmul fast float %1350, %1264
  %1354 = fmul fast float %1351, %1264
  %1355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %1356 = extractvalue %dx.types.CBufRet.f32 %1355, 0
  %1357 = extractvalue %dx.types.CBufRet.f32 %1355, 1
  %1358 = extractvalue %dx.types.CBufRet.f32 %1355, 2
  %1359 = select i1 %1334, float %1356, float %1274
  %1360 = select i1 %1334, float %1357, float %1275
  %1361 = select i1 %1334, float %1358, float %1276
  %1362 = fmul fast float %1359, %1265
  %1363 = fmul fast float %1360, %1265
  %1364 = fmul fast float %1361, %1265
  %1365 = fadd fast float %1362, %1352
  %1366 = fadd fast float %1363, %1353
  %1367 = fadd fast float %1364, %1354
  %1368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %1369 = extractvalue %dx.types.CBufRet.f32 %1368, 0
  %1370 = extractvalue %dx.types.CBufRet.f32 %1368, 1
  %1371 = extractvalue %dx.types.CBufRet.f32 %1368, 2
  %1372 = select i1 %1334, float %1369, float %1281
  %1373 = select i1 %1334, float %1370, float %1282
  %1374 = select i1 %1334, float %1371, float %1283
  %1375 = fadd fast float %1365, %1372
  %1376 = fadd fast float %1366, %1373
  %1377 = fadd fast float %1367, %1374
  %1378 = fmul fast float %1375, %1344
  %1379 = fmul fast float %1376, %1344
  %1380 = fmul fast float %1377, %1344
  %1381 = fmul fast float %1378, %1378
  %1382 = fmul fast float %1379, %1379
  %1383 = fadd fast float %1381, %1382
  %1384 = fmul fast float %1380, %1380
  %1385 = fadd fast float %1383, %1384
  %1386 = call float @dx.op.unary.f32(i32 24, float %1385)  ; Sqrt(value)
  %1387 = fsub fast float %1386, %1299
  %1388 = fmul fast float %1387, %1301
  %1389 = call float @dx.op.unary.f32(i32 7, float %1388)  ; Saturate(value)
  br label %1390

; <label>:1390                                    ; preds = %1315, %1311
  %1391 = phi float [ %1389, %1315 ], [ 1.000000e+00, %1311 ]
  %1392 = fmul fast float %1308, 5.000000e-01
  %1393 = fadd fast float %1392, 5.000000e-01
  %1394 = call float @dx.op.unary.f32(i32 22, float %1393)  ; Frc(value)
  %1395 = call float @dx.op.unary.f32(i32 27, float %1394)  ; Round_ni(value)
  %1396 = call float @dx.op.unary.f32(i32 22, float %1394)  ; Frc(value)
  %1397 = fmul fast float %1396, 2.000000e+00
  %1398 = fadd fast float %1397, -1.000000e+00
  %1399 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %17, float %1260, float %1261, float %1395, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1400 = extractvalue %dx.types.ResRet.f32 %1399, 0
  %1401 = extractvalue %dx.types.ResRet.f32 %1399, 1
  %1402 = extractvalue %dx.types.ResRet.f32 %1399, 2
  %1403 = extractvalue %dx.types.ResRet.f32 %1399, 3
  %1404 = fadd fast float %1400, -5.000000e-01
  %1405 = fadd fast float %1402, -5.000000e-01
  %1406 = fmul fast float %1404, 0xBFD5555560000000
  %1407 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1405, float %1406)  ; FMad(a,b,c)
  %1408 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1401, float 0.000000e+00)  ; FMad(a,b,c)
  %1409 = fadd fast float %1408, %1403
  %1410 = fmul fast float %1404, -7.500000e-01
  %1411 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1405, float %1410)  ; FMad(a,b,c)
  %1412 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1401, float 0.000000e+00)  ; FMad(a,b,c)
  %1413 = fadd fast float %1412, %1403
  %1414 = call float @dx.op.binary.f32(i32 35, float %1407, float -1.000000e+00)  ; FMax(a,b)
  %1415 = call float @dx.op.binary.f32(i32 35, float %1409, float -1.000000e+00)  ; FMax(a,b)
  %1416 = call float @dx.op.binary.f32(i32 35, float %1411, float -1.000000e+00)  ; FMax(a,b)
  %1417 = call float @dx.op.binary.f32(i32 35, float %1413, float -1.000000e+00)  ; FMax(a,b)
  %1418 = call float @dx.op.binary.f32(i32 36, float %1414, float 1.000000e+00)  ; FMin(a,b)
  %1419 = call float @dx.op.binary.f32(i32 36, float %1415, float 1.000000e+00)  ; FMin(a,b)
  %1420 = call float @dx.op.binary.f32(i32 36, float %1416, float 1.000000e+00)  ; FMin(a,b)
  %1421 = call float @dx.op.binary.f32(i32 36, float %1417, float 1.000000e+00)  ; FMin(a,b)
  %1422 = fcmp fast olt float %1418, 0x3FEFFF8020000000
  br i1 %1422, label %1423, label %1538, !dx.controlflow.hints !104

; <label>:1423                                    ; preds = %1390
  %1424 = extractvalue %dx.types.CBufRet.f32 %1306, 3
  %1425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1426 = extractvalue %dx.types.CBufRet.f32 %1425, 0
  %1427 = extractvalue %dx.types.CBufRet.f32 %1425, 1
  %1428 = extractvalue %dx.types.CBufRet.f32 %1425, 2
  %1429 = extractvalue %dx.types.CBufRet.f32 %1425, 3
  %1430 = fsub fast float %1426, %1418
  %1431 = fsub fast float %1427, %1419
  %1432 = fsub fast float %1428, %1420
  %1433 = fsub fast float %1429, %1421
  %1434 = fmul fast float %1430, %1424
  %1435 = fmul fast float %1431, %1424
  %1436 = fmul fast float %1432, %1424
  %1437 = fmul fast float %1433, %1424
  %1438 = fadd fast float %1434, %1418
  %1439 = fadd fast float %1435, %1419
  %1440 = fsub fast float -0.000000e+00, %1439
  %1441 = fadd fast float %1436, %1420
  %1442 = fadd fast float %1437, %1421
  %1443 = fmul fast float %1438, %1438
  %1444 = fsub fast float %1439, %1443
  %1445 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1444)  ; FMax(a,b)
  %1446 = fdiv fast float 1.000000e+00, %1445
  %1447 = fmul fast float %1439, %1438
  %1448 = fsub fast float %1441, %1447
  %1449 = fsub fast float %1398, %1438
  %1450 = fmul fast float %1398, %1398
  %1451 = fsub fast float %1450, %1439
  %1452 = fmul fast float %1449, %1446
  %1453 = fmul fast float %1452, %1448
  %1454 = fsub fast float %1451, %1453
  %1455 = fmul fast float %1439, %1439
  %1456 = fsub fast float %1442, %1455
  %1457 = fmul fast float %1448, %1448
  %1458 = fmul fast float %1457, %1446
  %1459 = fsub fast float %1456, %1458
  %1460 = fdiv fast float %1454, %1459
  %1461 = fmul fast float %1448, %1460
  %1462 = fsub fast float %1449, %1461
  %1463 = fmul fast float %1462, %1446
  %1464 = fmul fast float %1463, %1438
  %1465 = fsub fast float 1.000000e+00, %1464
  %1466 = fmul fast float %1439, %1460
  %1467 = fsub fast float %1465, %1466
  %1468 = fmul fast float %1463, %1463
  %1469 = fmul fast float %1460, 4.000000e+00
  %1470 = fmul fast float %1469, %1467
  %1471 = fsub fast float %1468, %1470
  %1472 = call float @dx.op.unary.f32(i32 24, float %1471)  ; Sqrt(value)
  %1473 = fcmp fast oge float %1463, 0.000000e+00
  %1474 = fsub fast float -0.000000e+00, %1472
  %1475 = select i1 %1473, float %1474, float %1472
  %1476 = fsub fast float %1475, %1463
  %1477 = fdiv fast float %1476, %1460
  %1478 = fdiv fast float %1467, %1476
  %1479 = fmul fast float %1477, 5.000000e-01
  %1480 = fmul fast float %1478, 2.000000e+00
  %1481 = select i1 %1473, float %1479, float %1480
  %1482 = select i1 %1473, float %1480, float %1479
  %1483 = call float @dx.op.binary.f32(i32 35, float %1481, float %1482)  ; FMax(a,b)
  %1484 = call float @dx.op.binary.f32(i32 36, float %1481, float %1482)  ; FMin(a,b)
  %1485 = fcmp fast ogt float %1398, %1484
  br i1 %1485, label %1486, label %1496

; <label>:1486                                    ; preds = %1423
  %1487 = fsub fast float %1398, %1484
  %1488 = fsub fast float %1483, %1484
  %1489 = fmul fast float %1487, %1488
  %1490 = fmul fast float %1483, %1398
  %1491 = fadd fast float %1483, %1398
  %1492 = fmul fast float %1491, %1438
  %1493 = fadd fast float %1490, %1439
  %1494 = fsub fast float %1493, %1492
  %1495 = fdiv fast float %1494, %1489
  br label %1496

; <label>:1496                                    ; preds = %1486, %1423
  %1497 = phi float [ %1495, %1486 ], [ 0.000000e+00, %1423 ]
  %1498 = fcmp fast ogt float %1398, %1483
  %1499 = fsub fast float %1398, %1483
  br i1 %1498, label %1500, label %1510

; <label>:1500                                    ; preds = %1496
  %1501 = fsub fast float %1483, %1484
  %1502 = fmul fast float %1501, %1499
  %1503 = fmul fast float %1484, %1398
  %1504 = fadd fast float %1484, %1398
  %1505 = fmul fast float %1504, %1438
  %1506 = fsub fast float %1440, %1503
  %1507 = fadd fast float %1506, %1505
  %1508 = fdiv fast float %1507, %1502
  %1509 = fadd fast float %1508, %1497
  br label %1510

; <label>:1510                                    ; preds = %1500, %1496
  %1511 = phi float [ %1509, %1500 ], [ %1497, %1496 ]
  %1512 = fsub fast float %1398, %1484
  %1513 = fmul fast float %1512, %1499
  %1514 = fmul fast float %1484, %1483
  %1515 = fadd fast float %1484, %1483
  %1516 = fmul fast float %1515, %1438
  %1517 = fadd fast float %1514, %1439
  %1518 = fsub fast float %1517, %1516
  %1519 = fdiv fast float %1518, %1513
  %1520 = call float @dx.op.unary.f32(i32 7, float %1511)  ; Saturate(value)
  %1521 = fcmp fast oeq float %315, 0.000000e+00
  %1522 = extractvalue %dx.types.CBufRet.f32 %1306, 0
  %1523 = fcmp fast oeq float %1522, 0.000000e+00
  %1524 = or i1 %1521, %1523
  %1525 = fmul fast float %1522, 2.000000e+00
  %1526 = fadd fast float %1307, %1308
  %1527 = fdiv fast float %1526, %1525
  %1528 = call float @dx.op.unary.f32(i32 7, float %1527)  ; Saturate(value)
  %1529 = fmul fast float %1528, 2.000000e+00
  %1530 = fsub fast float 3.000000e+00, %1529
  %1531 = fmul fast float %1528, %1528
  %1532 = fmul fast float %1531, %1530
  %1533 = select i1 %1524, float 1.000000e+00, float %1532
  %1534 = fmul fast float %1519, %315
  %1535 = fadd fast float %1520, %1534
  %1536 = call float @dx.op.unary.f32(i32 7, float %1535)  ; Saturate(value)
  %1537 = fmul fast float %1533, %1536
  br label %1538

; <label>:1538                                    ; preds = %1510, %1390
  %1539 = phi float [ %1537, %1510 ], [ 0.000000e+00, %1390 ]
  %1540 = fsub fast float 1.000000e+00, %1539
  %1541 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %1260, float %1261, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1542 = extractvalue %dx.types.ResRet.f32 %1541, 0
  %1543 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1544 = extractvalue %dx.types.CBufRet.i32 %1543, 2
  %1545 = icmp eq i32 %1544, 0
  br i1 %1545, label %1551, label %1546

; <label>:1546                                    ; preds = %1538
  %1547 = call float @dx.op.unary.f32(i32 7, float %1539)  ; Saturate(value)
  %1548 = fadd fast float %1542, -1.000000e+00
  %1549 = fmul fast float %1547, %1548
  %1550 = fadd fast float %1549, 1.000000e+00
  br label %1551

; <label>:1551                                    ; preds = %1546, %1538
  %1552 = phi float [ %1550, %1546 ], [ %1540, %1538 ]
  br i1 %1314, label %1553, label %1571

; <label>:1553                                    ; preds = %1551
  %1554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1555 = extractvalue %dx.types.CBufRet.f32 %1554, 1
  %1556 = fsub fast float %1391, %1555
  %1557 = call float @dx.op.unary.f32(i32 7, float %1556)  ; Saturate(value)
  %1558 = fsub fast float %1391, %1313
  %1559 = call float @dx.op.unary.f32(i32 7, float %1558)  ; Saturate(value)
  %1560 = fsub fast float %1557, %1559
  %1561 = fsub fast float %1393, %1559
  %1562 = fdiv fast float %1561, %1560
  %1563 = call float @dx.op.unary.f32(i32 7, float %1562)  ; Saturate(value)
  %1564 = fmul fast float %1563, 2.000000e+00
  %1565 = fsub fast float 3.000000e+00, %1564
  %1566 = fsub fast float %1542, %1552
  %1567 = fmul fast float %1563, %1563
  %1568 = fmul fast float %1567, %1566
  %1569 = fmul fast float %1568, %1565
  %1570 = fadd fast float %1569, %1552
  br label %1571

; <label>:1571                                    ; preds = %1553, %1551
  %1572 = phi float [ %1570, %1553 ], [ %1552, %1551 ]
  %1573 = call float @dx.op.binary.f32(i32 35, float %1542, float %1572)  ; FMax(a,b)
  %1574 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1575 = extractvalue %dx.types.CBufRet.i32 %1574, 2
  %1576 = and i32 %1575, 1
  %1577 = icmp eq i32 %1576, 0
  %1578 = fcmp fast une float %1573, 1.000000e+00
  %1579 = and i1 %1578, %1577
  br i1 %1579, label %1580, label %1599

; <label>:1580                                    ; preds = %1571
  %1581 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %17, float %1260, float %1261, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1582 = extractvalue %dx.types.ResRet.f32 %1581, 0
  %1583 = extractvalue %dx.types.ResRet.f32 %1581, 1
  %1584 = extractvalue %dx.types.ResRet.f32 %1581, 2
  %1585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1586 = extractvalue %dx.types.CBufRet.f32 %1585, 1
  %1587 = fmul fast float %1586, %1582
  %1588 = fmul fast float %1586, %1583
  %1589 = fmul fast float %1586, %1584
  %1590 = fcmp fast ogt float %1542, 0x3FEFFF2E40000000
  %1591 = fsub fast float 1.000000e+00, %1573
  %1592 = fsub fast float 1.000000e+00, %1542
  %1593 = fdiv fast float %1591, %1592
  %1594 = call float @dx.op.unary.f32(i32 7, float %1593)  ; Saturate(value)
  %1595 = select i1 %1590, float 0.000000e+00, float %1594
  %1596 = fmul fast float %1587, %1595
  %1597 = fmul fast float %1588, %1595
  %1598 = fmul fast float %1589, %1595
  br label %1599

; <label>:1599                                    ; preds = %1580, %1571
  %1600 = phi float [ 0.000000e+00, %1571 ], [ %1596, %1580 ]
  %1601 = phi float [ 0.000000e+00, %1571 ], [ %1597, %1580 ]
  %1602 = phi float [ 0.000000e+00, %1571 ], [ %1598, %1580 ]
  %1603 = fmul fast float %1600, %306
  %1604 = fmul fast float %1601, %306
  %1605 = fmul fast float %1602, %306
  %1606 = fmul fast float %1573, %1238
  %1607 = call float @dx.op.dot3.f32(i32 55, float %1573, float %1573, float %1573, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1608 = call float @dx.op.dot3.f32(i32 55, float %1603, float %1604, float %1605, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1609 = select i1 %99, float %1607, float %1573
  %1610 = select i1 %99, float 1.000000e+00, float %1573
  %1611 = select i1 %99, float %1608, float %1603
  %1612 = select i1 %99, float 0.000000e+00, float %1604
  %1613 = select i1 %99, float 0.000000e+00, float %1605
  %1614 = fmul fast float %1609, %1250
  %1615 = fmul fast float %1609, %1251
  %1616 = fmul fast float %1610, %1252
  %1617 = fadd fast float %1614, %1611
  %1618 = fadd fast float %1615, %1612
  %1619 = fadd fast float %1613, %1616
  br label %1620

; <label>:1620                                    ; preds = %1599, %1256, %1228, %463
  %1621 = phi float [ %468, %463 ], [ %1250, %1228 ], [ %1617, %1599 ], [ %1250, %1256 ]
  %1622 = phi float [ %469, %463 ], [ %1251, %1228 ], [ %1618, %1599 ], [ %1251, %1256 ]
  %1623 = phi float [ %470, %463 ], [ %1252, %1228 ], [ %1619, %1599 ], [ %1252, %1256 ]
  %1624 = phi float [ %471, %463 ], [ %1238, %1228 ], [ %1606, %1599 ], [ %1238, %1256 ]
  %1625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1626 = extractvalue %dx.types.CBufRet.f32 %1625, 2
  %1627 = extractvalue %dx.types.CBufRet.f32 %1625, 3
  %1628 = fmul fast float %1626, %36
  %1629 = fmul fast float %1627, %37
  %1630 = call float @dx.op.unary.f32(i32 7, float %1628)  ; Saturate(value)
  %1631 = call float @dx.op.unary.f32(i32 7, float %1629)  ; Saturate(value)
  %1632 = select i1 %323, i32 2, i32 0
  %1633 = or i32 %1632, 1
  %1634 = uitofp i32 %1633 to float
  %1635 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %17, float %1630, float %1631, float %1634, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1636 = extractvalue %dx.types.ResRet.f32 %1635, 0
  %1637 = extractvalue %dx.types.ResRet.f32 %1635, 1
  %1638 = extractvalue %dx.types.ResRet.f32 %1635, 2
  %1639 = extractvalue %dx.types.ResRet.f32 %1635, 3
  %1640 = add nuw nsw i32 %1632, 2
  %1641 = uitofp i32 %1640 to float
  %1642 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %17, float %1630, float %1631, float %1641, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1643 = extractvalue %dx.types.ResRet.f32 %1642, 0
  %1644 = extractvalue %dx.types.ResRet.f32 %1642, 1
  %1645 = extractvalue %dx.types.ResRet.f32 %1642, 2
  %1646 = extractvalue %dx.types.ResRet.f32 %1642, 3
  %1647 = call float @dx.op.binary.f32(i32 35, float %1637, float %1638)  ; FMax(a,b)
  %1648 = call float @dx.op.binary.f32(i32 35, float %1636, float %1647)  ; FMax(a,b)
  %1649 = call float @dx.op.binary.f32(i32 35, float %1648, float %1639)  ; FMax(a,b)
  %1650 = call float @dx.op.binary.f32(i32 36, float %1644, float %1645)  ; FMin(a,b)
  %1651 = call float @dx.op.binary.f32(i32 36, float %1643, float %1650)  ; FMin(a,b)
  %1652 = call float @dx.op.binary.f32(i32 36, float %1651, float %1646)  ; FMin(a,b)
  %1653 = fmul fast float %1649, 2.550000e+02
  %1654 = fadd fast float %1653, 0x3F70101020000000
  %1655 = fptoui float %1654 to i32
  %1656 = fmul fast float %1652, 2.550000e+02
  %1657 = fadd fast float %1656, 0x3F70101020000000
  %1658 = fptoui float %1657 to i32
  %1659 = icmp ult i32 %1655, %1658
  br i1 %1659, label %1660, label %1712

; <label>:1660                                    ; preds = %1620
  %1661 = fcmp fast ogt float %28, 9.843750e-01
  %1662 = fadd fast float %467, -4.000000e+00
  %1663 = select i1 %1661, float -4.000000e+00, float %1662
  %1664 = call float @dx.op.binary.f32(i32 35, float %1663, float 0.000000e+00)  ; FMax(a,b)
  %1665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1666 = extractvalue %dx.types.CBufRet.f32 %1665, 0
  %1667 = fadd fast float %1666, %1664
  %1668 = extractvalue %dx.types.CBufRet.f32 %1665, 2
  %1669 = fmul fast float %1667, %1668
  %1670 = call float @dx.op.unary.f32(i32 23, float %1669)  ; Log(value)
  %1671 = extractvalue %dx.types.CBufRet.f32 %1665, 3
  %1672 = fmul fast float %1671, %1670
  %1673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1674 = extractvalue %dx.types.CBufRet.f32 %1673, 2
  %1675 = fmul fast float %1672, %1674
  %1676 = call float @dx.op.unary.f32(i32 7, float %1675)  ; Saturate(value)
  %1677 = uitofp i32 %1655 to float
  %1678 = uitofp i32 %1658 to float
  %1679 = fadd fast float %1677, 5.000000e-01
  %1680 = fadd fast float %1678, 5.000000e-01
  %1681 = fmul fast float %1674, %1679
  %1682 = fmul fast float %1674, %1680
  %1683 = fadd fast float %1681, 0x3F0FFB4800000000
  %1684 = fadd fast float %1682, 0xBF0FFB4800000000
  %1685 = call float @dx.op.binary.f32(i32 35, float %1676, float %1683)  ; FMax(a,b)
  %1686 = call float @dx.op.binary.f32(i32 36, float %1685, float %1684)  ; FMin(a,b)
  %1687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1688 = extractvalue %dx.types.CBufRet.f32 %1687, 1
  %1689 = extractvalue %dx.types.CBufRet.f32 %1687, 2
  %1690 = extractvalue %dx.types.CBufRet.f32 %1687, 0
  %1691 = select i1 %323, float %1690, float 0.000000e+00
  %1692 = fmul fast float %1688, %1686
  %1693 = fadd fast float %1691, %1692
  %1694 = fadd fast float %1691, %1689
  %1695 = fsub fast float %1688, %1689
  %1696 = fadd fast float %1695, %1691
  %1697 = call float @dx.op.binary.f32(i32 35, float %1693, float %1694)  ; FMax(a,b)
  %1698 = call float @dx.op.binary.f32(i32 36, float %1697, float %1696)  ; FMin(a,b)
  %1699 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %16, float %1630, float %1631, float %1698, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1700 = extractvalue %dx.types.ResRet.f32 %1699, 0
  %1701 = extractvalue %dx.types.ResRet.f32 %1699, 1
  %1702 = extractvalue %dx.types.ResRet.f32 %1699, 2
  %1703 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1630, float %1631, float %1698, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1704 = extractvalue %dx.types.ResRet.f32 %1703, 0
  %1705 = extractvalue %dx.types.ResRet.f32 %1703, 1
  %1706 = extractvalue %dx.types.ResRet.f32 %1703, 2
  %1707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1708 = extractvalue %dx.types.CBufRet.f32 %1707, 1
  %1709 = fmul fast float %1708, %1704
  %1710 = fmul fast float %1708, %1705
  %1711 = fmul fast float %1708, %1706
  br label %1712

; <label>:1712                                    ; preds = %1660, %1620
  %1713 = phi float [ %1700, %1660 ], [ 1.000000e+00, %1620 ]
  %1714 = phi float [ %1701, %1660 ], [ 1.000000e+00, %1620 ]
  %1715 = phi float [ %1702, %1660 ], [ 1.000000e+00, %1620 ]
  %1716 = phi float [ %1709, %1660 ], [ 0.000000e+00, %1620 ]
  %1717 = phi float [ %1710, %1660 ], [ 0.000000e+00, %1620 ]
  %1718 = phi float [ %1711, %1660 ], [ 0.000000e+00, %1620 ]
  %1719 = fmul fast float %1716, %306
  %1720 = fmul fast float %1717, %306
  %1721 = fmul fast float %1718, %306
  %1722 = fmul fast float %1713, %1624
  %1723 = call float @dx.op.dot3.f32(i32 55, float %1713, float %1714, float %1715, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1724 = call float @dx.op.dot3.f32(i32 55, float %1719, float %1720, float %1721, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1725 = select i1 %99, float %1723, float %1713
  %1726 = select i1 %99, float %1723, float %1714
  %1727 = select i1 %99, float 1.000000e+00, float %1715
  %1728 = select i1 %99, float %1724, float %1719
  %1729 = select i1 %99, float 0.000000e+00, float %1720
  %1730 = select i1 %99, float 0.000000e+00, float %1721
  %1731 = fmul fast float %1725, %1621
  %1732 = fmul fast float %1726, %1622
  %1733 = fmul fast float %1727, %1623
  %1734 = fadd fast float %1731, %1728
  %1735 = fadd fast float %1732, %1729
  %1736 = fadd fast float %1730, %1733
  %1737 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1738 = extractvalue %dx.types.CBufRet.i32 %1737, 3
  %1739 = and i32 %1738, 3
  %1740 = icmp ne i32 %1739, 0
  %1741 = and i32 %1738, 4
  %1742 = icmp ne i32 %1741, 0
  %1743 = and i1 %1740, %1742
  %1744 = and i1 %99, %1743
  br i1 %1744, label %1745, label %1751

; <label>:1745                                    ; preds = %1712
  %1746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1747 = extractvalue %dx.types.CBufRet.f32 %1746, 1
  %1748 = fadd fast float %1722, -1.000000e+00
  %1749 = fmul fast float %1747, %1748
  %1750 = fadd fast float %1749, 1.000000e+00
  br label %1751

; <label>:1751                                    ; preds = %1745, %1712
  %1752 = phi float [ %1750, %1745 ], [ %1722, %1712 ]
  %1753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1754 = extractvalue %dx.types.CBufRet.f32 %1753, 0
  br i1 %99, label %1755, label %1776

; <label>:1755                                    ; preds = %1751
  %1756 = fadd fast float %1734, %1735
  %1757 = fmul fast float %1754, %1756
  %1758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1759 = extractvalue %dx.types.CBufRet.f32 %1758, 3
  %1760 = extractvalue %dx.types.CBufRet.f32 %310, 1
  %1761 = fsub fast float %313, %1760
  %1762 = extractvalue %dx.types.CBufRet.f32 %310, 2
  %1763 = fmul fast float %1761, %1762
  %1764 = call float @dx.op.unary.f32(i32 7, float %1763)  ; Saturate(value)
  %1765 = fsub fast float %1764, %1759
  %1766 = fmul fast float %1765, %1752
  %1767 = fadd fast float %1766, %1759
  %1768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1769 = extractvalue %dx.types.CBufRet.f32 %1768, 0
  %1770 = fsub fast float %1767, %1769
  %1771 = fmul fast float %1770, 1.000000e+01
  %1772 = call float @dx.op.unary.f32(i32 7, float %1771)  ; Saturate(value)
  %1773 = fmul fast float %1772, %306
  %1774 = fsub fast float %306, %1773
  %1775 = fmul fast float %1774, %1767
  br label %1785

; <label>:1776                                    ; preds = %1751
  %1777 = fmul fast float %1754, %1734
  %1778 = fmul fast float %1754, %1735
  %1779 = fmul fast float %1754, %1736
  %1780 = call float @dx.op.binary.f32(i32 35, float %1778, float %1779)  ; FMax(a,b)
  %1781 = call float @dx.op.binary.f32(i32 35, float %1777, float %1780)  ; FMax(a,b)
  %1782 = call float @dx.op.binary.f32(i32 35, float %1781, float %306)  ; FMax(a,b)
  %1783 = fcmp fast ugt float %1782, 0x3F10000000000000
  br i1 %1783, label %1785, label %1784

; <label>:1784                                    ; preds = %1776
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1785

; <label>:1785                                    ; preds = %1784, %1776, %1755
  %1786 = phi float [ %1757, %1755 ], [ %1777, %1784 ], [ %1777, %1776 ]
  %1787 = phi float [ %1775, %1755 ], [ %1778, %1784 ], [ %1778, %1776 ]
  %1788 = phi float [ %1774, %1755 ], [ %1779, %1784 ], [ %1779, %1776 ]
  %1789 = phi float [ %1774, %1755 ], [ %306, %1784 ], [ %306, %1776 ]
  %1790 = fadd fast float %172, 0x3FE3C6EF40000000
  %1791 = call float @dx.op.unary.f32(i32 22, float %1790)  ; Frc(value)
  %1792 = call float @dx.op.unary.f32(i32 23, float %1786)  ; Log(value)
  %1793 = fadd fast float %1792, -7.000000e+00
  %1794 = call float @dx.op.unary.f32(i32 21, float %1793)  ; Exp(value)
  %1795 = fmul fast float %1791, 2.000000e+00
  %1796 = fadd fast float %1795, -1.000000e+00
  %1797 = fmul fast float %1794, %1796
  %1798 = fcmp fast ogt float %1786, 0.000000e+00
  %1799 = select i1 %1798, float %1797, float 0.000000e+00
  %1800 = fadd fast float %1799, %1786
  %1801 = fadd fast float %172, 0x3FF3C6EF40000000
  %1802 = call float @dx.op.unary.f32(i32 22, float %1801)  ; Frc(value)
  %1803 = call float @dx.op.unary.f32(i32 23, float %1787)  ; Log(value)
  %1804 = fadd fast float %1803, -7.000000e+00
  %1805 = call float @dx.op.unary.f32(i32 21, float %1804)  ; Exp(value)
  %1806 = fmul fast float %1802, 2.000000e+00
  %1807 = fadd fast float %1806, -1.000000e+00
  %1808 = fmul fast float %1805, %1807
  %1809 = fcmp fast ogt float %1787, 0.000000e+00
  %1810 = select i1 %1809, float %1808, float 0.000000e+00
  %1811 = fadd fast float %1810, %1787
  %1812 = fadd fast float %172, 0x3FFDAA66E0000000
  %1813 = call float @dx.op.unary.f32(i32 22, float %1812)  ; Frc(value)
  %1814 = call float @dx.op.unary.f32(i32 23, float %1788)  ; Log(value)
  %1815 = fadd fast float %1814, -6.000000e+00
  %1816 = call float @dx.op.unary.f32(i32 21, float %1815)  ; Exp(value)
  %1817 = fmul fast float %1813, 2.000000e+00
  %1818 = fadd fast float %1817, -1.000000e+00
  %1819 = fmul fast float %1816, %1818
  %1820 = fcmp fast ogt float %1788, 0.000000e+00
  %1821 = select i1 %1820, float %1819, float 0.000000e+00
  %1822 = fadd fast float %1821, %1788
  %1823 = select i1 %99, float %1787, float %1811
  %1824 = select i1 %99, float %1788, float %1822
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1825 = call float @dx.op.binary.f32(i32 36, float %1800, float 3.225500e+04)  ; FMin(a,b)
  %1826 = call float @dx.op.binary.f32(i32 36, float %1823, float 3.225500e+04)  ; FMin(a,b)
  %1827 = call float @dx.op.binary.f32(i32 36, float %1824, float 3.225500e+04)  ; FMin(a,b)
  %1828 = call float @dx.op.binary.f32(i32 36, float %1789, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1825)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1826)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1827)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1828)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1789)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1789)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1789)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1789)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

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
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

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
!33 = !{[15 x i32] [i32 13, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 0]}
!34 = !{void ()* @ps_main, !"ps_main", !35, !4, !52}
!35 = !{!36, !48, null}
!36 = !{!37, !40, !42, !45, !47}
!37 = !{i32 0, !"SV_Position", i8 9, i8 3, !38, i8 4, i32 1, i8 4, i32 0, i8 0, !39}
!38 = !{i32 0}
!39 = !{i32 3, i32 15}
!40 = !{i32 1, !"TEXCOORD", i8 9, i8 0, !38, i8 2, i32 1, i8 2, i32 1, i8 0, !41}
!41 = !{i32 3, i32 3}
!42 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !43, i8 1, i32 1, i8 4, i32 2, i8 0, !44}
!43 = !{i32 2}
!44 = !{i32 3, i32 7}
!45 = !{i32 3, !"COLOR", i8 5, i8 0, !46, i8 1, i32 1, i8 1, i32 3, i8 0, null}
!46 = !{i32 4}
!47 = !{i32 4, !"SV_SampleIndex", i8 5, i8 12, !38, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!48 = !{!49, !50}
!49 = !{i32 0, !"SV_Target", i8 9, i8 16, !38, i8 0, i32 1, i8 4, i32 0, i8 0, !39}
!50 = !{i32 1, !"SV_Target", i8 9, i8 16, !51, i8 0, i32 1, i8 4, i32 1, i8 0, !39}
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

