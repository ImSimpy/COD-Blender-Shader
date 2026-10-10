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
; shader hash: 983672b942762642f1fb5876899b1a98
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
;                                   texture     f32          3d      T9     t45,space2     1
;                                   texture     f32     2darray     T10     t47,space2     1
;                                   textureunorm_f32     2darray     T11     t85,space2     1
;                                   texture     f32          2d     T12     t83,space2     1
;                                   texture    byte         r/o     T13             t1     1
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
;   output 3 depends on inputs: { 0, 1, 2, 3, 8, 9, 12 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 8, 9, 12 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 8, 9, 12 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 8, 9, 12 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 8, 9, 12 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call i32 @dx.op.loadInput.i32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = alloca [3 x float], align 4
  %28 = alloca [3 x float], align 4
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %31 = extractvalue %dx.types.CBufRet.f32 %30, 0
  %32 = fmul fast float %31, %23
  %33 = fmul fast float %31, %24
  %34 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %35 = extractvalue %dx.types.CBufRet.f32 %34, 2
  %36 = extractvalue %dx.types.CBufRet.f32 %34, 3
  %37 = fmul fast float %35, 2.000000e+00
  %38 = fmul fast float %37, %32
  %39 = fmul fast float %36, 2.000000e+00
  %40 = fmul fast float %39, %33
  %41 = fsub fast float 1.000000e+00, %38
  %42 = fsub fast float 1.000000e+00, %40
  %43 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.f32 %43, 0
  %45 = extractvalue %dx.types.CBufRet.f32 %43, 1
  %46 = extractvalue %dx.types.CBufRet.f32 %43, 2
  %47 = fmul fast float %41, %44
  %48 = fmul fast float %41, %45
  %49 = fmul fast float %41, %46
  %50 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.f32 %50, 0
  %52 = extractvalue %dx.types.CBufRet.f32 %50, 1
  %53 = extractvalue %dx.types.CBufRet.f32 %50, 2
  %54 = fmul fast float %42, %51
  %55 = fmul fast float %42, %52
  %56 = fmul fast float %42, %53
  %57 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %58 = extractvalue %dx.types.CBufRet.f32 %57, 0
  %59 = extractvalue %dx.types.CBufRet.f32 %57, 1
  %60 = extractvalue %dx.types.CBufRet.f32 %57, 2
  %61 = fadd fast float %54, %58
  %62 = fadd fast float %61, %47
  %63 = fadd fast float %55, %59
  %64 = fadd fast float %63, %48
  %65 = fadd fast float %56, %60
  %66 = fadd fast float %65, %49
  %67 = fmul fast float %62, %26
  %68 = fmul fast float %64, %26
  %69 = fmul fast float %66, %26
  %70 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %71 = extractvalue %dx.types.CBufRet.i32 %70, 3
  %72 = and i32 %71, 3
  %73 = icmp ne i32 %72, 0
  %74 = and i32 %71, 4
  %75 = icmp ne i32 %74, 0
  %76 = and i1 %73, %75
  br i1 %76, label %77, label %86

; <label>:77                                      ; preds = %0
  %78 = fmul fast float %36, %33
  %79 = fmul fast float %35, %32
  %80 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %15, float %79, float %78, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %81 = extractvalue %dx.types.ResRet.f32 %80, 0
  %82 = fsub fast float 1.000000e+00, %81
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.f32 %83, 0
  %85 = fcmp fast olt float %82, %84
  br label %94

; <label>:86                                      ; preds = %0
  %87 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %88 = extractvalue %dx.types.CBufRet.i32 %87, 3
  %89 = and i32 %88, 3
  %90 = icmp ne i32 %89, 0
  %91 = and i32 %88, 4
  %92 = icmp eq i32 %91, 0
  %93 = and i1 %90, %92
  br label %94

; <label>:94                                      ; preds = %86, %77
  %95 = phi i1 [ %85, %77 ], [ %93, %86 ]
  %96 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %97 = extractvalue %dx.types.CBufRet.f32 %96, 2
  %98 = extractvalue %dx.types.CBufRet.f32 %96, 3
  %99 = fmul fast float %97, %32
  %100 = fmul fast float %98, %33
  %101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %102 = extractvalue %dx.types.ResRet.i32 %101, 0
  %103 = and i32 %102, 114688
  %104 = icmp ne i32 %103, 0
  %105 = select i1 %104, float %99, float 0.000000e+00
  %106 = select i1 %104, float %100, float 0.000000e+00
  %107 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %16, float %105, float %106, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %108 = extractvalue %dx.types.ResRet.f32 %107, 0
  %109 = fmul fast float %108, 2.550000e+02
  %110 = fptoui float %109 to i32
  %111 = select i1 %104, i32 %110, i32 0
  %112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 188, i32 undef)  ; BufferLoad(srv,index,wot)
  %113 = extractvalue %dx.types.ResRet.i32 %112, 0
  %114 = and i32 %113, 16
  %115 = icmp ne i32 %114, 0
  %116 = select i1 %115, float 1.000000e+00, float %22
  %117 = fcmp fast ogt float %116, 0.000000e+00
  br i1 %117, label %119, label %118

; <label>:118                                     ; preds = %94
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %119

; <label>:119                                     ; preds = %118, %94
  %120 = call float @dx.op.unary.f32(i32 7, float %116)  ; Saturate(value)
  %121 = fmul fast float %32, 5.000000e-01
  %122 = fmul fast float %33, 5.000000e-01
  %123 = fptosi float %121 to i32
  %124 = fptosi float %122 to i32
  %125 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %7, i32 0, i32 %123, i32 %124, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %126 = extractvalue %dx.types.ResRet.i32 %125, 0
  %127 = lshr i32 %126, 18
  %128 = uitofp i32 %127 to float
  %129 = fmul fast float %128, 0x3F4C00EBA0000000
  %130 = call float @dx.op.unary.f32(i32 21, float %129)  ; Exp(value)
  %131 = fadd fast float %130, -1.000000e+00
  %132 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %7, i32 0)  ; GetDimensions(handle,mipLevel)
  %133 = extractvalue %dx.types.Dimensions %132, 0
  %134 = sitofp i32 %133 to float
  %135 = extractvalue %dx.types.Dimensions %132, 1
  %136 = sitofp i32 %135 to float
  %137 = fcmp fast oge float %121, %134
  %138 = fcmp fast oge float %122, %136
  %139 = or i1 %137, %138
  %140 = select i1 %139, float 0x4197782600000000, float %131
  %141 = fsub fast float %140, %26
  %142 = fcmp fast ogt float %141, 0.000000e+00
  %143 = and i32 %111, -2
  %144 = icmp eq i32 %143, 2
  %145 = and i1 %144, %142
  %146 = xor i1 %142, true
  %147 = icmp eq i32 %111, 1
  %148 = and i1 %147, %146
  %149 = or i1 %145, %148
  %150 = and i32 %113, 262144
  %151 = icmp ne i32 %150, 0
  %152 = and i1 %151, %149
  %153 = xor i1 %149, true
  %154 = and i32 %113, 131072
  %155 = icmp ne i32 %154, 0
  %156 = and i1 %155, %153
  %157 = or i1 %152, %156
  br i1 %157, label %158, label %159

; <label>:158                                     ; preds = %119
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %159

; <label>:159                                     ; preds = %158, %119
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.f32 %160, 2
  %162 = fptosi float %26 to i32
  %163 = sitofp i32 %162 to float
  %164 = fadd fast float %161, %163
  %165 = fmul fast float %164, 0x3FE3C6EF40000000
  %166 = frem fast float %32, 2.560000e+02
  %167 = frem fast float %33, 2.560000e+02
  %168 = fptoui float %166 to i32
  %169 = fptoui float %167 to i32
  %170 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 0, i32 %168, i32 %169, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %171 = extractvalue %dx.types.ResRet.f32 %170, 0
  %172 = fadd fast float %171, %165
  %173 = call float @dx.op.unary.f32(i32 22, float %172)  ; Frc(value)
  %174 = add i32 %19, 72
  %175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %174, i32 undef)  ; BufferLoad(srv,index,wot)
  %176 = extractvalue %dx.types.ResRet.i32 %175, 0
  %177 = add i32 %176, 0
  %178 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %177, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %179 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %178, %dx.types.Handle %29, float %20, float %21, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %180 = extractvalue %dx.types.ResRet.f32 %179, 0
  %181 = extractvalue %dx.types.ResRet.f32 %179, 1
  %182 = extractvalue %dx.types.ResRet.f32 %179, 2
  %183 = add i32 %19, 56
  %184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %183, i32 undef)  ; BufferLoad(srv,index,wot)
  %185 = extractvalue %dx.types.ResRet.i32 %184, 0
  %186 = and i32 %185, 255
  %187 = uitofp i32 %186 to float
  %188 = fmul fast float %187, 0x3F70101020000000
  %189 = lshr i32 %185, 8
  %190 = and i32 %189, 255
  %191 = uitofp i32 %190 to float
  %192 = fmul fast float %191, 0x3F70101020000000
  %193 = lshr i32 %185, 16
  %194 = and i32 %193, 255
  %195 = uitofp i32 %194 to float
  %196 = fmul fast float %195, 0x3F70101020000000
  %197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %198 = extractvalue %dx.types.CBufRet.f32 %197, 0
  %199 = fmul fast float %198, %180
  %200 = fmul fast float %188, %188
  %201 = fmul fast float %200, %199
  %202 = fmul fast float %198, %181
  %203 = fmul fast float %192, %192
  %204 = fmul fast float %203, %202
  %205 = fmul fast float %198, %182
  %206 = fmul fast float %196, %196
  %207 = fmul fast float %206, %205
  %208 = call float @dx.op.dot3.f32(i32 55, float %201, float %204, float %207, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %209 = add i32 %19, 32
  %210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %211 = extractvalue %dx.types.ResRet.i32 %210, 0
  %212 = and i32 %211, 255
  %213 = uitofp i32 %212 to float
  %214 = lshr i32 %211, 8
  %215 = and i32 %214, 255
  %216 = uitofp i32 %215 to float
  %217 = fmul fast float %216, %208
  %218 = fadd fast float %217, %213
  %219 = fmul fast float %218, 0x3F70101020000000
  %220 = call float @dx.op.unary.f32(i32 7, float %219)  ; Saturate(value)
  %221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.f32 %221, 0
  %223 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %7, i32 0, i32 %123, i32 %124, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %224 = extractvalue %dx.types.ResRet.i32 %223, 0
  %225 = lshr i32 %224, 18
  %226 = uitofp i32 %225 to float
  %227 = fmul fast float %226, 0x3F4C00EBA0000000
  %228 = call float @dx.op.unary.f32(i32 21, float %227)  ; Exp(value)
  %229 = fadd fast float %228, -1.000000e+00
  %230 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %7, i32 0)  ; GetDimensions(handle,mipLevel)
  %231 = extractvalue %dx.types.Dimensions %230, 0
  %232 = sitofp i32 %231 to float
  %233 = extractvalue %dx.types.Dimensions %230, 1
  %234 = sitofp i32 %233 to float
  %235 = fcmp fast oge float %121, %232
  %236 = fcmp fast oge float %122, %234
  %237 = or i1 %235, %236
  %238 = select i1 %237, float 0x4197782600000000, float %229
  %239 = fmul fast float %222, %220
  %240 = fsub fast float -0.000000e+00, %220
  %241 = call float @dx.op.unary.f32(i32 7, float %240)  ; Saturate(value)
  %242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %243 = extractvalue %dx.types.CBufRet.f32 %242, 3
  %244 = fmul fast float %243, %241
  %245 = fadd fast float %244, %239
  %246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %247 = extractvalue %dx.types.CBufRet.f32 %246, 3
  %248 = fmul fast float %201, %120
  %249 = fmul fast float %204, %120
  %250 = fmul fast float %207, %120
  %251 = icmp eq i32 %111, 3
  %252 = fcmp fast ogt float %26, %238
  %253 = and i1 %147, %252
  %254 = or i1 %251, %253
  %255 = icmp eq i32 %111, 2
  %256 = fcmp fast ole float %26, %238
  %257 = and i1 %255, %256
  %258 = or i1 %257, %254
  br i1 %253, label %259, label %376

; <label>:259                                     ; preds = %159
  %260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %261 = extractvalue %dx.types.CBufRet.f32 %260, 2
  %262 = extractvalue %dx.types.CBufRet.f32 %260, 3
  %263 = fmul fast float %261, %32
  %264 = fmul fast float %262, %33
  %265 = call float @dx.op.unary.f32(i32 7, float %263)  ; Saturate(value)
  %266 = call float @dx.op.unary.f32(i32 7, float %264)  ; Saturate(value)
  %267 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %15, float %265, float %266, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %268 = extractvalue %dx.types.ResRet.f32 %267, 0
  %269 = extractvalue %dx.types.ResRet.f32 %267, 1
  %270 = extractvalue %dx.types.ResRet.f32 %267, 2
  %271 = extractvalue %dx.types.ResRet.f32 %267, 3
  %272 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %15, float %265, float %266, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %273 = extractvalue %dx.types.ResRet.f32 %272, 0
  %274 = extractvalue %dx.types.ResRet.f32 %272, 1
  %275 = extractvalue %dx.types.ResRet.f32 %272, 2
  %276 = extractvalue %dx.types.ResRet.f32 %272, 3
  %277 = call float @dx.op.binary.f32(i32 35, float %269, float %270)  ; FMax(a,b)
  %278 = call float @dx.op.binary.f32(i32 35, float %268, float %277)  ; FMax(a,b)
  %279 = call float @dx.op.binary.f32(i32 35, float %278, float %271)  ; FMax(a,b)
  %280 = call float @dx.op.binary.f32(i32 36, float %274, float %275)  ; FMin(a,b)
  %281 = call float @dx.op.binary.f32(i32 36, float %273, float %280)  ; FMin(a,b)
  %282 = call float @dx.op.binary.f32(i32 36, float %281, float %276)  ; FMin(a,b)
  %283 = fmul fast float %279, 2.550000e+02
  %284 = fadd fast float %283, 0x3F70101020000000
  %285 = fptoui float %284 to i32
  %286 = fmul fast float %282, 2.550000e+02
  %287 = fadd fast float %286, 0x3F70101020000000
  %288 = fptoui float %287 to i32
  %289 = icmp ult i32 %285, %288
  br i1 %289, label %290, label %332

; <label>:290                                     ; preds = %259
  %291 = fcmp fast ogt float %25, 9.843750e-01
  %292 = fadd fast float %26, -4.000000e+00
  %293 = select i1 %291, float -4.000000e+00, float %292
  %294 = call float @dx.op.binary.f32(i32 35, float %293, float 0.000000e+00)  ; FMax(a,b)
  %295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %296 = extractvalue %dx.types.CBufRet.f32 %295, 0
  %297 = fadd fast float %296, %294
  %298 = extractvalue %dx.types.CBufRet.f32 %295, 2
  %299 = fmul fast float %297, %298
  %300 = call float @dx.op.unary.f32(i32 23, float %299)  ; Log(value)
  %301 = extractvalue %dx.types.CBufRet.f32 %295, 3
  %302 = fmul fast float %301, %300
  %303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %304 = extractvalue %dx.types.CBufRet.f32 %303, 2
  %305 = fmul fast float %302, %304
  %306 = call float @dx.op.unary.f32(i32 7, float %305)  ; Saturate(value)
  %307 = uitofp i32 %285 to float
  %308 = uitofp i32 %288 to float
  %309 = fadd fast float %307, 5.000000e-01
  %310 = fadd fast float %308, 5.000000e-01
  %311 = fmul fast float %304, %309
  %312 = fmul fast float %304, %310
  %313 = fadd fast float %311, 0x3F0FFB4800000000
  %314 = fadd fast float %312, 0xBF0FFB4800000000
  %315 = call float @dx.op.binary.f32(i32 35, float %306, float %313)  ; FMax(a,b)
  %316 = call float @dx.op.binary.f32(i32 36, float %315, float %314)  ; FMin(a,b)
  %317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %318 = extractvalue %dx.types.CBufRet.f32 %317, 1
  %319 = extractvalue %dx.types.CBufRet.f32 %317, 2
  %320 = extractvalue %dx.types.CBufRet.f32 %317, 0
  %321 = fmul fast float %318, %316
  %322 = fadd fast float %320, %321
  %323 = fadd fast float %320, %319
  %324 = fsub fast float %318, %319
  %325 = fadd fast float %324, %320
  %326 = call float @dx.op.binary.f32(i32 35, float %322, float %323)  ; FMax(a,b)
  %327 = call float @dx.op.binary.f32(i32 36, float %326, float %325)  ; FMin(a,b)
  %328 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %14, float %265, float %266, float %327, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %329 = extractvalue %dx.types.ResRet.f32 %328, 0
  %330 = extractvalue %dx.types.ResRet.f32 %328, 1
  %331 = extractvalue %dx.types.ResRet.f32 %328, 2
  br label %332

; <label>:332                                     ; preds = %290, %259
  %333 = phi float [ %329, %290 ], [ 1.000000e+00, %259 ]
  %334 = phi float [ %330, %290 ], [ 1.000000e+00, %259 ]
  %335 = phi float [ %331, %290 ], [ 1.000000e+00, %259 ]
  %336 = call float @dx.op.dot3.f32(i32 55, float %333, float %334, float %335, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %337 = select i1 %95, float %336, float %333
  %338 = select i1 %95, float %336, float %334
  %339 = select i1 %95, float 1.000000e+00, float %335
  %340 = fmul fast float %337, %248
  %341 = fmul fast float %338, %249
  %342 = fmul fast float %339, %250
  %343 = fmul fast float %32, 2.000000e+00
  %344 = fmul fast float %343, %261
  %345 = fmul fast float %33, 2.000000e+00
  %346 = fmul fast float %345, %262
  %347 = fsub fast float 1.000000e+00, %344
  %348 = fsub fast float 1.000000e+00, %346
  %349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %350 = extractvalue %dx.types.CBufRet.f32 %349, 0
  %351 = extractvalue %dx.types.CBufRet.f32 %349, 1
  %352 = extractvalue %dx.types.CBufRet.f32 %349, 2
  %353 = fmul fast float %347, %350
  %354 = fmul fast float %347, %351
  %355 = fmul fast float %347, %352
  %356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %357 = extractvalue %dx.types.CBufRet.f32 %356, 0
  %358 = extractvalue %dx.types.CBufRet.f32 %356, 1
  %359 = extractvalue %dx.types.CBufRet.f32 %356, 2
  %360 = fmul fast float %348, %357
  %361 = fmul fast float %348, %358
  %362 = fmul fast float %348, %359
  %363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %364 = extractvalue %dx.types.CBufRet.f32 %363, 0
  %365 = extractvalue %dx.types.CBufRet.f32 %363, 1
  %366 = extractvalue %dx.types.CBufRet.f32 %363, 2
  %367 = fadd fast float %360, %364
  %368 = fadd fast float %367, %353
  %369 = fadd fast float %361, %365
  %370 = fadd fast float %369, %354
  %371 = fadd fast float %362, %366
  %372 = fadd fast float %371, %355
  %373 = fmul fast float %368, %238
  %374 = fmul fast float %370, %238
  %375 = fmul fast float %372, %238
  br label %376

; <label>:376                                     ; preds = %332, %159
  %377 = phi float [ %373, %332 ], [ %67, %159 ]
  %378 = phi float [ %374, %332 ], [ %68, %159 ]
  %379 = phi float [ %375, %332 ], [ %69, %159 ]
  %380 = phi float [ %238, %332 ], [ %26, %159 ]
  %381 = phi float [ %340, %332 ], [ %248, %159 ]
  %382 = phi float [ %341, %332 ], [ %249, %159 ]
  %383 = phi float [ %342, %332 ], [ %250, %159 ]
  %384 = phi float [ %333, %332 ], [ 1.000000e+00, %159 ]
  br i1 %258, label %1261, label %385

; <label>:385                                     ; preds = %376
  %386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %387 = extractvalue %dx.types.CBufRet.f32 %386, 0
  %388 = extractvalue %dx.types.CBufRet.f32 %386, 1
  %389 = extractvalue %dx.types.CBufRet.f32 %386, 2
  %390 = extractvalue %dx.types.CBufRet.f32 %386, 3
  %391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %392 = extractvalue %dx.types.CBufRet.f32 %391, 0
  %393 = extractvalue %dx.types.CBufRet.f32 %391, 1
  %394 = extractvalue %dx.types.CBufRet.f32 %391, 2
  %395 = extractvalue %dx.types.CBufRet.f32 %391, 3
  %396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %397 = extractvalue %dx.types.CBufRet.f32 %396, 3
  %398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %399 = extractvalue %dx.types.CBufRet.f32 %398, 3
  %400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %401 = extractvalue %dx.types.CBufRet.f32 %400, 3
  %402 = extractvalue %dx.types.CBufRet.f32 %400, 0
  %403 = extractvalue %dx.types.CBufRet.f32 %400, 1
  %404 = extractvalue %dx.types.CBufRet.f32 %400, 2
  %405 = fcmp fast olt float %404, -5.000000e-01
  %406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %407 = extractvalue %dx.types.CBufRet.f32 %406, 3
  %408 = call float @dx.op.dot3.f32(i32 55, float %377, float %378, float %379, float %377, float %378, float %379)  ; Dot3(ax,ay,az,bx,by,bz)
  %409 = call float @dx.op.unary.f32(i32 25, float %408)  ; Rsqrt(value)
  %410 = fmul fast float %409, %408
  %411 = fmul fast float %409, %377
  %412 = fmul fast float %409, %378
  %413 = fmul fast float %409, %379
  %414 = fadd fast float %410, %390
  %415 = call float @dx.op.dot3.f32(i32 55, float %411, float %412, float %413, float %387, float %388, float %389)  ; Dot3(ax,ay,az,bx,by,bz)
  %416 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %417 = extractvalue %dx.types.CBufRet.i32 %416, 1
  %418 = and i32 %417, 1
  %419 = icmp ne i32 %418, 0
  %420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %421 = extractvalue %dx.types.CBufRet.f32 %420, 2
  %422 = fcmp fast ogt float %421, 0.000000e+00
  %423 = and i1 %419, %422
  br i1 %423, label %424, label %763, !dx.controlflow.hints !49

; <label>:424                                     ; preds = %385
  %425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %426 = extractvalue %dx.types.CBufRet.f32 %425, 3
  %427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %428 = extractvalue %dx.types.CBufRet.f32 %427, 2
  %429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %430 = extractvalue %dx.types.CBufRet.f32 %429, 2
  %431 = fsub fast float %428, %430
  %432 = and i32 %417, 2
  %433 = extractvalue %dx.types.CBufRet.i32 %416, 0
  %434 = call i32 @dx.op.binary.i32(i32 40, i32 %433, i32 3)  ; UMin(a,b)
  %435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %436 = extractvalue %dx.types.CBufRet.f32 %435, 0
  %437 = extractvalue %dx.types.CBufRet.f32 %435, 1
  %438 = extractvalue %dx.types.CBufRet.f32 %429, 0
  %439 = extractvalue %dx.types.CBufRet.f32 %429, 1
  %440 = fsub fast float %436, %438
  %441 = fsub fast float %437, %439
  %442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %443 = extractvalue %dx.types.CBufRet.f32 %442, 0
  %444 = fcmp fast ogt float %443, 0.000000e+00
  %445 = fsub fast float -0.000000e+00, %440
  %446 = fsub fast float -0.000000e+00, %441
  %447 = call float @dx.op.dot2.f32(i32 54, float %411, float %412, float %411, float %412)  ; Dot2(ax,ay,bx,by)
  %448 = call float @dx.op.dot2.f32(i32 54, float %411, float %412, float %445, float %446)  ; Dot2(ax,ay,bx,by)
  %449 = fmul fast float %448, 2.000000e+00
  %450 = call float @dx.op.dot2.f32(i32 54, float %445, float %446, float %445, float %446)  ; Dot2(ax,ay,bx,by)
  %451 = fmul fast float %443, %443
  %452 = fsub fast float %450, %451
  %453 = fmul fast float %449, %449
  %454 = fmul fast float %447, 4.000000e+00
  %455 = fmul fast float %454, %452
  %456 = fsub fast float %453, %455
  %457 = fcmp fast ogt float %456, 0.000000e+00
  br i1 %457, label %458, label %473

; <label>:458                                     ; preds = %424
  %459 = fcmp fast ogt float %449, 0.000000e+00
  %460 = call float @dx.op.unary.f32(i32 24, float %456)  ; Sqrt(value)
  %461 = fsub fast float -0.000000e+00, %460
  %462 = select i1 %459, float %460, float %461
  %463 = fadd fast float %462, %449
  %464 = fmul float %463, -5.000000e-01
  %465 = fdiv fast float %464, %447
  %466 = call float @dx.op.binary.f32(i32 35, float %465, float 0.000000e+00)  ; FMax(a,b)
  %467 = call float @dx.op.binary.f32(i32 36, float %410, float %466)  ; FMin(a,b)
  %468 = fdiv fast float %452, %464
  %469 = call float @dx.op.binary.f32(i32 35, float %468, float 0.000000e+00)  ; FMax(a,b)
  %470 = call float @dx.op.binary.f32(i32 36, float %410, float %469)  ; FMin(a,b)
  %471 = call float @dx.op.binary.f32(i32 36, float %467, float %470)  ; FMin(a,b)
  %472 = call float @dx.op.binary.f32(i32 35, float %467, float %470)  ; FMax(a,b)
  br label %473

; <label>:473                                     ; preds = %458, %424
  %474 = phi float [ %472, %458 ], [ -1.000000e+00, %424 ]
  %475 = phi float [ %471, %458 ], [ -1.000000e+00, %424 ]
  %476 = phi i1 [ true, %458 ], [ false, %424 ]
  %477 = and i1 %444, %476
  br i1 %477, label %478, label %480

; <label>:478                                     ; preds = %473
  %479 = fcmp fast oeq float %475, %474
  br i1 %479, label %723, label %481

; <label>:480                                     ; preds = %473
  br i1 %444, label %723, label %481

; <label>:481                                     ; preds = %480, %478
  %482 = phi float [ %410, %480 ], [ %474, %478 ]
  %483 = phi float [ 0.000000e+00, %480 ], [ %475, %478 ]
  %484 = icmp ne i32 %432, 0
  %485 = fmul fast float %482, %413
  %486 = fadd fast float %485, %426
  %487 = fmul fast float %486, %482
  %488 = select i1 %484, float 0.000000e+00, float %487
  %489 = fcmp fast oeq float %413, 0.000000e+00
  %490 = fdiv fast float %431, %413
  %491 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %490)  ; FMax(a,b)
  %492 = select i1 %489, float %482, float %491
  %493 = call float @dx.op.binary.f32(i32 36, float %482, float %492)  ; FMin(a,b)
  %494 = fcmp fast ogt float %413, 0.000000e+00
  %495 = fcmp fast olt float %431, 0.000000e+00
  br i1 %494, label %496, label %533

; <label>:496                                     ; preds = %481
  %497 = icmp eq i32 %432, 0
  br i1 %495, label %498, label %522

; <label>:498                                     ; preds = %496
  %499 = select i1 %497, float %482, float 0.000000e+00
  %500 = fsub fast float -0.000000e+00, %499
  %501 = call float @dx.op.unary.f32(i32 6, float %500)  ; FAbs(value)
  %502 = fmul fast float %499, %413
  %503 = fadd fast float %502, %426
  %504 = fmul fast float %501, %503
  %505 = fsub fast float %488, %504
  %506 = fsub fast float %482, %501
  %507 = select i1 %497, float %506, float 0.000000e+00
  %508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %509 = extractvalue %dx.types.CBufRet.f32 %508, 3
  %510 = call float @dx.op.binary.f32(i32 36, float %505, float %509)  ; FMin(a,b)
  %511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %512 = extractvalue %dx.types.CBufRet.f32 %511, 0
  %513 = extractvalue %dx.types.CBufRet.f32 %511, 1
  %514 = fadd fast float %513, %512
  %515 = call float @dx.op.unary.f32(i32 7, float %514)  ; Saturate(value)
  %516 = extractvalue %dx.types.CBufRet.f32 %511, 2
  %517 = extractvalue %dx.types.CBufRet.f32 %511, 3
  %518 = fadd fast float %517, %516
  %519 = call float @dx.op.unary.f32(i32 7, float %518)  ; Saturate(value)
  %520 = fmul fast float %515, %510
  %521 = fmul fast float %520, %519
  br label %723

; <label>:522                                     ; preds = %496
  br i1 %497, label %523, label %544

; <label>:523                                     ; preds = %522
  %524 = call float @dx.op.binary.f32(i32 36, float %493, float %483)  ; FMin(a,b)
  %525 = fsub fast float %493, %524
  %526 = fsub fast float %525, %482
  %527 = call float @dx.op.unary.f32(i32 6, float %526)  ; FAbs(value)
  %528 = fadd fast float %525, %482
  %529 = fmul fast float %528, %413
  %530 = fadd fast float %529, %426
  %531 = fmul fast float %530, %527
  %532 = fsub fast float %488, %531
  br label %544

; <label>:533                                     ; preds = %481
  br i1 %495, label %534, label %544

; <label>:534                                     ; preds = %533
  %535 = call float @dx.op.binary.f32(i32 35, float %483, float %493)  ; FMax(a,b)
  %536 = icmp eq i32 %432, 0
  %537 = select i1 %536, float %493, float 0.000000e+00
  %538 = fsub fast float -0.000000e+00, %537
  %539 = call float @dx.op.unary.f32(i32 6, float %538)  ; FAbs(value)
  %540 = fmul fast float %537, %413
  %541 = fadd fast float %540, %426
  %542 = fmul fast float %539, %541
  %543 = fsub fast float %488, %542
  br label %544

; <label>:544                                     ; preds = %534, %533, %523, %522
  %545 = phi float [ %483, %522 ], [ %483, %523 ], [ %535, %534 ], [ %483, %533 ]
  %546 = phi float [ 0.000000e+00, %522 ], [ %527, %523 ], [ %539, %534 ], [ 0.000000e+00, %533 ]
  %547 = phi float [ %488, %522 ], [ %532, %523 ], [ %543, %534 ], [ %488, %533 ]
  %548 = phi float [ %493, %522 ], [ %493, %523 ], [ %482, %534 ], [ %482, %533 ]
  %549 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 0
  store float -1.000000e+00, float* %549, align 4, !tbaa !50, !noalias !54
  %550 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 1
  store float -1.000000e+00, float* %550, align 4, !tbaa !50, !noalias !54
  %551 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 2
  store float -1.000000e+00, float* %551, align 4, !tbaa !50, !noalias !54
  %552 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 0
  store float -1.000000e+00, float* %552, align 4, !tbaa !50, !noalias !54
  %553 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 1
  store float -1.000000e+00, float* %553, align 4, !tbaa !50, !noalias !54
  %554 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 2
  store float -1.000000e+00, float* %554, align 4, !tbaa !50, !noalias !54
  %555 = icmp sgt i32 %434, 0
  br i1 %555, label %556, label %617

; <label>:556                                     ; preds = %544
  br label %557

; <label>:557                                     ; preds = %606, %556
  %558 = phi i32 [ %607, %606 ], [ 0, %556 ]
  %559 = phi i32 [ %608, %606 ], [ 0, %556 ]
  %560 = add nuw i32 %559, 171
  %561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 %560)  ; CBufferLoadLegacy(handle,regIndex)
  %562 = extractvalue %dx.types.CBufRet.f32 %561, 0
  %563 = extractvalue %dx.types.CBufRet.f32 %561, 1
  %564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %565 = extractvalue %dx.types.CBufRet.f32 %564, 0
  %566 = extractvalue %dx.types.CBufRet.f32 %564, 1
  %567 = fsub fast float %562, %565
  %568 = fsub fast float %563, %566
  %569 = extractvalue %dx.types.CBufRet.f32 %561, 2
  %570 = fsub fast float -0.000000e+00, %567
  %571 = fsub fast float -0.000000e+00, %568
  %572 = call float @dx.op.dot2.f32(i32 54, float %411, float %412, float %570, float %571)  ; Dot2(ax,ay,bx,by)
  %573 = fmul fast float %572, 2.000000e+00
  %574 = call float @dx.op.dot2.f32(i32 54, float %570, float %571, float %570, float %571)  ; Dot2(ax,ay,bx,by)
  %575 = fmul fast float %569, %569
  %576 = fsub fast float %574, %575
  %577 = fmul fast float %573, %573
  %578 = fmul fast float %454, %576
  %579 = fsub fast float %577, %578
  %580 = fcmp fast ogt float %579, 0.000000e+00
  br i1 %580, label %581, label %596

; <label>:581                                     ; preds = %557
  %582 = fcmp fast ogt float %573, 0.000000e+00
  %583 = call float @dx.op.unary.f32(i32 24, float %579)  ; Sqrt(value)
  %584 = fsub fast float -0.000000e+00, %583
  %585 = select i1 %582, float %583, float %584
  %586 = fadd fast float %585, %573
  %587 = fmul float %586, -5.000000e-01
  %588 = fdiv fast float %587, %447
  %589 = call float @dx.op.binary.f32(i32 35, float %588, float 0.000000e+00)  ; FMax(a,b)
  %590 = call float @dx.op.binary.f32(i32 36, float %482, float %589)  ; FMin(a,b)
  %591 = fdiv fast float %576, %587
  %592 = call float @dx.op.binary.f32(i32 35, float %591, float 0.000000e+00)  ; FMax(a,b)
  %593 = call float @dx.op.binary.f32(i32 36, float %482, float %592)  ; FMin(a,b)
  %594 = call float @dx.op.binary.f32(i32 36, float %590, float %593)  ; FMin(a,b)
  %595 = call float @dx.op.binary.f32(i32 35, float %590, float %593)  ; FMax(a,b)
  br label %596

; <label>:596                                     ; preds = %581, %557
  %597 = phi float [ %595, %581 ], [ -1.000000e+00, %557 ]
  %598 = phi float [ %594, %581 ], [ -1.000000e+00, %557 ]
  %599 = phi i1 [ true, %581 ], [ false, %557 ]
  br i1 %599, label %600, label %606

; <label>:600                                     ; preds = %596
  %601 = call float @dx.op.binary.f32(i32 35, float %545, float %598)  ; FMax(a,b)
  %602 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %559
  store float %601, float* %602, align 4, !tbaa !50, !noalias !54
  %603 = call float @dx.op.binary.f32(i32 35, float %545, float %597)  ; FMax(a,b)
  %604 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %559
  store float %603, float* %604, align 4, !tbaa !50, !noalias !54
  %605 = add nsw i32 %558, 1
  br label %606

; <label>:606                                     ; preds = %600, %596
  %607 = phi i32 [ %605, %600 ], [ %558, %596 ]
  %608 = add nuw nsw i32 %559, 1
  %609 = icmp eq i32 %608, %434
  br i1 %609, label %610, label %557

; <label>:610                                     ; preds = %606
  %611 = load float, float* %551, align 4, !tbaa !50, !alias.scope !70, !noalias !73
  %612 = load float, float* %550, align 4, !tbaa !50, !alias.scope !76, !noalias !77
  %613 = load float, float* %549, align 4, !tbaa !50, !alias.scope !78, !noalias !79
  %614 = load float, float* %554, align 4, !tbaa !50, !alias.scope !80, !noalias !83
  %615 = load float, float* %553, align 4, !tbaa !50, !alias.scope !86, !noalias !87
  %616 = load float, float* %552, align 4, !tbaa !50, !alias.scope !88, !noalias !89
  br label %617

; <label>:617                                     ; preds = %610, %544
  %618 = phi float [ -1.000000e+00, %544 ], [ %616, %610 ]
  %619 = phi float [ -1.000000e+00, %544 ], [ %615, %610 ]
  %620 = phi float [ -1.000000e+00, %544 ], [ %614, %610 ]
  %621 = phi float [ -1.000000e+00, %544 ], [ %613, %610 ]
  %622 = phi float [ -1.000000e+00, %544 ], [ %612, %610 ]
  %623 = phi float [ -1.000000e+00, %544 ], [ %611, %610 ]
  %624 = phi i32 [ 0, %544 ], [ %607, %610 ]
  %625 = call float @dx.op.binary.f32(i32 36, float %622, float %623)  ; FMin(a,b)
  %626 = call float @dx.op.binary.f32(i32 36, float %621, float %625)  ; FMin(a,b)
  %627 = call float @dx.op.binary.f32(i32 35, float %621, float %622)  ; FMax(a,b)
  %628 = call float @dx.op.binary.f32(i32 36, float %627, float %623)  ; FMin(a,b)
  %629 = call float @dx.op.binary.f32(i32 36, float %621, float %622)  ; FMin(a,b)
  %630 = call float @dx.op.binary.f32(i32 35, float %629, float %628)  ; FMax(a,b)
  %631 = call float @dx.op.binary.f32(i32 35, float %622, float %623)  ; FMax(a,b)
  %632 = call float @dx.op.binary.f32(i32 35, float %621, float %631)  ; FMax(a,b)
  store float %626, float* %549, align 4, !tbaa !50, !alias.scope !78, !noalias !79
  store float %630, float* %550, align 4, !tbaa !50, !alias.scope !76, !noalias !77
  store float %632, float* %551, align 4, !tbaa !50, !alias.scope !70, !noalias !73
  %633 = call float @dx.op.binary.f32(i32 36, float %619, float %620)  ; FMin(a,b)
  %634 = call float @dx.op.binary.f32(i32 36, float %618, float %633)  ; FMin(a,b)
  %635 = call float @dx.op.binary.f32(i32 35, float %618, float %619)  ; FMax(a,b)
  %636 = call float @dx.op.binary.f32(i32 36, float %635, float %620)  ; FMin(a,b)
  %637 = call float @dx.op.binary.f32(i32 36, float %618, float %619)  ; FMin(a,b)
  %638 = call float @dx.op.binary.f32(i32 35, float %637, float %636)  ; FMax(a,b)
  %639 = call float @dx.op.binary.f32(i32 35, float %619, float %620)  ; FMax(a,b)
  %640 = call float @dx.op.binary.f32(i32 35, float %618, float %639)  ; FMax(a,b)
  store float %634, float* %552, align 4, !tbaa !50, !alias.scope !88, !noalias !89
  store float %638, float* %553, align 4, !tbaa !50, !alias.scope !86, !noalias !87
  store float %640, float* %554, align 4, !tbaa !50, !alias.scope !80, !noalias !83
  %641 = sub nsw i32 3, %624
  %642 = icmp sgt i32 %641, 2
  br i1 %642, label %643, label %661

; <label>:643                                     ; preds = %617
  %644 = icmp eq i32 %432, 0
  %645 = fsub fast float %482, %546
  %646 = select i1 %644, float %645, float %546
  %647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %648 = extractvalue %dx.types.CBufRet.f32 %647, 3
  %649 = call float @dx.op.binary.f32(i32 36, float %547, float %648)  ; FMin(a,b)
  %650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %651 = extractvalue %dx.types.CBufRet.f32 %650, 0
  %652 = extractvalue %dx.types.CBufRet.f32 %650, 1
  %653 = fadd fast float %652, %651
  %654 = call float @dx.op.unary.f32(i32 7, float %653)  ; Saturate(value)
  %655 = extractvalue %dx.types.CBufRet.f32 %650, 2
  %656 = extractvalue %dx.types.CBufRet.f32 %650, 3
  %657 = fadd fast float %656, %655
  %658 = call float @dx.op.unary.f32(i32 7, float %657)  ; Saturate(value)
  %659 = fmul fast float %654, %649
  %660 = fmul fast float %659, %658
  br label %723

; <label>:661                                     ; preds = %617
  %662 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %641
  %663 = load float, float* %662, align 4, !tbaa !50, !noalias !54
  %664 = fcmp fast olt float %663, %548
  %665 = icmp sgt i32 %624, 0
  %666 = and i1 %665, %664
  br i1 %666, label %667, label %704

; <label>:667                                     ; preds = %661
  br label %668

; <label>:668                                     ; preds = %697, %667
  %669 = phi float [ %698, %697 ], [ %546, %667 ]
  %670 = phi float [ %699, %697 ], [ %547, %667 ]
  %671 = phi float [ %679, %697 ], [ %663, %667 ]
  %672 = phi i32 [ %676, %697 ], [ %641, %667 ]
  %673 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %672
  %674 = load float, float* %673, align 4, !tbaa !50, !noalias !54
  %675 = icmp slt i32 %672, 2
  %676 = add nsw i32 %672, 1
  %677 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 %676
  %678 = load float, float* %677, align 4, !tbaa !50, !noalias !54
  %679 = select i1 %675, float %678, float %482
  %680 = call float @dx.op.binary.f32(i32 36, float %679, float %674)  ; FMin(a,b)
  %681 = call float @dx.op.binary.f32(i32 36, float %548, float %680)  ; FMin(a,b)
  %682 = icmp eq i32 %432, 0
  %683 = fadd fast float %681, %671
  %684 = fmul fast float %683, %413
  %685 = fadd fast float %684, %426
  br i1 %682, label %691, label %686

; <label>:686                                     ; preds = %668
  %687 = fsub fast float %681, %671
  %688 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %687)  ; FMax(a,b)
  %689 = fmul fast float %688, %685
  %690 = fadd fast float %689, %670
  br label %697

; <label>:691                                     ; preds = %668
  %692 = fsub fast float %671, %681
  %693 = call float @dx.op.unary.f32(i32 6, float %692)  ; FAbs(value)
  %694 = fadd fast float %693, %669
  %695 = fmul fast float %693, %685
  %696 = fsub fast float %670, %695
  br label %697

; <label>:697                                     ; preds = %691, %686
  %698 = phi float [ %688, %686 ], [ %694, %691 ]
  %699 = phi float [ %690, %686 ], [ %696, %691 ]
  %700 = fcmp fast olt float %679, %548
  %701 = icmp slt i32 %676, 3
  %702 = and i1 %701, %700
  br i1 %702, label %668, label %703

; <label>:703                                     ; preds = %697
  br label %704

; <label>:704                                     ; preds = %703, %661
  %705 = phi float [ %546, %661 ], [ %698, %703 ]
  %706 = phi float [ %547, %661 ], [ %699, %703 ]
  %707 = fsub fast float %482, %705
  %708 = select i1 %484, float %705, float %707
  %709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %710 = extractvalue %dx.types.CBufRet.f32 %709, 3
  %711 = call float @dx.op.binary.f32(i32 36, float %706, float %710)  ; FMin(a,b)
  %712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %713 = extractvalue %dx.types.CBufRet.f32 %712, 0
  %714 = extractvalue %dx.types.CBufRet.f32 %712, 1
  %715 = fadd fast float %714, %713
  %716 = call float @dx.op.unary.f32(i32 7, float %715)  ; Saturate(value)
  %717 = extractvalue %dx.types.CBufRet.f32 %712, 2
  %718 = extractvalue %dx.types.CBufRet.f32 %712, 3
  %719 = fadd fast float %718, %717
  %720 = call float @dx.op.unary.f32(i32 7, float %719)  ; Saturate(value)
  %721 = fmul fast float %716, %711
  %722 = fmul fast float %721, %720
  br label %723

; <label>:723                                     ; preds = %704, %643, %498, %480, %478
  %724 = phi float [ %507, %498 ], [ %646, %643 ], [ %708, %704 ], [ 0.000000e+00, %478 ], [ 0.000000e+00, %480 ]
  %725 = phi float [ %521, %498 ], [ %660, %643 ], [ %722, %704 ], [ 0.000000e+00, %478 ], [ 0.000000e+00, %480 ]
  %726 = fmul fast float %421, %725
  %727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %728 = extractvalue %dx.types.CBufRet.f32 %727, 2
  %729 = fsub fast float %428, %728
  %730 = fcmp fast olt float %726, -2.000000e+01
  %731 = call float @dx.op.unary.f32(i32 21, float %726)  ; Exp(value)
  %732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %733 = extractvalue %dx.types.CBufRet.f32 %732, 2
  %734 = extractvalue %dx.types.CBufRet.f32 %732, 3
  %735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %736 = extractvalue %dx.types.CBufRet.f32 %735, 2
  %737 = fmul fast float %734, %729
  %738 = call float @dx.op.unary.f32(i32 7, float %737)  ; Saturate(value)
  %739 = fsub fast float 1.000000e+00, %738
  %740 = fmul fast float %413, 5.000000e-01
  %741 = fadd fast float %740, 5.000000e-01
  %742 = call float @dx.op.unary.f32(i32 7, float %741)  ; Saturate(value)
  %743 = fsub fast float 1.000000e+00, %742
  %744 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %739)  ; FMax(a,b)
  %745 = fdiv fast float %743, %744
  %746 = fsub fast float %729, %379
  %747 = call float @dx.op.unary.f32(i32 6, float %746)  ; FAbs(value)
  %748 = fmul fast float %747, %733
  %749 = call float @dx.op.unary.f32(i32 7, float %745)  ; Saturate(value)
  %750 = fsub fast float 1.000000e+00, %748
  %751 = fmul fast float %750, %749
  %752 = fadd fast float %751, %748
  %753 = fmul fast float %736, %729
  %754 = call float @dx.op.unary.f32(i32 7, float %753)  ; Saturate(value)
  %755 = fsub fast float 1.000000e+00, %752
  %756 = fmul fast float %755, %754
  %757 = fadd fast float %756, %752
  %758 = call float @dx.op.unary.f32(i32 7, float %757)  ; Saturate(value)
  %759 = fadd fast float %731, -1.000000e+00
  %760 = select i1 %730, float -1.000000e+00, float %759
  %761 = fmul fast float %758, %760
  %762 = fadd fast float %761, 1.000000e+00
  br label %763

; <label>:763                                     ; preds = %723, %385
  %764 = phi float [ %724, %723 ], [ 0.000000e+00, %385 ]
  %765 = phi float [ %762, %723 ], [ 1.000000e+00, %385 ]
  %766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %767 = extractvalue %dx.types.CBufRet.f32 %766, 1
  %768 = fsub fast float 1.000000e+00, %765
  %769 = fmul fast float %768, %414
  %770 = fmul fast float %769, %767
  %771 = fsub fast float %414, %770
  br i1 %405, label %772, label %788, !dx.controlflow.hints !90

; <label>:772                                     ; preds = %763
  %773 = fmul fast float %415, %402
  %774 = fadd fast float %773, %403
  %775 = call float @dx.op.unary.f32(i32 7, float %774)  ; Saturate(value)
  %776 = fmul fast float %392, %771
  %777 = fsub fast float -0.000000e+00, %776
  %778 = fmul fast float %393, %771
  %779 = fsub fast float -0.000000e+00, %778
  %780 = call float @dx.op.unary.f32(i32 21, float %777)  ; Exp(value)
  %781 = call float @dx.op.unary.f32(i32 21, float %779)  ; Exp(value)
  %782 = call float @dx.op.binary.f32(i32 35, float %407, float %780)  ; FMax(a,b)
  %783 = call float @dx.op.binary.f32(i32 35, float %407, float %781)  ; FMax(a,b)
  %784 = fsub fast float %783, %782
  %785 = fmul fast float %784, %775
  %786 = fadd fast float %785, %782
  %787 = call float @dx.op.unary.f32(i32 7, float %786)  ; Saturate(value)
  br label %821

; <label>:788                                     ; preds = %763
  %789 = fmul fast float %771, %401
  %790 = call float @dx.op.unary.f32(i32 7, float %789)  ; Saturate(value)
  %791 = fsub fast float 2.000000e+00, %790
  %792 = fmul fast float %790, 9.921875e-01
  %793 = fmul fast float %792, %791
  %794 = fadd fast float %793, 3.906250e-03
  %795 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %15, float %794, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %796 = extractvalue %dx.types.ResRet.f32 %795, 0
  %797 = fsub fast float %790, %796
  %798 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %797)  ; FMax(a,b)
  %799 = fmul fast float %395, %379
  %800 = call float @dx.op.unary.f32(i32 6, float %799)  ; FAbs(value)
  %801 = fcmp fast ogt float %800, 0x3EB0C6F7A0000000
  br i1 %801, label %802, label %808, !dx.controlflow.hints !91

; <label>:802                                     ; preds = %788
  %803 = fmul fast float %799, 0xBFF7154760000000
  %804 = call float @dx.op.unary.f32(i32 21, float %803)  ; Exp(value)
  %805 = fsub fast float 1.000000e+00, %804
  %806 = fdiv fast float %805, %799
  %807 = fmul fast float %806, %397
  br label %808

; <label>:808                                     ; preds = %802, %788
  %809 = phi float [ %807, %802 ], [ %397, %788 ]
  %810 = fadd fast float %809, %399
  %811 = fmul fast float %810, %798
  %812 = fmul fast float %392, %811
  %813 = fsub fast float -0.000000e+00, %812
  %814 = fmul fast float %393, %811
  %815 = fsub fast float -0.000000e+00, %814
  %816 = fmul fast float %394, %811
  %817 = fsub fast float -0.000000e+00, %816
  %818 = call float @dx.op.unary.f32(i32 21, float %813)  ; Exp(value)
  %819 = call float @dx.op.unary.f32(i32 21, float %815)  ; Exp(value)
  %820 = call float @dx.op.unary.f32(i32 21, float %817)  ; Exp(value)
  br label %821

; <label>:821                                     ; preds = %808, %772
  %822 = phi float [ %787, %772 ], [ %818, %808 ]
  %823 = phi float [ %787, %772 ], [ %819, %808 ]
  %824 = phi float [ %787, %772 ], [ %820, %808 ]
  br i1 %423, label %825, label %921, !dx.controlflow.hints !92

; <label>:825                                     ; preds = %821
  %826 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %822)  ; FMax(a,b)
  %827 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %823)  ; FMax(a,b)
  %828 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %824)  ; FMax(a,b)
  %829 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %765)  ; FMax(a,b)
  %830 = call float @dx.op.binary.f32(i32 35, float %764, float %771)  ; FMax(a,b)
  %831 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %830)  ; FMax(a,b)
  %832 = fdiv fast float %764, %831
  %833 = call float @dx.op.unary.f32(i32 7, float %832)  ; Saturate(value)
  %834 = fdiv fast float %771, %831
  %835 = call float @dx.op.unary.f32(i32 7, float %834)  ; Saturate(value)
  %836 = fcmp fast une float %829, 1.000000e+00
  br i1 %836, label %837, label %840, !dx.controlflow.hints !93

; <label>:837                                     ; preds = %825
  %838 = call float @dx.op.unary.f32(i32 23, float %829)  ; Log(value)
  %839 = fmul fast float %838, 0x3FE62E4300000000
  br label %840

; <label>:840                                     ; preds = %837, %825
  %841 = phi float [ %839, %837 ], [ 0.000000e+00, %825 ]
  %842 = fcmp fast une float %826, 1.000000e+00
  br i1 %842, label %843, label %846, !dx.controlflow.hints !94

; <label>:843                                     ; preds = %840
  %844 = call float @dx.op.unary.f32(i32 23, float %826)  ; Log(value)
  %845 = fmul fast float %844, 0x3FE62E4300000000
  br label %846

; <label>:846                                     ; preds = %843, %840
  %847 = phi float [ %845, %843 ], [ 0.000000e+00, %840 ]
  %848 = fcmp fast une float %827, 1.000000e+00
  br i1 %848, label %849, label %852, !dx.controlflow.hints !94

; <label>:849                                     ; preds = %846
  %850 = call float @dx.op.unary.f32(i32 23, float %827)  ; Log(value)
  %851 = fmul fast float %850, 0x3FE62E4300000000
  br label %852

; <label>:852                                     ; preds = %849, %846
  %853 = phi float [ %851, %849 ], [ 0.000000e+00, %846 ]
  %854 = fcmp fast une float %828, 1.000000e+00
  br i1 %854, label %855, label %858, !dx.controlflow.hints !94

; <label>:855                                     ; preds = %852
  %856 = call float @dx.op.unary.f32(i32 23, float %828)  ; Log(value)
  %857 = fmul fast float %856, 0x3FE62E4300000000
  br label %858

; <label>:858                                     ; preds = %855, %852
  %859 = phi float [ %857, %855 ], [ 0.000000e+00, %852 ]
  %860 = fmul fast float %841, %835
  %861 = fmul fast float %847, %833
  %862 = fmul fast float %853, %833
  %863 = fmul fast float %859, %833
  %864 = fadd fast float %861, %860
  %865 = fadd fast float %862, %860
  %866 = fadd fast float %863, %860
  %867 = fcmp fast une float %864, 0.000000e+00
  br i1 %867, label %868, label %871, !dx.controlflow.hints !95

; <label>:868                                     ; preds = %858
  %869 = fmul fast float %864, 0x3FF7154760000000
  %870 = call float @dx.op.unary.f32(i32 21, float %869)  ; Exp(value)
  br label %871

; <label>:871                                     ; preds = %868, %858
  %872 = phi float [ %870, %868 ], [ 1.000000e+00, %858 ]
  %873 = fcmp fast une float %865, 0.000000e+00
  br i1 %873, label %874, label %877, !dx.controlflow.hints !95

; <label>:874                                     ; preds = %871
  %875 = fmul fast float %865, 0x3FF7154760000000
  %876 = call float @dx.op.unary.f32(i32 21, float %875)  ; Exp(value)
  br label %877

; <label>:877                                     ; preds = %874, %871
  %878 = phi float [ %876, %874 ], [ 1.000000e+00, %871 ]
  %879 = fcmp fast une float %866, 0.000000e+00
  br i1 %879, label %880, label %883, !dx.controlflow.hints !95

; <label>:880                                     ; preds = %877
  %881 = fmul fast float %866, 0x3FF7154760000000
  %882 = call float @dx.op.unary.f32(i32 21, float %881)  ; Exp(value)
  br label %883

; <label>:883                                     ; preds = %880, %877
  %884 = phi float [ %882, %880 ], [ 1.000000e+00, %877 ]
  %885 = fcmp fast ogt float %833, %835
  br i1 %885, label %886, label %893

; <label>:886                                     ; preds = %883
  %887 = fsub fast float 1.000000e+00, %835
  %888 = fmul fast float %841, %887
  %889 = fcmp fast une float %888, 0.000000e+00
  br i1 %889, label %890, label %914, !dx.controlflow.hints !96

; <label>:890                                     ; preds = %886
  %891 = fmul fast float %888, 0x3FF7154760000000
  %892 = call float @dx.op.unary.f32(i32 21, float %891)  ; Exp(value)
  br label %914

; <label>:893                                     ; preds = %883
  %894 = fsub fast float 1.000000e+00, %833
  %895 = fmul fast float %847, %894
  %896 = fmul fast float %853, %894
  %897 = fmul fast float %859, %894
  %898 = fcmp fast une float %895, 0.000000e+00
  br i1 %898, label %899, label %902, !dx.controlflow.hints !95

; <label>:899                                     ; preds = %893
  %900 = fmul fast float %895, 0x3FF7154760000000
  %901 = call float @dx.op.unary.f32(i32 21, float %900)  ; Exp(value)
  br label %902

; <label>:902                                     ; preds = %899, %893
  %903 = phi float [ %901, %899 ], [ 1.000000e+00, %893 ]
  %904 = fcmp fast une float %896, 0.000000e+00
  br i1 %904, label %905, label %908, !dx.controlflow.hints !95

; <label>:905                                     ; preds = %902
  %906 = fmul fast float %896, 0x3FF7154760000000
  %907 = call float @dx.op.unary.f32(i32 21, float %906)  ; Exp(value)
  br label %908

; <label>:908                                     ; preds = %905, %902
  %909 = phi float [ %907, %905 ], [ 1.000000e+00, %902 ]
  %910 = fcmp fast une float %897, 0.000000e+00
  br i1 %910, label %911, label %914, !dx.controlflow.hints !95

; <label>:911                                     ; preds = %908
  %912 = fmul fast float %897, 0x3FF7154760000000
  %913 = call float @dx.op.unary.f32(i32 21, float %912)  ; Exp(value)
  br label %914

; <label>:914                                     ; preds = %911, %908, %890, %886
  %915 = phi float [ %913, %911 ], [ %892, %890 ], [ 1.000000e+00, %886 ], [ 1.000000e+00, %908 ]
  %916 = phi float [ %909, %911 ], [ %892, %890 ], [ 1.000000e+00, %886 ], [ %909, %908 ]
  %917 = phi float [ %903, %911 ], [ %892, %890 ], [ 1.000000e+00, %886 ], [ %903, %908 ]
  %918 = fmul fast float %917, %872
  %919 = fmul fast float %916, %878
  %920 = fmul fast float %915, %884
  br label %921

; <label>:921                                     ; preds = %914, %821
  %922 = phi float [ %920, %914 ], [ %824, %821 ]
  %923 = phi float [ %919, %914 ], [ %823, %821 ]
  %924 = phi float [ %918, %914 ], [ %822, %821 ]
  %925 = fmul fast float %924, %384
  %926 = call float @dx.op.dot3.f32(i32 55, float %924, float %923, float %922, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %927 = select i1 %95, float %926, float %924
  %928 = select i1 %95, float %926, float %923
  %929 = select i1 %95, float 1.000000e+00, float %922
  %930 = fmul fast float %927, %381
  %931 = fmul fast float %928, %382
  %932 = fmul fast float %929, %383
  %933 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %934 = extractvalue %dx.types.CBufRet.i32 %933, 0
  %935 = icmp eq i32 %934, 0
  br i1 %935, label %1261, label %936, !dx.controlflow.hints !97

; <label>:936                                     ; preds = %921
  %937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %938 = extractvalue %dx.types.CBufRet.f32 %937, 2
  %939 = extractvalue %dx.types.CBufRet.f32 %937, 3
  %940 = fmul fast float %938, %32
  %941 = fmul fast float %939, %33
  %942 = fmul fast float %940, 2.000000e+00
  %943 = fmul fast float %941, 2.000000e+00
  %944 = fsub fast float 1.000000e+00, %942
  %945 = fsub fast float 1.000000e+00, %943
  %946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %947 = extractvalue %dx.types.CBufRet.f32 %946, 0
  %948 = extractvalue %dx.types.CBufRet.f32 %946, 1
  %949 = extractvalue %dx.types.CBufRet.f32 %946, 2
  %950 = fmul fast float %944, %947
  %951 = fmul fast float %944, %948
  %952 = fmul fast float %944, %949
  %953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %954 = extractvalue %dx.types.CBufRet.f32 %953, 0
  %955 = extractvalue %dx.types.CBufRet.f32 %953, 1
  %956 = extractvalue %dx.types.CBufRet.f32 %953, 2
  %957 = fmul fast float %945, %954
  %958 = fmul fast float %945, %955
  %959 = fmul fast float %945, %956
  %960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %961 = extractvalue %dx.types.CBufRet.f32 %960, 0
  %962 = extractvalue %dx.types.CBufRet.f32 %960, 1
  %963 = extractvalue %dx.types.CBufRet.f32 %960, 2
  %964 = fadd fast float %957, %961
  %965 = fadd fast float %964, %950
  %966 = fadd fast float %958, %962
  %967 = fadd fast float %966, %951
  %968 = fadd fast float %959, %963
  %969 = fadd fast float %968, %952
  %970 = fmul fast float %965, %380
  %971 = fmul fast float %967, %380
  %972 = fmul fast float %969, %380
  %973 = fmul fast float %970, %970
  %974 = fmul fast float %971, %971
  %975 = fadd fast float %973, %974
  %976 = fmul fast float %972, %972
  %977 = fadd fast float %975, %976
  %978 = call float @dx.op.unary.f32(i32 24, float %977)  ; Sqrt(value)
  %979 = extractvalue %dx.types.CBufRet.f32 %246, 0
  %980 = fsub fast float %978, %979
  %981 = extractvalue %dx.types.CBufRet.f32 %246, 2
  %982 = fmul fast float %980, %981
  %983 = call float @dx.op.unary.f32(i32 7, float %982)  ; Saturate(value)
  %984 = fadd fast float %983, -5.000000e-01
  %985 = fmul fast float %984, 2.000000e+00
  %986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %987 = extractvalue %dx.types.CBufRet.f32 %986, 2
  %988 = call float @dx.op.binary.f32(i32 36, float %987, float %985)  ; FMin(a,b)
  %989 = fsub fast float -0.000000e+00, %987
  %990 = fcmp fast ogt float %988, %989
  br i1 %990, label %991, label %1261, !dx.controlflow.hints !98

; <label>:991                                     ; preds = %936
  %992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %993 = extractvalue %dx.types.CBufRet.f32 %992, 3
  %994 = fcmp fast ogt float %993, 0.000000e+00
  br i1 %994, label %995, label %1070, !dx.controlflow.hints !99

; <label>:995                                     ; preds = %991
  %996 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %997 = extractvalue %dx.types.Dimensions %996, 0
  %998 = sitofp i32 %997 to float
  %999 = extractvalue %dx.types.Dimensions %996, 1
  %1000 = sitofp i32 %999 to float
  %1001 = fmul fast float %940, %998
  %1002 = fmul fast float %941, %1000
  %1003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1004 = extractvalue %dx.types.CBufRet.f32 %1003, 1
  %1005 = fsub fast float -0.000000e+00, %1004
  %1006 = fptoui float %1005 to i32
  %1007 = fptoui float %1001 to i32
  %1008 = fptoui float %1002 to i32
  %1009 = and i32 %1006, 31
  %1010 = lshr i32 %1007, %1009
  %1011 = lshr i32 %1008, %1009
  %1012 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 %1006, i32 %1010, i32 %1011, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1013 = extractvalue %dx.types.ResRet.f32 %1012, 0
  %1014 = fcmp fast olt float %1013, -1.000000e+00
  %1015 = fcmp fast ogt float %1013, -1.000000e+00
  %1016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1017 = extractvalue %dx.types.CBufRet.f32 %1016, 1
  %1018 = select i1 %1015, float %1017, float 1.000000e+00
  %1019 = fadd fast float %1013, 1.000000e+00
  %1020 = fmul fast float %1018, %1019
  %1021 = call float @dx.op.unary.f32(i32 6, float %1020)  ; FAbs(value)
  %1022 = extractvalue %dx.types.CBufRet.f32 %1016, 3
  %1023 = fcmp fast oge float %1021, %1022
  %1024 = select i1 %1023, float 0x4197782600000000, float %1021
  %1025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %1026 = extractvalue %dx.types.CBufRet.f32 %1025, 0
  %1027 = extractvalue %dx.types.CBufRet.f32 %1025, 1
  %1028 = extractvalue %dx.types.CBufRet.f32 %1025, 2
  %1029 = select i1 %1014, float %1026, float %947
  %1030 = select i1 %1014, float %1027, float %948
  %1031 = select i1 %1014, float %1028, float %949
  %1032 = fmul fast float %1029, %944
  %1033 = fmul fast float %1030, %944
  %1034 = fmul fast float %1031, %944
  %1035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %1036 = extractvalue %dx.types.CBufRet.f32 %1035, 0
  %1037 = extractvalue %dx.types.CBufRet.f32 %1035, 1
  %1038 = extractvalue %dx.types.CBufRet.f32 %1035, 2
  %1039 = select i1 %1014, float %1036, float %954
  %1040 = select i1 %1014, float %1037, float %955
  %1041 = select i1 %1014, float %1038, float %956
  %1042 = fmul fast float %1039, %945
  %1043 = fmul fast float %1040, %945
  %1044 = fmul fast float %1041, %945
  %1045 = fadd fast float %1042, %1032
  %1046 = fadd fast float %1043, %1033
  %1047 = fadd fast float %1044, %1034
  %1048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %1049 = extractvalue %dx.types.CBufRet.f32 %1048, 0
  %1050 = extractvalue %dx.types.CBufRet.f32 %1048, 1
  %1051 = extractvalue %dx.types.CBufRet.f32 %1048, 2
  %1052 = select i1 %1014, float %1049, float %961
  %1053 = select i1 %1014, float %1050, float %962
  %1054 = select i1 %1014, float %1051, float %963
  %1055 = fadd fast float %1045, %1052
  %1056 = fadd fast float %1046, %1053
  %1057 = fadd fast float %1047, %1054
  %1058 = fmul fast float %1055, %1024
  %1059 = fmul fast float %1056, %1024
  %1060 = fmul fast float %1057, %1024
  %1061 = fmul fast float %1058, %1058
  %1062 = fmul fast float %1059, %1059
  %1063 = fadd fast float %1061, %1062
  %1064 = fmul fast float %1060, %1060
  %1065 = fadd fast float %1063, %1064
  %1066 = call float @dx.op.unary.f32(i32 24, float %1065)  ; Sqrt(value)
  %1067 = fsub fast float %1066, %979
  %1068 = fmul fast float %1067, %981
  %1069 = call float @dx.op.unary.f32(i32 7, float %1068)  ; Saturate(value)
  br label %1070

; <label>:1070                                    ; preds = %995, %991
  %1071 = phi float [ %1069, %995 ], [ 1.000000e+00, %991 ]
  %1072 = fmul fast float %988, 5.000000e-01
  %1073 = fadd fast float %1072, 5.000000e-01
  %1074 = call float @dx.op.unary.f32(i32 22, float %1073)  ; Frc(value)
  %1075 = call float @dx.op.unary.f32(i32 27, float %1074)  ; Round_ni(value)
  %1076 = call float @dx.op.unary.f32(i32 22, float %1074)  ; Frc(value)
  %1077 = fmul fast float %1076, 2.000000e+00
  %1078 = fadd fast float %1077, -1.000000e+00
  %1079 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %15, float %940, float %941, float %1075, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1080 = extractvalue %dx.types.ResRet.f32 %1079, 0
  %1081 = extractvalue %dx.types.ResRet.f32 %1079, 1
  %1082 = extractvalue %dx.types.ResRet.f32 %1079, 2
  %1083 = extractvalue %dx.types.ResRet.f32 %1079, 3
  %1084 = fadd fast float %1080, -5.000000e-01
  %1085 = fadd fast float %1082, -5.000000e-01
  %1086 = fmul fast float %1084, 0xBFD5555560000000
  %1087 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1085, float %1086)  ; FMad(a,b,c)
  %1088 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1081, float 0.000000e+00)  ; FMad(a,b,c)
  %1089 = fadd fast float %1088, %1083
  %1090 = fmul fast float %1084, -7.500000e-01
  %1091 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1085, float %1090)  ; FMad(a,b,c)
  %1092 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1081, float 0.000000e+00)  ; FMad(a,b,c)
  %1093 = fadd fast float %1092, %1083
  %1094 = call float @dx.op.binary.f32(i32 35, float %1087, float -1.000000e+00)  ; FMax(a,b)
  %1095 = call float @dx.op.binary.f32(i32 35, float %1089, float -1.000000e+00)  ; FMax(a,b)
  %1096 = call float @dx.op.binary.f32(i32 35, float %1091, float -1.000000e+00)  ; FMax(a,b)
  %1097 = call float @dx.op.binary.f32(i32 35, float %1093, float -1.000000e+00)  ; FMax(a,b)
  %1098 = call float @dx.op.binary.f32(i32 36, float %1094, float 1.000000e+00)  ; FMin(a,b)
  %1099 = call float @dx.op.binary.f32(i32 36, float %1095, float 1.000000e+00)  ; FMin(a,b)
  %1100 = call float @dx.op.binary.f32(i32 36, float %1096, float 1.000000e+00)  ; FMin(a,b)
  %1101 = call float @dx.op.binary.f32(i32 36, float %1097, float 1.000000e+00)  ; FMin(a,b)
  %1102 = fcmp fast olt float %1098, 0x3FEFFF8020000000
  br i1 %1102, label %1103, label %1218, !dx.controlflow.hints !100

; <label>:1103                                    ; preds = %1070
  %1104 = extractvalue %dx.types.CBufRet.f32 %986, 3
  %1105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1106 = extractvalue %dx.types.CBufRet.f32 %1105, 0
  %1107 = extractvalue %dx.types.CBufRet.f32 %1105, 1
  %1108 = extractvalue %dx.types.CBufRet.f32 %1105, 2
  %1109 = extractvalue %dx.types.CBufRet.f32 %1105, 3
  %1110 = fsub fast float %1106, %1098
  %1111 = fsub fast float %1107, %1099
  %1112 = fsub fast float %1108, %1100
  %1113 = fsub fast float %1109, %1101
  %1114 = fmul fast float %1110, %1104
  %1115 = fmul fast float %1111, %1104
  %1116 = fmul fast float %1112, %1104
  %1117 = fmul fast float %1113, %1104
  %1118 = fadd fast float %1114, %1098
  %1119 = fadd fast float %1115, %1099
  %1120 = fsub fast float -0.000000e+00, %1119
  %1121 = fadd fast float %1116, %1100
  %1122 = fadd fast float %1117, %1101
  %1123 = fmul fast float %1118, %1118
  %1124 = fsub fast float %1119, %1123
  %1125 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1124)  ; FMax(a,b)
  %1126 = fdiv fast float 1.000000e+00, %1125
  %1127 = fmul fast float %1119, %1118
  %1128 = fsub fast float %1121, %1127
  %1129 = fsub fast float %1078, %1118
  %1130 = fmul fast float %1078, %1078
  %1131 = fsub fast float %1130, %1119
  %1132 = fmul fast float %1129, %1126
  %1133 = fmul fast float %1132, %1128
  %1134 = fsub fast float %1131, %1133
  %1135 = fmul fast float %1119, %1119
  %1136 = fsub fast float %1122, %1135
  %1137 = fmul fast float %1128, %1128
  %1138 = fmul fast float %1137, %1126
  %1139 = fsub fast float %1136, %1138
  %1140 = fdiv fast float %1134, %1139
  %1141 = fmul fast float %1128, %1140
  %1142 = fsub fast float %1129, %1141
  %1143 = fmul fast float %1142, %1126
  %1144 = fmul fast float %1143, %1118
  %1145 = fsub fast float 1.000000e+00, %1144
  %1146 = fmul fast float %1119, %1140
  %1147 = fsub fast float %1145, %1146
  %1148 = fmul fast float %1143, %1143
  %1149 = fmul fast float %1140, 4.000000e+00
  %1150 = fmul fast float %1149, %1147
  %1151 = fsub fast float %1148, %1150
  %1152 = call float @dx.op.unary.f32(i32 24, float %1151)  ; Sqrt(value)
  %1153 = fcmp fast oge float %1143, 0.000000e+00
  %1154 = fsub fast float -0.000000e+00, %1152
  %1155 = select i1 %1153, float %1154, float %1152
  %1156 = fsub fast float %1155, %1143
  %1157 = fdiv fast float %1156, %1140
  %1158 = fdiv fast float %1147, %1156
  %1159 = fmul fast float %1157, 5.000000e-01
  %1160 = fmul fast float %1158, 2.000000e+00
  %1161 = select i1 %1153, float %1159, float %1160
  %1162 = select i1 %1153, float %1160, float %1159
  %1163 = call float @dx.op.binary.f32(i32 35, float %1161, float %1162)  ; FMax(a,b)
  %1164 = call float @dx.op.binary.f32(i32 36, float %1161, float %1162)  ; FMin(a,b)
  %1165 = fcmp fast ogt float %1078, %1164
  br i1 %1165, label %1166, label %1176

; <label>:1166                                    ; preds = %1103
  %1167 = fsub fast float %1078, %1164
  %1168 = fsub fast float %1163, %1164
  %1169 = fmul fast float %1167, %1168
  %1170 = fmul fast float %1163, %1078
  %1171 = fadd fast float %1163, %1078
  %1172 = fmul fast float %1171, %1118
  %1173 = fadd fast float %1170, %1119
  %1174 = fsub fast float %1173, %1172
  %1175 = fdiv fast float %1174, %1169
  br label %1176

; <label>:1176                                    ; preds = %1166, %1103
  %1177 = phi float [ %1175, %1166 ], [ 0.000000e+00, %1103 ]
  %1178 = fcmp fast ogt float %1078, %1163
  %1179 = fsub fast float %1078, %1163
  br i1 %1178, label %1180, label %1190

; <label>:1180                                    ; preds = %1176
  %1181 = fsub fast float %1163, %1164
  %1182 = fmul fast float %1181, %1179
  %1183 = fmul fast float %1164, %1078
  %1184 = fadd fast float %1164, %1078
  %1185 = fmul fast float %1184, %1118
  %1186 = fsub fast float %1120, %1183
  %1187 = fadd fast float %1186, %1185
  %1188 = fdiv fast float %1187, %1182
  %1189 = fadd fast float %1188, %1177
  br label %1190

; <label>:1190                                    ; preds = %1180, %1176
  %1191 = phi float [ %1189, %1180 ], [ %1177, %1176 ]
  %1192 = fsub fast float %1078, %1164
  %1193 = fmul fast float %1192, %1179
  %1194 = fmul fast float %1164, %1163
  %1195 = fadd fast float %1164, %1163
  %1196 = fmul fast float %1195, %1118
  %1197 = fadd fast float %1194, %1119
  %1198 = fsub fast float %1197, %1196
  %1199 = fdiv fast float %1198, %1193
  %1200 = call float @dx.op.unary.f32(i32 7, float %1191)  ; Saturate(value)
  %1201 = fcmp fast oeq float %247, 0.000000e+00
  %1202 = extractvalue %dx.types.CBufRet.f32 %986, 0
  %1203 = fcmp fast oeq float %1202, 0.000000e+00
  %1204 = or i1 %1201, %1203
  %1205 = fmul fast float %1202, 2.000000e+00
  %1206 = fadd fast float %987, %988
  %1207 = fdiv fast float %1206, %1205
  %1208 = call float @dx.op.unary.f32(i32 7, float %1207)  ; Saturate(value)
  %1209 = fmul fast float %1208, 2.000000e+00
  %1210 = fsub fast float 3.000000e+00, %1209
  %1211 = fmul fast float %1208, %1208
  %1212 = fmul fast float %1211, %1210
  %1213 = select i1 %1204, float 1.000000e+00, float %1212
  %1214 = fmul fast float %1199, %247
  %1215 = fadd fast float %1200, %1214
  %1216 = call float @dx.op.unary.f32(i32 7, float %1215)  ; Saturate(value)
  %1217 = fmul fast float %1213, %1216
  br label %1218

; <label>:1218                                    ; preds = %1190, %1070
  %1219 = phi float [ %1217, %1190 ], [ 0.000000e+00, %1070 ]
  %1220 = fsub fast float 1.000000e+00, %1219
  %1221 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %15, float %940, float %941, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1222 = extractvalue %dx.types.ResRet.f32 %1221, 0
  %1223 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1224 = extractvalue %dx.types.CBufRet.i32 %1223, 2
  %1225 = icmp eq i32 %1224, 0
  br i1 %1225, label %1231, label %1226

; <label>:1226                                    ; preds = %1218
  %1227 = call float @dx.op.unary.f32(i32 7, float %1219)  ; Saturate(value)
  %1228 = fadd fast float %1222, -1.000000e+00
  %1229 = fmul fast float %1227, %1228
  %1230 = fadd fast float %1229, 1.000000e+00
  br label %1231

; <label>:1231                                    ; preds = %1226, %1218
  %1232 = phi float [ %1230, %1226 ], [ %1220, %1218 ]
  br i1 %994, label %1233, label %1251

; <label>:1233                                    ; preds = %1231
  %1234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1235 = extractvalue %dx.types.CBufRet.f32 %1234, 1
  %1236 = fsub fast float %1071, %1235
  %1237 = call float @dx.op.unary.f32(i32 7, float %1236)  ; Saturate(value)
  %1238 = fsub fast float %1071, %993
  %1239 = call float @dx.op.unary.f32(i32 7, float %1238)  ; Saturate(value)
  %1240 = fsub fast float %1237, %1239
  %1241 = fsub fast float %1073, %1239
  %1242 = fdiv fast float %1241, %1240
  %1243 = call float @dx.op.unary.f32(i32 7, float %1242)  ; Saturate(value)
  %1244 = fmul fast float %1243, 2.000000e+00
  %1245 = fsub fast float 3.000000e+00, %1244
  %1246 = fsub fast float %1222, %1232
  %1247 = fmul fast float %1243, %1243
  %1248 = fmul fast float %1247, %1246
  %1249 = fmul fast float %1248, %1245
  %1250 = fadd fast float %1249, %1232
  br label %1251

; <label>:1251                                    ; preds = %1233, %1231
  %1252 = phi float [ %1250, %1233 ], [ %1232, %1231 ]
  %1253 = call float @dx.op.binary.f32(i32 35, float %1222, float %1252)  ; FMax(a,b)
  %1254 = fmul fast float %1253, %925
  %1255 = call float @dx.op.dot3.f32(i32 55, float %1253, float %1253, float %1253, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1256 = select i1 %95, float %1255, float %1253
  %1257 = select i1 %95, float 1.000000e+00, float %1253
  %1258 = fmul fast float %1256, %930
  %1259 = fmul fast float %1256, %931
  %1260 = fmul fast float %1257, %932
  br label %1261

; <label>:1261                                    ; preds = %1251, %936, %921, %376
  %1262 = phi float [ %381, %376 ], [ %930, %921 ], [ %1258, %1251 ], [ %930, %936 ]
  %1263 = phi float [ %382, %376 ], [ %931, %921 ], [ %1259, %1251 ], [ %931, %936 ]
  %1264 = phi float [ %383, %376 ], [ %932, %921 ], [ %1260, %1251 ], [ %932, %936 ]
  %1265 = phi float [ %384, %376 ], [ %925, %921 ], [ %1254, %1251 ], [ %925, %936 ]
  %1266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1267 = extractvalue %dx.types.CBufRet.f32 %1266, 2
  %1268 = extractvalue %dx.types.CBufRet.f32 %1266, 3
  %1269 = fmul fast float %1267, %32
  %1270 = fmul fast float %1268, %33
  %1271 = call float @dx.op.unary.f32(i32 7, float %1269)  ; Saturate(value)
  %1272 = call float @dx.op.unary.f32(i32 7, float %1270)  ; Saturate(value)
  %1273 = select i1 %258, i32 2, i32 0
  %1274 = or i32 %1273, 1
  %1275 = uitofp i32 %1274 to float
  %1276 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %15, float %1271, float %1272, float %1275, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1277 = extractvalue %dx.types.ResRet.f32 %1276, 0
  %1278 = extractvalue %dx.types.ResRet.f32 %1276, 1
  %1279 = extractvalue %dx.types.ResRet.f32 %1276, 2
  %1280 = extractvalue %dx.types.ResRet.f32 %1276, 3
  %1281 = add nuw nsw i32 %1273, 2
  %1282 = uitofp i32 %1281 to float
  %1283 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %15, float %1271, float %1272, float %1282, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1284 = extractvalue %dx.types.ResRet.f32 %1283, 0
  %1285 = extractvalue %dx.types.ResRet.f32 %1283, 1
  %1286 = extractvalue %dx.types.ResRet.f32 %1283, 2
  %1287 = extractvalue %dx.types.ResRet.f32 %1283, 3
  %1288 = call float @dx.op.binary.f32(i32 35, float %1278, float %1279)  ; FMax(a,b)
  %1289 = call float @dx.op.binary.f32(i32 35, float %1277, float %1288)  ; FMax(a,b)
  %1290 = call float @dx.op.binary.f32(i32 35, float %1289, float %1280)  ; FMax(a,b)
  %1291 = call float @dx.op.binary.f32(i32 36, float %1285, float %1286)  ; FMin(a,b)
  %1292 = call float @dx.op.binary.f32(i32 36, float %1284, float %1291)  ; FMin(a,b)
  %1293 = call float @dx.op.binary.f32(i32 36, float %1292, float %1287)  ; FMin(a,b)
  %1294 = fmul fast float %1290, 2.550000e+02
  %1295 = fadd fast float %1294, 0x3F70101020000000
  %1296 = fptoui float %1295 to i32
  %1297 = fmul fast float %1293, 2.550000e+02
  %1298 = fadd fast float %1297, 0x3F70101020000000
  %1299 = fptoui float %1298 to i32
  %1300 = icmp ult i32 %1296, %1299
  br i1 %1300, label %1301, label %1344

; <label>:1301                                    ; preds = %1261
  %1302 = fcmp fast ogt float %25, 9.843750e-01
  %1303 = fadd fast float %380, -4.000000e+00
  %1304 = select i1 %1302, float -4.000000e+00, float %1303
  %1305 = call float @dx.op.binary.f32(i32 35, float %1304, float 0.000000e+00)  ; FMax(a,b)
  %1306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1307 = extractvalue %dx.types.CBufRet.f32 %1306, 0
  %1308 = fadd fast float %1307, %1305
  %1309 = extractvalue %dx.types.CBufRet.f32 %1306, 2
  %1310 = fmul fast float %1308, %1309
  %1311 = call float @dx.op.unary.f32(i32 23, float %1310)  ; Log(value)
  %1312 = extractvalue %dx.types.CBufRet.f32 %1306, 3
  %1313 = fmul fast float %1312, %1311
  %1314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1315 = extractvalue %dx.types.CBufRet.f32 %1314, 2
  %1316 = fmul fast float %1313, %1315
  %1317 = call float @dx.op.unary.f32(i32 7, float %1316)  ; Saturate(value)
  %1318 = uitofp i32 %1296 to float
  %1319 = uitofp i32 %1299 to float
  %1320 = fadd fast float %1318, 5.000000e-01
  %1321 = fadd fast float %1319, 5.000000e-01
  %1322 = fmul fast float %1315, %1320
  %1323 = fmul fast float %1315, %1321
  %1324 = fadd fast float %1322, 0x3F0FFB4800000000
  %1325 = fadd fast float %1323, 0xBF0FFB4800000000
  %1326 = call float @dx.op.binary.f32(i32 35, float %1317, float %1324)  ; FMax(a,b)
  %1327 = call float @dx.op.binary.f32(i32 36, float %1326, float %1325)  ; FMin(a,b)
  %1328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1329 = extractvalue %dx.types.CBufRet.f32 %1328, 1
  %1330 = extractvalue %dx.types.CBufRet.f32 %1328, 2
  %1331 = extractvalue %dx.types.CBufRet.f32 %1328, 0
  %1332 = select i1 %258, float %1331, float 0.000000e+00
  %1333 = fmul fast float %1329, %1327
  %1334 = fadd fast float %1332, %1333
  %1335 = fadd fast float %1332, %1330
  %1336 = fsub fast float %1329, %1330
  %1337 = fadd fast float %1336, %1332
  %1338 = call float @dx.op.binary.f32(i32 35, float %1334, float %1335)  ; FMax(a,b)
  %1339 = call float @dx.op.binary.f32(i32 36, float %1338, float %1337)  ; FMin(a,b)
  %1340 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %14, float %1271, float %1272, float %1339, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1341 = extractvalue %dx.types.ResRet.f32 %1340, 0
  %1342 = extractvalue %dx.types.ResRet.f32 %1340, 1
  %1343 = extractvalue %dx.types.ResRet.f32 %1340, 2
  br label %1344

; <label>:1344                                    ; preds = %1301, %1261
  %1345 = phi float [ %1341, %1301 ], [ 1.000000e+00, %1261 ]
  %1346 = phi float [ %1342, %1301 ], [ 1.000000e+00, %1261 ]
  %1347 = phi float [ %1343, %1301 ], [ 1.000000e+00, %1261 ]
  %1348 = fmul fast float %1345, %1265
  %1349 = call float @dx.op.dot3.f32(i32 55, float %1345, float %1346, float %1347, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1350 = select i1 %95, float %1349, float %1345
  %1351 = select i1 %95, float %1349, float %1346
  %1352 = select i1 %95, float 1.000000e+00, float %1347
  %1353 = fmul fast float %1350, %1262
  %1354 = fmul fast float %1351, %1263
  %1355 = fmul fast float %1352, %1264
  %1356 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1357 = extractvalue %dx.types.CBufRet.i32 %1356, 3
  %1358 = and i32 %1357, 3
  %1359 = icmp ne i32 %1358, 0
  %1360 = and i32 %1357, 4
  %1361 = icmp ne i32 %1360, 0
  %1362 = and i1 %1359, %1361
  %1363 = and i1 %95, %1362
  br i1 %1363, label %1364, label %1370

; <label>:1364                                    ; preds = %1344
  %1365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1366 = extractvalue %dx.types.CBufRet.f32 %1365, 1
  %1367 = fadd fast float %1348, -1.000000e+00
  %1368 = fmul fast float %1366, %1367
  %1369 = fadd fast float %1368, 1.000000e+00
  br label %1370

; <label>:1370                                    ; preds = %1364, %1344
  %1371 = phi float [ %1369, %1364 ], [ %1348, %1344 ]
  %1372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1373 = extractvalue %dx.types.CBufRet.f32 %1372, 0
  br i1 %95, label %1374, label %1393

; <label>:1374                                    ; preds = %1370
  %1375 = fadd fast float %1353, %1354
  %1376 = fmul fast float %1373, %1375
  %1377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1378 = extractvalue %dx.types.CBufRet.f32 %1377, 3
  %1379 = extractvalue %dx.types.CBufRet.f32 %242, 1
  %1380 = fsub fast float %245, %1379
  %1381 = extractvalue %dx.types.CBufRet.f32 %242, 2
  %1382 = fmul fast float %1380, %1381
  %1383 = call float @dx.op.unary.f32(i32 7, float %1382)  ; Saturate(value)
  %1384 = fsub fast float %1383, %1378
  %1385 = fmul fast float %1384, %1371
  %1386 = fadd fast float %1385, %1378
  %1387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1388 = extractvalue %dx.types.CBufRet.f32 %1387, 0
  %1389 = fsub fast float %1386, %1388
  %1390 = fmul fast float %1389, 1.000000e+01
  %1391 = call float @dx.op.unary.f32(i32 7, float %1390)  ; Saturate(value)
  %1392 = fmul fast float %1386, %1391
  br label %1402

; <label>:1393                                    ; preds = %1370
  %1394 = fmul fast float %1373, %1353
  %1395 = fmul fast float %1373, %1354
  %1396 = fmul fast float %1355, %1373
  %1397 = call float @dx.op.binary.f32(i32 35, float %1395, float %1396)  ; FMax(a,b)
  %1398 = call float @dx.op.binary.f32(i32 35, float %1394, float %1397)  ; FMax(a,b)
  %1399 = call float @dx.op.binary.f32(i32 35, float %1398, float 0.000000e+00)  ; FMax(a,b)
  %1400 = fcmp fast ugt float %1399, 0x3F10000000000000
  br i1 %1400, label %1402, label %1401

; <label>:1401                                    ; preds = %1393
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1402

; <label>:1402                                    ; preds = %1401, %1393, %1374
  %1403 = phi float [ %1376, %1374 ], [ %1394, %1401 ], [ %1394, %1393 ]
  %1404 = phi float [ %1392, %1374 ], [ %1395, %1401 ], [ %1395, %1393 ]
  %1405 = phi float [ %1391, %1374 ], [ %1396, %1401 ], [ %1396, %1393 ]
  %1406 = phi float [ %1391, %1374 ], [ 0.000000e+00, %1401 ], [ 0.000000e+00, %1393 ]
  %1407 = fadd fast float %173, 0x3FE3C6EF40000000
  %1408 = call float @dx.op.unary.f32(i32 22, float %1407)  ; Frc(value)
  %1409 = call float @dx.op.unary.f32(i32 23, float %1403)  ; Log(value)
  %1410 = fadd fast float %1409, -7.000000e+00
  %1411 = call float @dx.op.unary.f32(i32 21, float %1410)  ; Exp(value)
  %1412 = fmul fast float %1408, 2.000000e+00
  %1413 = fadd fast float %1412, -1.000000e+00
  %1414 = fmul fast float %1411, %1413
  %1415 = fcmp fast ogt float %1403, 0.000000e+00
  %1416 = select i1 %1415, float %1414, float 0.000000e+00
  %1417 = fadd fast float %1416, %1403
  %1418 = fadd fast float %173, 0x3FF3C6EF40000000
  %1419 = call float @dx.op.unary.f32(i32 22, float %1418)  ; Frc(value)
  %1420 = call float @dx.op.unary.f32(i32 23, float %1404)  ; Log(value)
  %1421 = fadd fast float %1420, -7.000000e+00
  %1422 = call float @dx.op.unary.f32(i32 21, float %1421)  ; Exp(value)
  %1423 = fmul fast float %1419, 2.000000e+00
  %1424 = fadd fast float %1423, -1.000000e+00
  %1425 = fmul fast float %1422, %1424
  %1426 = fcmp fast ogt float %1404, 0.000000e+00
  %1427 = select i1 %1426, float %1425, float 0.000000e+00
  %1428 = fadd fast float %1427, %1404
  %1429 = fadd fast float %173, 0x3FFDAA66E0000000
  %1430 = call float @dx.op.unary.f32(i32 22, float %1429)  ; Frc(value)
  %1431 = call float @dx.op.unary.f32(i32 23, float %1405)  ; Log(value)
  %1432 = fadd fast float %1431, -6.000000e+00
  %1433 = call float @dx.op.unary.f32(i32 21, float %1432)  ; Exp(value)
  %1434 = fmul fast float %1430, 2.000000e+00
  %1435 = fadd fast float %1434, -1.000000e+00
  %1436 = fmul fast float %1433, %1435
  %1437 = fcmp fast ogt float %1405, 0.000000e+00
  %1438 = select i1 %1437, float %1436, float 0.000000e+00
  %1439 = fadd fast float %1438, %1405
  %1440 = select i1 %95, float %1404, float %1428
  %1441 = select i1 %95, float %1405, float %1439
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1442 = call float @dx.op.binary.f32(i32 36, float %1417, float 3.225500e+04)  ; FMin(a,b)
  %1443 = call float @dx.op.binary.f32(i32 36, float %1440, float 3.225500e+04)  ; FMin(a,b)
  %1444 = call float @dx.op.binary.f32(i32 36, float %1441, float 3.225500e+04)  ; FMin(a,b)
  %1445 = call float @dx.op.binary.f32(i32 36, float %1406, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1442)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1443)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1444)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1445)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1406)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1406)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1406)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1406)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!31}
!dx.entryPoints = !{!32}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !23, !26}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22}
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
!17 = !{i32 9, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!18 = !{i32 10, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!19 = !{i32 11, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !20}
!20 = !{i32 0, i32 14}
!21 = !{i32 12, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!22 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!23 = !{!24, !25}
!24 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!25 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!26 = !{!27, !28, !29, !30}
!27 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!28 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!29 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!30 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!31 = !{[18 x i32] [i32 16, i32 8, i32 255, i32 255, i32 255, i32 255, i32 7, i32 0, i32 0, i32 0, i32 255, i32 255, i32 0, i32 0, i32 255, i32 0, i32 0, i32 0]}
!32 = !{void ()* @ps_main, !"ps_main", !33, !4, !48}
!33 = !{!34, !44, null}
!34 = !{!35, !38, !40, !42, !43}
!35 = !{i32 0, !"SV_Position", i8 9, i8 3, !36, i8 4, i32 1, i8 4, i32 0, i8 0, !37}
!36 = !{i32 0}
!37 = !{i32 3, i32 15}
!38 = !{i32 1, !"COLOR", i8 9, i8 0, !36, i8 2, i32 1, i8 4, i32 1, i8 0, !39}
!39 = !{i32 3, i32 1}
!40 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !36, i8 2, i32 1, i8 4, i32 2, i8 0, !41}
!41 = !{i32 3, i32 3}
!42 = !{i32 3, !"PACKED_TRI_DATA", i8 5, i8 0, !36, i8 1, i32 1, i8 4, i32 3, i8 0, !39}
!43 = !{i32 4, !"SV_SampleIndex", i8 5, i8 12, !36, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!44 = !{!45, !46}
!45 = !{i32 0, !"SV_Target", i8 9, i8 16, !36, i8 0, i32 1, i8 4, i32 0, i8 0, !37}
!46 = !{i32 1, !"SV_Target", i8 9, i8 16, !47, i8 0, i32 1, i8 4, i32 1, i8 0, !37}
!47 = !{i32 1}
!48 = !{i32 0, i64 24}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 1}
!50 = !{!51, !51, i64 0}
!51 = !{!"float", !52, i64 0}
!52 = !{!"omnipotent char", !53, i64 0}
!53 = !{!"Simple C/C++ TBAA"}
!54 = !{!55, !57, !59, !60, !62, !63, !64, !66, !67, !68}
!55 = distinct !{!55, !56, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!56 = distinct !{!56, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!57 = distinct !{!57, !58, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!58 = distinct !{!58, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!59 = distinct !{!59, !58, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!60 = distinct !{!60, !61, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!61 = distinct !{!61, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!62 = distinct !{!62, !61, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!63 = distinct !{!63, !61, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!64 = distinct !{!64, !65, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!65 = distinct !{!65, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!66 = distinct !{!66, !65, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!67 = distinct !{!67, !65, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!68 = distinct !{!68, !69, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!69 = distinct !{!69, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"\01?sort@@YAXAIAM00@Z: %c"}
!72 = distinct !{!72, !"\01?sort@@YAXAIAM00@Z"}
!73 = !{!74, !75, !55, !57, !59, !60, !62, !63, !64, !66, !67, !68}
!74 = distinct !{!74, !72, !"\01?sort@@YAXAIAM00@Z: %a"}
!75 = distinct !{!75, !72, !"\01?sort@@YAXAIAM00@Z: %b"}
!76 = !{!75}
!77 = !{!74, !71, !55, !57, !59, !60, !62, !63, !64, !66, !67, !68}
!78 = !{!74}
!79 = !{!75, !71, !55, !57, !59, !60, !62, !63, !64, !66, !67, !68}
!80 = !{!81}
!81 = distinct !{!81, !82, !"\01?sort@@YAXAIAM00@Z: %c"}
!82 = distinct !{!82, !"\01?sort@@YAXAIAM00@Z"}
!83 = !{!84, !85, !55, !57, !59, !60, !62, !63, !64, !66, !67, !68}
!84 = distinct !{!84, !82, !"\01?sort@@YAXAIAM00@Z: %a"}
!85 = distinct !{!85, !82, !"\01?sort@@YAXAIAM00@Z: %b"}
!86 = !{!85}
!87 = !{!84, !81, !55, !57, !59, !60, !62, !63, !64, !66, !67, !68}
!88 = !{!84}
!89 = !{!85, !81, !55, !57, !59, !60, !62, !63, !64, !66, !67, !68}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}

