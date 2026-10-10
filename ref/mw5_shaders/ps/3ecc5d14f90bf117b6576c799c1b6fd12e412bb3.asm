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
; shader hash: 59d0844c394533b6907d773d117b9696
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
;                                   texture     f32          3d     T10     t45,space2     1
;                                   texture     f32     2darray     T11     t47,space2     1
;                                   textureunorm_f32     2darray     T12     t85,space2     1
;                                   texture     f32          2d     T13     t83,space2     1
;                                   texture    byte         r/o     T14             t1     1
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call i32 @dx.op.loadInput.i32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %32 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %33 = extractvalue %dx.types.CBufRet.f32 %32, 0
  %34 = fmul fast float %33, %25
  %35 = fmul fast float %33, %26
  %36 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %37 = extractvalue %dx.types.CBufRet.f32 %36, 2
  %38 = extractvalue %dx.types.CBufRet.f32 %36, 3
  %39 = fmul fast float %37, 2.000000e+00
  %40 = fmul fast float %39, %34
  %41 = fmul fast float %38, 2.000000e+00
  %42 = fmul fast float %41, %35
  %43 = fsub fast float 1.000000e+00, %40
  %44 = fsub fast float 1.000000e+00, %42
  %45 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %46 = extractvalue %dx.types.CBufRet.f32 %45, 0
  %47 = extractvalue %dx.types.CBufRet.f32 %45, 1
  %48 = extractvalue %dx.types.CBufRet.f32 %45, 2
  %49 = fmul fast float %43, %46
  %50 = fmul fast float %43, %47
  %51 = fmul fast float %43, %48
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 0
  %54 = extractvalue %dx.types.CBufRet.f32 %52, 1
  %55 = extractvalue %dx.types.CBufRet.f32 %52, 2
  %56 = fmul fast float %44, %53
  %57 = fmul fast float %44, %54
  %58 = fmul fast float %44, %55
  %59 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.f32 %59, 0
  %61 = extractvalue %dx.types.CBufRet.f32 %59, 1
  %62 = extractvalue %dx.types.CBufRet.f32 %59, 2
  %63 = fadd fast float %56, %60
  %64 = fadd fast float %63, %49
  %65 = fadd fast float %57, %61
  %66 = fadd fast float %65, %50
  %67 = fadd fast float %58, %62
  %68 = fadd fast float %67, %51
  %69 = fmul fast float %64, %28
  %70 = fmul fast float %66, %28
  %71 = fmul fast float %68, %28
  %72 = shl i32 %21, 5
  %73 = add i32 %72, 4194304
  %74 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %73, i32 undef)  ; BufferLoad(srv,index,wot)
  %75 = extractvalue %dx.types.ResRet.i32 %74, 1
  %76 = extractvalue %dx.types.ResRet.i32 %74, 2
  %77 = extractvalue %dx.types.ResRet.i32 %74, 3
  %78 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %79 = extractvalue %dx.types.CBufRet.i32 %78, 3
  %80 = and i32 %79, 3
  %81 = icmp ne i32 %80, 0
  %82 = and i32 %79, 4
  %83 = icmp ne i32 %82, 0
  %84 = and i1 %81, %83
  br i1 %84, label %85, label %94

; <label>:85                                      ; preds = %0
  %86 = fmul fast float %38, %35
  %87 = fmul fast float %37, %34
  %88 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %16, float %87, float %86, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %89 = extractvalue %dx.types.ResRet.f32 %88, 0
  %90 = fsub fast float 1.000000e+00, %89
  %91 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %92 = extractvalue %dx.types.CBufRet.f32 %91, 0
  %93 = fcmp fast olt float %90, %92
  br label %102

; <label>:94                                      ; preds = %0
  %95 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %96 = extractvalue %dx.types.CBufRet.i32 %95, 3
  %97 = and i32 %96, 3
  %98 = icmp ne i32 %97, 0
  %99 = and i32 %96, 4
  %100 = icmp eq i32 %99, 0
  %101 = and i1 %98, %100
  br label %102

; <label>:102                                     ; preds = %94, %85
  %103 = phi i1 [ %93, %85 ], [ %101, %94 ]
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.f32 %104, 2
  %106 = extractvalue %dx.types.CBufRet.f32 %104, 3
  %107 = fmul fast float %105, %34
  %108 = fmul fast float %106, %35
  %109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %110 = extractvalue %dx.types.ResRet.i32 %109, 0
  %111 = and i32 %110, 114688
  %112 = icmp ne i32 %111, 0
  %113 = select i1 %112, float %107, float 0.000000e+00
  %114 = select i1 %112, float %108, float 0.000000e+00
  %115 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %113, float %114, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %116 = extractvalue %dx.types.ResRet.f32 %115, 0
  %117 = fmul fast float %116, 2.550000e+02
  %118 = fptoui float %117 to i32
  %119 = select i1 %112, i32 %118, i32 0
  %120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 188, i32 undef)  ; BufferLoad(srv,index,wot)
  %121 = extractvalue %dx.types.ResRet.i32 %120, 0
  %122 = lshr i32 %75, 16
  %123 = call float @dx.op.legacyF16ToF32(i32 131, i32 %122)  ; LegacyF16ToF32(value)
  %124 = fmul fast float %123, %24
  %125 = and i32 %77, 65535
  %126 = call float @dx.op.legacyF16ToF32(i32 131, i32 %125)  ; LegacyF16ToF32(value)
  %127 = shl i32 %76, 4
  %128 = and i32 %127, 32752
  %129 = call float @dx.op.legacyF16ToF32(i32 131, i32 %128)  ; LegacyF16ToF32(value)
  %130 = lshr i32 %76, 7
  %131 = and i32 %130, 32752
  %132 = call float @dx.op.legacyF16ToF32(i32 131, i32 %131)  ; LegacyF16ToF32(value)
  %133 = lshr i32 %76, 22
  %134 = shl nuw nsw i32 %133, 5
  %135 = call float @dx.op.legacyF16ToF32(i32 131, i32 %134)  ; LegacyF16ToF32(value)
  %136 = fmul fast float %129, %126
  %137 = and i32 %121, 16
  %138 = icmp ne i32 %137, 0
  %139 = select i1 %138, float 1.000000e+00, float %124
  %140 = fcmp fast ogt float %139, 0.000000e+00
  br i1 %140, label %142, label %141

; <label>:141                                     ; preds = %102
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %142

; <label>:142                                     ; preds = %141, %102
  %143 = call float @dx.op.unary.f32(i32 7, float %139)  ; Saturate(value)
  %144 = fmul fast float %34, 5.000000e-01
  %145 = fmul fast float %35, 5.000000e-01
  %146 = fptosi float %144 to i32
  %147 = fptosi float %145 to i32
  %148 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %7, i32 0, i32 %146, i32 %147, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %149 = extractvalue %dx.types.ResRet.i32 %148, 0
  %150 = lshr i32 %149, 18
  %151 = uitofp i32 %150 to float
  %152 = fmul fast float %151, 0x3F4C00EBA0000000
  %153 = call float @dx.op.unary.f32(i32 21, float %152)  ; Exp(value)
  %154 = fadd fast float %153, -1.000000e+00
  %155 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %7, i32 0)  ; GetDimensions(handle,mipLevel)
  %156 = extractvalue %dx.types.Dimensions %155, 0
  %157 = sitofp i32 %156 to float
  %158 = extractvalue %dx.types.Dimensions %155, 1
  %159 = sitofp i32 %158 to float
  %160 = fcmp fast oge float %144, %157
  %161 = fcmp fast oge float %145, %159
  %162 = or i1 %160, %161
  %163 = select i1 %162, float 0x4197782600000000, float %154
  %164 = fsub fast float %163, %28
  %165 = fcmp fast ogt float %164, 0.000000e+00
  %166 = and i32 %119, -2
  %167 = icmp eq i32 %166, 2
  %168 = and i1 %167, %165
  %169 = xor i1 %165, true
  %170 = icmp eq i32 %119, 1
  %171 = and i1 %170, %169
  %172 = or i1 %168, %171
  %173 = and i32 %121, 262144
  %174 = icmp ne i32 %173, 0
  %175 = and i1 %174, %172
  %176 = xor i1 %172, true
  %177 = and i32 %121, 131072
  %178 = icmp ne i32 %177, 0
  %179 = and i1 %178, %176
  %180 = or i1 %175, %179
  br i1 %180, label %181, label %182

; <label>:181                                     ; preds = %142
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %182

; <label>:182                                     ; preds = %181, %142
  %183 = add i32 %20, 88
  %184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %183, i32 undef)  ; BufferLoad(srv,index,wot)
  %185 = extractvalue %dx.types.ResRet.i32 %184, 0
  %186 = extractvalue %dx.types.ResRet.i32 %184, 1
  %187 = extractvalue %dx.types.ResRet.i32 %184, 2
  %188 = extractvalue %dx.types.ResRet.i32 %184, 3
  %189 = bitcast i32 %185 to float
  %190 = bitcast i32 %186 to float
  %191 = bitcast i32 %187 to float
  %192 = bitcast i32 %188 to float
  %193 = add i32 %20, 104
  %194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %193, i32 undef)  ; BufferLoad(srv,index,wot)
  %195 = extractvalue %dx.types.ResRet.i32 %194, 2
  %196 = bitcast i32 %195 to float
  %197 = add i32 %20, 120
  %198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %197, i32 undef)  ; BufferLoad(srv,index,wot)
  %199 = add i32 %20, 136
  %200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %199, i32 undef)  ; BufferLoad(srv,index,wot)
  %201 = extractvalue %dx.types.ResRet.i32 %200, 3
  %202 = bitcast i32 %201 to float
  %203 = add i32 %20, 76
  %204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %203, i32 undef)  ; BufferLoad(srv,index,wot)
  %205 = extractvalue %dx.types.ResRet.i32 %204, 0
  %206 = and i32 %205, 2
  %207 = icmp ne i32 %206, 0
  %208 = and i32 %205, 1
  %209 = icmp eq i32 %208, 0
  %210 = and i32 %205, 8
  %211 = icmp eq i32 %210, 0
  %212 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %213 = extractvalue %dx.types.Dimensions %212, 0
  %214 = sitofp i32 %213 to float
  %215 = extractvalue %dx.types.Dimensions %212, 1
  %216 = sitofp i32 %215 to float
  %217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %218 = extractvalue %dx.types.CBufRet.f32 %217, 2
  %219 = extractvalue %dx.types.CBufRet.f32 %217, 3
  %220 = fmul fast float %218, %34
  %221 = fmul fast float %219, %35
  %222 = fmul fast float %220, %214
  %223 = fmul fast float %221, %216
  %224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.f32 %224, 1
  %226 = fsub fast float -0.000000e+00, %225
  %227 = fptoui float %226 to i32
  %228 = fptoui float %222 to i32
  %229 = fptoui float %223 to i32
  %230 = and i32 %227, 31
  %231 = lshr i32 %228, %230
  %232 = lshr i32 %229, %230
  %233 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 %227, i32 %231, i32 %232, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %234 = extractvalue %dx.types.ResRet.f32 %233, 0
  %235 = fcmp fast ogt float %234, -1.000000e+00
  %236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %237 = extractvalue %dx.types.CBufRet.f32 %236, 1
  %238 = select i1 %235, float %237, float 1.000000e+00
  %239 = fadd fast float %234, 1.000000e+00
  %240 = fmul fast float %238, %239
  %241 = call float @dx.op.unary.f32(i32 6, float %240)  ; FAbs(value)
  %242 = extractvalue %dx.types.CBufRet.f32 %236, 3
  %243 = fcmp fast oge float %241, %242
  %244 = select i1 %243, float 0x4197782600000000, float %241
  %245 = fsub fast float %244, %28
  br i1 %211, label %289, label %246

; <label>:246                                     ; preds = %182
  %247 = extractvalue %dx.types.ResRet.i32 %194, 1
  %248 = bitcast i32 %247 to float
  %249 = extractvalue %dx.types.ResRet.i32 %198, 3
  %250 = bitcast i32 %249 to float
  %251 = extractvalue %dx.types.ResRet.i32 %194, 0
  %252 = bitcast i32 %251 to float
  %253 = fadd fast float %252, %28
  %254 = fcmp fast olt float %244, %28
  %255 = fcmp fast ogt float %244, %253
  %256 = or i1 %254, %255
  %257 = select i1 %256, float 0.000000e+00, float %245
  %258 = call float @dx.op.unary.f32(i32 83, float %244)  ; DerivCoarseX(value)
  %259 = call float @dx.op.unary.f32(i32 84, float %244)  ; DerivCoarseY(value)
  %260 = fmul fast float %258, %258
  %261 = fmul fast float %259, %259
  %262 = fadd fast float %261, %260
  %263 = call float @dx.op.unary.f32(i32 24, float %262)  ; Sqrt(value)
  %264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %265 = extractvalue %dx.types.CBufRet.f32 %264, 2
  %266 = fmul fast float %265, %263
  %267 = call float @dx.op.unary.f32(i32 7, float %266)  ; Saturate(value)
  %268 = fmul fast float %267, %248
  %269 = fdiv fast float %245, %268
  %270 = call float @dx.op.unary.f32(i32 7, float %269)  ; Saturate(value)
  %271 = fmul fast float %270, 2.000000e+00
  %272 = fsub fast float 3.000000e+00, %271
  %273 = fmul fast float %270, %270
  %274 = fmul fast float %273, %272
  %275 = fsub fast float %244, %253
  %276 = fadd fast float %275, %268
  %277 = fdiv fast float %276, %268
  %278 = call float @dx.op.unary.f32(i32 7, float %277)  ; Saturate(value)
  %279 = fmul fast float %278, 2.000000e+00
  %280 = fsub fast float 3.000000e+00, %279
  %281 = fmul fast float %278, %278
  %282 = fmul fast float %281, %280
  %283 = fsub fast float %274, %282
  %284 = fsub fast float %250, %202
  %285 = fmul fast float %283, %284
  %286 = fadd fast float %285, %202
  %287 = fmul fast float %257, %189
  %288 = call float @dx.op.unary.f32(i32 6, float %287)  ; FAbs(value)
  br label %328

; <label>:289                                     ; preds = %182
  %290 = and i32 %205, 4
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %303, label %292

; <label>:292                                     ; preds = %289
  %293 = select i1 %207, float 5.000000e+01, float 1.000000e+00
  %294 = fmul fast float %293, %189
  %295 = fmul fast float %22, 2.000000e+00
  %296 = fmul fast float %23, 2.000000e+00
  %297 = fadd fast float %295, -1.000000e+00
  %298 = fadd fast float %296, -1.000000e+00
  %299 = call float @dx.op.dot2.f32(i32 54, float %297, float %298, float %297, float %298)  ; Dot2(ax,ay,bx,by)
  %300 = fmul fast float %299, %196
  %301 = fsub fast float %245, %300
  %302 = fmul fast float %294, %301
  br label %328

; <label>:303                                     ; preds = %289
  br i1 %209, label %323, label %304

; <label>:304                                     ; preds = %303
  %305 = select i1 %207, float 0x3F947AE140000000, float 1.000000e+00
  %306 = fdiv fast float 1.000000e+00, %305
  %307 = fmul fast float %305, %190
  %308 = fmul fast float %305, %191
  %309 = fmul fast float %306, %192
  %310 = call float @dx.op.unary.f32(i32 6, float %245)  ; FAbs(value)
  %311 = fcmp fast olt float %310, %307
  br i1 %311, label %312, label %316, !dx.controlflow.hints !51

; <label>:312                                     ; preds = %304
  %313 = fmul fast float %306, %189
  %314 = fmul fast float %313, %310
  %315 = call float @dx.op.unary.f32(i32 6, float %314)  ; FAbs(value)
  br label %328

; <label>:316                                     ; preds = %304
  %317 = fcmp fast ogt float %310, %308
  br i1 %317, label %318, label %328

; <label>:318                                     ; preds = %316
  %319 = fsub fast float %310, %308
  %320 = fmul fast float %309, %319
  %321 = call float @dx.op.unary.f32(i32 6, float %320)  ; FAbs(value)
  %322 = fsub fast float 1.000000e+00, %321
  br label %328

; <label>:323                                     ; preds = %303
  %324 = select i1 %207, float 5.000000e+01, float 1.000000e+00
  %325 = fmul fast float %324, %189
  %326 = call float @dx.op.binary.f32(i32 36, float %245, float 0x47EFFFFFE0000000)  ; FMin(a,b)
  %327 = fmul fast float %325, %326
  br label %328

; <label>:328                                     ; preds = %323, %318, %316, %312, %292, %246
  %329 = phi float [ %288, %246 ], [ %302, %292 ], [ %327, %323 ], [ %315, %312 ], [ %322, %318 ], [ %310, %316 ]
  %330 = phi float [ %286, %246 ], [ 1.000000e+00, %292 ], [ 1.000000e+00, %323 ], [ 1.000000e+00, %312 ], [ 1.000000e+00, %318 ], [ 1.000000e+00, %316 ]
  %331 = call float @dx.op.unary.f32(i32 7, float %329)  ; Saturate(value)
  %332 = fmul fast float %330, %143
  %333 = fmul fast float %332, %331
  %334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %335 = extractvalue %dx.types.CBufRet.f32 %334, 2
  %336 = fptosi float %28 to i32
  %337 = sitofp i32 %336 to float
  %338 = fadd fast float %335, %337
  %339 = fmul fast float %338, 0x3FE3C6EF40000000
  %340 = frem fast float %34, 2.560000e+02
  %341 = frem fast float %35, 2.560000e+02
  %342 = fptoui float %340 to i32
  %343 = fptoui float %341 to i32
  %344 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %342, i32 %343, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %345 = extractvalue %dx.types.ResRet.f32 %344, 0
  %346 = fadd fast float %345, %339
  %347 = call float @dx.op.unary.f32(i32 22, float %346)  ; Frc(value)
  %348 = add i32 %20, 152
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.i32 %349, 0
  %351 = add i32 %350, 0
  %352 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %351, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %353 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %352, %dx.types.Handle %31, float %22, float %23, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %354 = extractvalue %dx.types.ResRet.f32 %353, 0
  %355 = extractvalue %dx.types.ResRet.f32 %353, 1
  %356 = extractvalue %dx.types.ResRet.f32 %353, 2
  %357 = add i32 %20, 44
  %358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %357, i32 undef)  ; BufferLoad(srv,index,wot)
  %359 = extractvalue %dx.types.ResRet.i32 %358, 0
  %360 = shl i32 %359, 4
  %361 = and i32 %360, 32752
  %362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %361)  ; LegacyF16ToF32(value)
  %363 = lshr i32 %359, 7
  %364 = and i32 %363, 32752
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = lshr i32 %359, 22
  %367 = shl nuw nsw i32 %366, 5
  %368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %367)  ; LegacyF16ToF32(value)
  %369 = fmul fast float %362, %354
  %370 = add i32 %20, 48
  %371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %372 = extractvalue %dx.types.ResRet.i32 %371, 0
  %373 = lshr i32 %372, 22
  %374 = shl nuw nsw i32 %373, 5
  %375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %374)  ; LegacyF16ToF32(value)
  %376 = fmul fast float %375, %369
  %377 = select i1 %103, float %376, float %369
  %378 = fmul fast float %136, %377
  %379 = fmul fast float %132, %126
  %380 = fmul fast float %379, %355
  %381 = fmul fast float %380, %365
  %382 = fmul fast float %135, %126
  %383 = fmul fast float %382, %356
  %384 = fmul fast float %383, %368
  %385 = call float @dx.op.dot3.f32(i32 55, float %378, float %381, float %384, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %386 = select i1 %103, float 0.000000e+00, float %378
  %387 = select i1 %103, float %385, float %381
  %388 = select i1 %103, float 0.000000e+00, float %384
  %389 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %7, i32 0, i32 %146, i32 %147, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = lshr i32 %390, 18
  %392 = uitofp i32 %391 to float
  %393 = fmul fast float %392, 0x3F4C00EBA0000000
  %394 = call float @dx.op.unary.f32(i32 21, float %393)  ; Exp(value)
  %395 = fadd fast float %394, -1.000000e+00
  %396 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %7, i32 0)  ; GetDimensions(handle,mipLevel)
  %397 = extractvalue %dx.types.Dimensions %396, 0
  %398 = sitofp i32 %397 to float
  %399 = extractvalue %dx.types.Dimensions %396, 1
  %400 = sitofp i32 %399 to float
  %401 = fcmp fast oge float %144, %398
  %402 = fcmp fast oge float %145, %400
  %403 = or i1 %401, %402
  %404 = select i1 %403, float 0x4197782600000000, float %395
  %405 = fmul fast float %386, %333
  %406 = fmul fast float %387, %333
  %407 = fmul fast float %388, %333
  %408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %409 = extractvalue %dx.types.CBufRet.f32 %408, 3
  %410 = icmp eq i32 %119, 3
  %411 = fcmp fast ogt float %28, %404
  %412 = and i1 %170, %411
  %413 = or i1 %410, %412
  %414 = icmp eq i32 %119, 2
  %415 = fcmp fast ole float %28, %404
  %416 = and i1 %414, %415
  %417 = or i1 %416, %413
  br i1 %412, label %418, label %535

; <label>:418                                     ; preds = %328
  %419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %420 = extractvalue %dx.types.CBufRet.f32 %419, 2
  %421 = extractvalue %dx.types.CBufRet.f32 %419, 3
  %422 = fmul fast float %420, %34
  %423 = fmul fast float %421, %35
  %424 = call float @dx.op.unary.f32(i32 7, float %422)  ; Saturate(value)
  %425 = call float @dx.op.unary.f32(i32 7, float %423)  ; Saturate(value)
  %426 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %16, float %424, float %425, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %427 = extractvalue %dx.types.ResRet.f32 %426, 0
  %428 = extractvalue %dx.types.ResRet.f32 %426, 1
  %429 = extractvalue %dx.types.ResRet.f32 %426, 2
  %430 = extractvalue %dx.types.ResRet.f32 %426, 3
  %431 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %16, float %424, float %425, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %432 = extractvalue %dx.types.ResRet.f32 %431, 0
  %433 = extractvalue %dx.types.ResRet.f32 %431, 1
  %434 = extractvalue %dx.types.ResRet.f32 %431, 2
  %435 = extractvalue %dx.types.ResRet.f32 %431, 3
  %436 = call float @dx.op.binary.f32(i32 35, float %428, float %429)  ; FMax(a,b)
  %437 = call float @dx.op.binary.f32(i32 35, float %427, float %436)  ; FMax(a,b)
  %438 = call float @dx.op.binary.f32(i32 35, float %437, float %430)  ; FMax(a,b)
  %439 = call float @dx.op.binary.f32(i32 36, float %433, float %434)  ; FMin(a,b)
  %440 = call float @dx.op.binary.f32(i32 36, float %432, float %439)  ; FMin(a,b)
  %441 = call float @dx.op.binary.f32(i32 36, float %440, float %435)  ; FMin(a,b)
  %442 = fmul fast float %438, 2.550000e+02
  %443 = fadd fast float %442, 0x3F70101020000000
  %444 = fptoui float %443 to i32
  %445 = fmul fast float %441, 2.550000e+02
  %446 = fadd fast float %445, 0x3F70101020000000
  %447 = fptoui float %446 to i32
  %448 = icmp ult i32 %444, %447
  br i1 %448, label %449, label %491

; <label>:449                                     ; preds = %418
  %450 = fcmp fast ogt float %27, 9.843750e-01
  %451 = fadd fast float %28, -4.000000e+00
  %452 = select i1 %450, float -4.000000e+00, float %451
  %453 = call float @dx.op.binary.f32(i32 35, float %452, float 0.000000e+00)  ; FMax(a,b)
  %454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %455 = extractvalue %dx.types.CBufRet.f32 %454, 0
  %456 = fadd fast float %455, %453
  %457 = extractvalue %dx.types.CBufRet.f32 %454, 2
  %458 = fmul fast float %456, %457
  %459 = call float @dx.op.unary.f32(i32 23, float %458)  ; Log(value)
  %460 = extractvalue %dx.types.CBufRet.f32 %454, 3
  %461 = fmul fast float %460, %459
  %462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %463 = extractvalue %dx.types.CBufRet.f32 %462, 2
  %464 = fmul fast float %461, %463
  %465 = call float @dx.op.unary.f32(i32 7, float %464)  ; Saturate(value)
  %466 = uitofp i32 %444 to float
  %467 = uitofp i32 %447 to float
  %468 = fadd fast float %466, 5.000000e-01
  %469 = fadd fast float %467, 5.000000e-01
  %470 = fmul fast float %463, %468
  %471 = fmul fast float %463, %469
  %472 = fadd fast float %470, 0x3F0FFB4800000000
  %473 = fadd fast float %471, 0xBF0FFB4800000000
  %474 = call float @dx.op.binary.f32(i32 35, float %465, float %472)  ; FMax(a,b)
  %475 = call float @dx.op.binary.f32(i32 36, float %474, float %473)  ; FMin(a,b)
  %476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %477 = extractvalue %dx.types.CBufRet.f32 %476, 1
  %478 = extractvalue %dx.types.CBufRet.f32 %476, 2
  %479 = extractvalue %dx.types.CBufRet.f32 %476, 0
  %480 = fmul fast float %477, %475
  %481 = fadd fast float %479, %480
  %482 = fadd fast float %479, %478
  %483 = fsub fast float %477, %478
  %484 = fadd fast float %483, %479
  %485 = call float @dx.op.binary.f32(i32 35, float %481, float %482)  ; FMax(a,b)
  %486 = call float @dx.op.binary.f32(i32 36, float %485, float %484)  ; FMin(a,b)
  %487 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %15, float %424, float %425, float %486, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %488 = extractvalue %dx.types.ResRet.f32 %487, 0
  %489 = extractvalue %dx.types.ResRet.f32 %487, 1
  %490 = extractvalue %dx.types.ResRet.f32 %487, 2
  br label %491

; <label>:491                                     ; preds = %449, %418
  %492 = phi float [ %488, %449 ], [ 1.000000e+00, %418 ]
  %493 = phi float [ %489, %449 ], [ 1.000000e+00, %418 ]
  %494 = phi float [ %490, %449 ], [ 1.000000e+00, %418 ]
  %495 = call float @dx.op.dot3.f32(i32 55, float %492, float %493, float %494, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %496 = select i1 %103, float %495, float %492
  %497 = select i1 %103, float %495, float %493
  %498 = select i1 %103, float 1.000000e+00, float %494
  %499 = fmul fast float %496, %405
  %500 = fmul fast float %497, %406
  %501 = fmul fast float %498, %407
  %502 = fmul fast float %34, 2.000000e+00
  %503 = fmul fast float %502, %420
  %504 = fmul fast float %35, 2.000000e+00
  %505 = fmul fast float %504, %421
  %506 = fsub fast float 1.000000e+00, %503
  %507 = fsub fast float 1.000000e+00, %505
  %508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %509 = extractvalue %dx.types.CBufRet.f32 %508, 0
  %510 = extractvalue %dx.types.CBufRet.f32 %508, 1
  %511 = extractvalue %dx.types.CBufRet.f32 %508, 2
  %512 = fmul fast float %506, %509
  %513 = fmul fast float %506, %510
  %514 = fmul fast float %506, %511
  %515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %516 = extractvalue %dx.types.CBufRet.f32 %515, 0
  %517 = extractvalue %dx.types.CBufRet.f32 %515, 1
  %518 = extractvalue %dx.types.CBufRet.f32 %515, 2
  %519 = fmul fast float %507, %516
  %520 = fmul fast float %507, %517
  %521 = fmul fast float %507, %518
  %522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %523 = extractvalue %dx.types.CBufRet.f32 %522, 0
  %524 = extractvalue %dx.types.CBufRet.f32 %522, 1
  %525 = extractvalue %dx.types.CBufRet.f32 %522, 2
  %526 = fadd fast float %519, %523
  %527 = fadd fast float %526, %512
  %528 = fadd fast float %520, %524
  %529 = fadd fast float %528, %513
  %530 = fadd fast float %521, %525
  %531 = fadd fast float %530, %514
  %532 = fmul fast float %527, %404
  %533 = fmul fast float %529, %404
  %534 = fmul fast float %531, %404
  br label %535

; <label>:535                                     ; preds = %491, %328
  %536 = phi float [ %532, %491 ], [ %69, %328 ]
  %537 = phi float [ %533, %491 ], [ %70, %328 ]
  %538 = phi float [ %534, %491 ], [ %71, %328 ]
  %539 = phi float [ %404, %491 ], [ %28, %328 ]
  %540 = phi float [ %499, %491 ], [ %405, %328 ]
  %541 = phi float [ %500, %491 ], [ %406, %328 ]
  %542 = phi float [ %501, %491 ], [ %407, %328 ]
  br i1 %417, label %1417, label %543

; <label>:543                                     ; preds = %535
  %544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %545 = extractvalue %dx.types.CBufRet.f32 %544, 0
  %546 = extractvalue %dx.types.CBufRet.f32 %544, 1
  %547 = extractvalue %dx.types.CBufRet.f32 %544, 2
  %548 = extractvalue %dx.types.CBufRet.f32 %544, 3
  %549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %550 = extractvalue %dx.types.CBufRet.f32 %549, 0
  %551 = extractvalue %dx.types.CBufRet.f32 %549, 1
  %552 = extractvalue %dx.types.CBufRet.f32 %549, 2
  %553 = extractvalue %dx.types.CBufRet.f32 %549, 3
  %554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %555 = extractvalue %dx.types.CBufRet.f32 %554, 3
  %556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %557 = extractvalue %dx.types.CBufRet.f32 %556, 3
  %558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %559 = extractvalue %dx.types.CBufRet.f32 %558, 3
  %560 = extractvalue %dx.types.CBufRet.f32 %558, 0
  %561 = extractvalue %dx.types.CBufRet.f32 %558, 1
  %562 = extractvalue %dx.types.CBufRet.f32 %558, 2
  %563 = fcmp fast olt float %562, -5.000000e-01
  %564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %565 = extractvalue %dx.types.CBufRet.f32 %564, 3
  %566 = call float @dx.op.dot3.f32(i32 55, float %536, float %537, float %538, float %536, float %537, float %538)  ; Dot3(ax,ay,az,bx,by,bz)
  %567 = call float @dx.op.unary.f32(i32 25, float %566)  ; Rsqrt(value)
  %568 = fmul fast float %567, %566
  %569 = fmul fast float %567, %536
  %570 = fmul fast float %567, %537
  %571 = fmul fast float %567, %538
  %572 = fadd fast float %568, %548
  %573 = call float @dx.op.dot3.f32(i32 55, float %569, float %570, float %571, float %545, float %546, float %547)  ; Dot3(ax,ay,az,bx,by,bz)
  %574 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %575 = extractvalue %dx.types.CBufRet.i32 %574, 1
  %576 = and i32 %575, 1
  %577 = icmp ne i32 %576, 0
  %578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %579 = extractvalue %dx.types.CBufRet.f32 %578, 2
  %580 = fcmp fast ogt float %579, 0.000000e+00
  %581 = and i1 %577, %580
  br i1 %581, label %582, label %921, !dx.controlflow.hints !52

; <label>:582                                     ; preds = %543
  %583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %584 = extractvalue %dx.types.CBufRet.f32 %583, 3
  %585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %586 = extractvalue %dx.types.CBufRet.f32 %585, 2
  %587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %588 = extractvalue %dx.types.CBufRet.f32 %587, 2
  %589 = fsub fast float %586, %588
  %590 = and i32 %575, 2
  %591 = extractvalue %dx.types.CBufRet.i32 %574, 0
  %592 = call i32 @dx.op.binary.i32(i32 40, i32 %591, i32 3)  ; UMin(a,b)
  %593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %594 = extractvalue %dx.types.CBufRet.f32 %593, 0
  %595 = extractvalue %dx.types.CBufRet.f32 %593, 1
  %596 = extractvalue %dx.types.CBufRet.f32 %587, 0
  %597 = extractvalue %dx.types.CBufRet.f32 %587, 1
  %598 = fsub fast float %594, %596
  %599 = fsub fast float %595, %597
  %600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %601 = extractvalue %dx.types.CBufRet.f32 %600, 0
  %602 = fcmp fast ogt float %601, 0.000000e+00
  %603 = fsub fast float -0.000000e+00, %598
  %604 = fsub fast float -0.000000e+00, %599
  %605 = call float @dx.op.dot2.f32(i32 54, float %569, float %570, float %569, float %570)  ; Dot2(ax,ay,bx,by)
  %606 = call float @dx.op.dot2.f32(i32 54, float %569, float %570, float %603, float %604)  ; Dot2(ax,ay,bx,by)
  %607 = fmul fast float %606, 2.000000e+00
  %608 = call float @dx.op.dot2.f32(i32 54, float %603, float %604, float %603, float %604)  ; Dot2(ax,ay,bx,by)
  %609 = fmul fast float %601, %601
  %610 = fsub fast float %608, %609
  %611 = fmul fast float %607, %607
  %612 = fmul fast float %605, 4.000000e+00
  %613 = fmul fast float %612, %610
  %614 = fsub fast float %611, %613
  %615 = fcmp fast ogt float %614, 0.000000e+00
  br i1 %615, label %616, label %631

; <label>:616                                     ; preds = %582
  %617 = fcmp fast ogt float %607, 0.000000e+00
  %618 = call float @dx.op.unary.f32(i32 24, float %614)  ; Sqrt(value)
  %619 = fsub fast float -0.000000e+00, %618
  %620 = select i1 %617, float %618, float %619
  %621 = fadd fast float %620, %607
  %622 = fmul float %621, -5.000000e-01
  %623 = fdiv fast float %622, %605
  %624 = call float @dx.op.binary.f32(i32 35, float %623, float 0.000000e+00)  ; FMax(a,b)
  %625 = call float @dx.op.binary.f32(i32 36, float %568, float %624)  ; FMin(a,b)
  %626 = fdiv fast float %610, %622
  %627 = call float @dx.op.binary.f32(i32 35, float %626, float 0.000000e+00)  ; FMax(a,b)
  %628 = call float @dx.op.binary.f32(i32 36, float %568, float %627)  ; FMin(a,b)
  %629 = call float @dx.op.binary.f32(i32 36, float %625, float %628)  ; FMin(a,b)
  %630 = call float @dx.op.binary.f32(i32 35, float %625, float %628)  ; FMax(a,b)
  br label %631

; <label>:631                                     ; preds = %616, %582
  %632 = phi float [ %630, %616 ], [ -1.000000e+00, %582 ]
  %633 = phi float [ %629, %616 ], [ -1.000000e+00, %582 ]
  %634 = phi i1 [ true, %616 ], [ false, %582 ]
  %635 = and i1 %602, %634
  br i1 %635, label %636, label %638

; <label>:636                                     ; preds = %631
  %637 = fcmp fast oeq float %633, %632
  br i1 %637, label %881, label %639

; <label>:638                                     ; preds = %631
  br i1 %602, label %881, label %639

; <label>:639                                     ; preds = %638, %636
  %640 = phi float [ %568, %638 ], [ %632, %636 ]
  %641 = phi float [ 0.000000e+00, %638 ], [ %633, %636 ]
  %642 = icmp ne i32 %590, 0
  %643 = fmul fast float %640, %571
  %644 = fadd fast float %643, %584
  %645 = fmul fast float %644, %640
  %646 = select i1 %642, float 0.000000e+00, float %645
  %647 = fcmp fast oeq float %571, 0.000000e+00
  %648 = fdiv fast float %589, %571
  %649 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %648)  ; FMax(a,b)
  %650 = select i1 %647, float %640, float %649
  %651 = call float @dx.op.binary.f32(i32 36, float %640, float %650)  ; FMin(a,b)
  %652 = fcmp fast ogt float %571, 0.000000e+00
  %653 = fcmp fast olt float %589, 0.000000e+00
  br i1 %652, label %654, label %691

; <label>:654                                     ; preds = %639
  %655 = icmp eq i32 %590, 0
  br i1 %653, label %656, label %680

; <label>:656                                     ; preds = %654
  %657 = select i1 %655, float %640, float 0.000000e+00
  %658 = fsub fast float -0.000000e+00, %657
  %659 = call float @dx.op.unary.f32(i32 6, float %658)  ; FAbs(value)
  %660 = fmul fast float %657, %571
  %661 = fadd fast float %660, %584
  %662 = fmul fast float %659, %661
  %663 = fsub fast float %646, %662
  %664 = fsub fast float %640, %659
  %665 = select i1 %655, float %664, float 0.000000e+00
  %666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %667 = extractvalue %dx.types.CBufRet.f32 %666, 3
  %668 = call float @dx.op.binary.f32(i32 36, float %663, float %667)  ; FMin(a,b)
  %669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %670 = extractvalue %dx.types.CBufRet.f32 %669, 0
  %671 = extractvalue %dx.types.CBufRet.f32 %669, 1
  %672 = fadd fast float %671, %670
  %673 = call float @dx.op.unary.f32(i32 7, float %672)  ; Saturate(value)
  %674 = extractvalue %dx.types.CBufRet.f32 %669, 2
  %675 = extractvalue %dx.types.CBufRet.f32 %669, 3
  %676 = fadd fast float %675, %674
  %677 = call float @dx.op.unary.f32(i32 7, float %676)  ; Saturate(value)
  %678 = fmul fast float %673, %668
  %679 = fmul fast float %678, %677
  br label %881

; <label>:680                                     ; preds = %654
  br i1 %655, label %681, label %702

; <label>:681                                     ; preds = %680
  %682 = call float @dx.op.binary.f32(i32 36, float %651, float %641)  ; FMin(a,b)
  %683 = fsub fast float %651, %682
  %684 = fsub fast float %683, %640
  %685 = call float @dx.op.unary.f32(i32 6, float %684)  ; FAbs(value)
  %686 = fadd fast float %683, %640
  %687 = fmul fast float %686, %571
  %688 = fadd fast float %687, %584
  %689 = fmul fast float %688, %685
  %690 = fsub fast float %646, %689
  br label %702

; <label>:691                                     ; preds = %639
  br i1 %653, label %692, label %702

; <label>:692                                     ; preds = %691
  %693 = call float @dx.op.binary.f32(i32 35, float %641, float %651)  ; FMax(a,b)
  %694 = icmp eq i32 %590, 0
  %695 = select i1 %694, float %651, float 0.000000e+00
  %696 = fsub fast float -0.000000e+00, %695
  %697 = call float @dx.op.unary.f32(i32 6, float %696)  ; FAbs(value)
  %698 = fmul fast float %695, %571
  %699 = fadd fast float %698, %584
  %700 = fmul fast float %697, %699
  %701 = fsub fast float %646, %700
  br label %702

; <label>:702                                     ; preds = %692, %691, %681, %680
  %703 = phi float [ %641, %680 ], [ %641, %681 ], [ %693, %692 ], [ %641, %691 ]
  %704 = phi float [ 0.000000e+00, %680 ], [ %685, %681 ], [ %697, %692 ], [ 0.000000e+00, %691 ]
  %705 = phi float [ %646, %680 ], [ %690, %681 ], [ %701, %692 ], [ %646, %691 ]
  %706 = phi float [ %651, %680 ], [ %651, %681 ], [ %640, %692 ], [ %640, %691 ]
  %707 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 0
  store float -1.000000e+00, float* %707, align 4, !tbaa !53, !noalias !57
  %708 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 1
  store float -1.000000e+00, float* %708, align 4, !tbaa !53, !noalias !57
  %709 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 2
  store float -1.000000e+00, float* %709, align 4, !tbaa !53, !noalias !57
  %710 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 0
  store float -1.000000e+00, float* %710, align 4, !tbaa !53, !noalias !57
  %711 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 1
  store float -1.000000e+00, float* %711, align 4, !tbaa !53, !noalias !57
  %712 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 2
  store float -1.000000e+00, float* %712, align 4, !tbaa !53, !noalias !57
  %713 = icmp sgt i32 %592, 0
  br i1 %713, label %714, label %775

; <label>:714                                     ; preds = %702
  br label %715

; <label>:715                                     ; preds = %764, %714
  %716 = phi i32 [ %765, %764 ], [ 0, %714 ]
  %717 = phi i32 [ %766, %764 ], [ 0, %714 ]
  %718 = add nuw i32 %717, 171
  %719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 %718)  ; CBufferLoadLegacy(handle,regIndex)
  %720 = extractvalue %dx.types.CBufRet.f32 %719, 0
  %721 = extractvalue %dx.types.CBufRet.f32 %719, 1
  %722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %723 = extractvalue %dx.types.CBufRet.f32 %722, 0
  %724 = extractvalue %dx.types.CBufRet.f32 %722, 1
  %725 = fsub fast float %720, %723
  %726 = fsub fast float %721, %724
  %727 = extractvalue %dx.types.CBufRet.f32 %719, 2
  %728 = fsub fast float -0.000000e+00, %725
  %729 = fsub fast float -0.000000e+00, %726
  %730 = call float @dx.op.dot2.f32(i32 54, float %569, float %570, float %728, float %729)  ; Dot2(ax,ay,bx,by)
  %731 = fmul fast float %730, 2.000000e+00
  %732 = call float @dx.op.dot2.f32(i32 54, float %728, float %729, float %728, float %729)  ; Dot2(ax,ay,bx,by)
  %733 = fmul fast float %727, %727
  %734 = fsub fast float %732, %733
  %735 = fmul fast float %731, %731
  %736 = fmul fast float %612, %734
  %737 = fsub fast float %735, %736
  %738 = fcmp fast ogt float %737, 0.000000e+00
  br i1 %738, label %739, label %754

; <label>:739                                     ; preds = %715
  %740 = fcmp fast ogt float %731, 0.000000e+00
  %741 = call float @dx.op.unary.f32(i32 24, float %737)  ; Sqrt(value)
  %742 = fsub fast float -0.000000e+00, %741
  %743 = select i1 %740, float %741, float %742
  %744 = fadd fast float %743, %731
  %745 = fmul float %744, -5.000000e-01
  %746 = fdiv fast float %745, %605
  %747 = call float @dx.op.binary.f32(i32 35, float %746, float 0.000000e+00)  ; FMax(a,b)
  %748 = call float @dx.op.binary.f32(i32 36, float %640, float %747)  ; FMin(a,b)
  %749 = fdiv fast float %734, %745
  %750 = call float @dx.op.binary.f32(i32 35, float %749, float 0.000000e+00)  ; FMax(a,b)
  %751 = call float @dx.op.binary.f32(i32 36, float %640, float %750)  ; FMin(a,b)
  %752 = call float @dx.op.binary.f32(i32 36, float %748, float %751)  ; FMin(a,b)
  %753 = call float @dx.op.binary.f32(i32 35, float %748, float %751)  ; FMax(a,b)
  br label %754

; <label>:754                                     ; preds = %739, %715
  %755 = phi float [ %753, %739 ], [ -1.000000e+00, %715 ]
  %756 = phi float [ %752, %739 ], [ -1.000000e+00, %715 ]
  %757 = phi i1 [ true, %739 ], [ false, %715 ]
  br i1 %757, label %758, label %764

; <label>:758                                     ; preds = %754
  %759 = call float @dx.op.binary.f32(i32 35, float %703, float %756)  ; FMax(a,b)
  %760 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %717
  store float %759, float* %760, align 4, !tbaa !53, !noalias !57
  %761 = call float @dx.op.binary.f32(i32 35, float %703, float %755)  ; FMax(a,b)
  %762 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 %717
  store float %761, float* %762, align 4, !tbaa !53, !noalias !57
  %763 = add nsw i32 %716, 1
  br label %764

; <label>:764                                     ; preds = %758, %754
  %765 = phi i32 [ %763, %758 ], [ %716, %754 ]
  %766 = add nuw nsw i32 %717, 1
  %767 = icmp eq i32 %766, %592
  br i1 %767, label %768, label %715

; <label>:768                                     ; preds = %764
  %769 = load float, float* %709, align 4, !tbaa !53, !alias.scope !73, !noalias !76
  %770 = load float, float* %708, align 4, !tbaa !53, !alias.scope !79, !noalias !80
  %771 = load float, float* %707, align 4, !tbaa !53, !alias.scope !81, !noalias !82
  %772 = load float, float* %712, align 4, !tbaa !53, !alias.scope !83, !noalias !86
  %773 = load float, float* %711, align 4, !tbaa !53, !alias.scope !89, !noalias !90
  %774 = load float, float* %710, align 4, !tbaa !53, !alias.scope !91, !noalias !92
  br label %775

; <label>:775                                     ; preds = %768, %702
  %776 = phi float [ -1.000000e+00, %702 ], [ %774, %768 ]
  %777 = phi float [ -1.000000e+00, %702 ], [ %773, %768 ]
  %778 = phi float [ -1.000000e+00, %702 ], [ %772, %768 ]
  %779 = phi float [ -1.000000e+00, %702 ], [ %771, %768 ]
  %780 = phi float [ -1.000000e+00, %702 ], [ %770, %768 ]
  %781 = phi float [ -1.000000e+00, %702 ], [ %769, %768 ]
  %782 = phi i32 [ 0, %702 ], [ %765, %768 ]
  %783 = call float @dx.op.binary.f32(i32 36, float %780, float %781)  ; FMin(a,b)
  %784 = call float @dx.op.binary.f32(i32 36, float %779, float %783)  ; FMin(a,b)
  %785 = call float @dx.op.binary.f32(i32 35, float %779, float %780)  ; FMax(a,b)
  %786 = call float @dx.op.binary.f32(i32 36, float %785, float %781)  ; FMin(a,b)
  %787 = call float @dx.op.binary.f32(i32 36, float %779, float %780)  ; FMin(a,b)
  %788 = call float @dx.op.binary.f32(i32 35, float %787, float %786)  ; FMax(a,b)
  %789 = call float @dx.op.binary.f32(i32 35, float %780, float %781)  ; FMax(a,b)
  %790 = call float @dx.op.binary.f32(i32 35, float %779, float %789)  ; FMax(a,b)
  store float %784, float* %707, align 4, !tbaa !53, !alias.scope !81, !noalias !82
  store float %788, float* %708, align 4, !tbaa !53, !alias.scope !79, !noalias !80
  store float %790, float* %709, align 4, !tbaa !53, !alias.scope !73, !noalias !76
  %791 = call float @dx.op.binary.f32(i32 36, float %777, float %778)  ; FMin(a,b)
  %792 = call float @dx.op.binary.f32(i32 36, float %776, float %791)  ; FMin(a,b)
  %793 = call float @dx.op.binary.f32(i32 35, float %776, float %777)  ; FMax(a,b)
  %794 = call float @dx.op.binary.f32(i32 36, float %793, float %778)  ; FMin(a,b)
  %795 = call float @dx.op.binary.f32(i32 36, float %776, float %777)  ; FMin(a,b)
  %796 = call float @dx.op.binary.f32(i32 35, float %795, float %794)  ; FMax(a,b)
  %797 = call float @dx.op.binary.f32(i32 35, float %777, float %778)  ; FMax(a,b)
  %798 = call float @dx.op.binary.f32(i32 35, float %776, float %797)  ; FMax(a,b)
  store float %792, float* %710, align 4, !tbaa !53, !alias.scope !91, !noalias !92
  store float %796, float* %711, align 4, !tbaa !53, !alias.scope !89, !noalias !90
  store float %798, float* %712, align 4, !tbaa !53, !alias.scope !83, !noalias !86
  %799 = sub nsw i32 3, %782
  %800 = icmp sgt i32 %799, 2
  br i1 %800, label %801, label %819

; <label>:801                                     ; preds = %775
  %802 = icmp eq i32 %590, 0
  %803 = fsub fast float %640, %704
  %804 = select i1 %802, float %803, float %704
  %805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %806 = extractvalue %dx.types.CBufRet.f32 %805, 3
  %807 = call float @dx.op.binary.f32(i32 36, float %705, float %806)  ; FMin(a,b)
  %808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %809 = extractvalue %dx.types.CBufRet.f32 %808, 0
  %810 = extractvalue %dx.types.CBufRet.f32 %808, 1
  %811 = fadd fast float %810, %809
  %812 = call float @dx.op.unary.f32(i32 7, float %811)  ; Saturate(value)
  %813 = extractvalue %dx.types.CBufRet.f32 %808, 2
  %814 = extractvalue %dx.types.CBufRet.f32 %808, 3
  %815 = fadd fast float %814, %813
  %816 = call float @dx.op.unary.f32(i32 7, float %815)  ; Saturate(value)
  %817 = fmul fast float %812, %807
  %818 = fmul fast float %817, %816
  br label %881

; <label>:819                                     ; preds = %775
  %820 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %799
  %821 = load float, float* %820, align 4, !tbaa !53, !noalias !57
  %822 = fcmp fast olt float %821, %706
  %823 = icmp sgt i32 %782, 0
  %824 = and i1 %823, %822
  br i1 %824, label %825, label %862

; <label>:825                                     ; preds = %819
  br label %826

; <label>:826                                     ; preds = %855, %825
  %827 = phi float [ %856, %855 ], [ %704, %825 ]
  %828 = phi float [ %857, %855 ], [ %705, %825 ]
  %829 = phi float [ %837, %855 ], [ %821, %825 ]
  %830 = phi i32 [ %834, %855 ], [ %799, %825 ]
  %831 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 %830
  %832 = load float, float* %831, align 4, !tbaa !53, !noalias !57
  %833 = icmp slt i32 %830, 2
  %834 = add nsw i32 %830, 1
  %835 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %834
  %836 = load float, float* %835, align 4, !tbaa !53, !noalias !57
  %837 = select i1 %833, float %836, float %640
  %838 = call float @dx.op.binary.f32(i32 36, float %837, float %832)  ; FMin(a,b)
  %839 = call float @dx.op.binary.f32(i32 36, float %706, float %838)  ; FMin(a,b)
  %840 = icmp eq i32 %590, 0
  %841 = fadd fast float %839, %829
  %842 = fmul fast float %841, %571
  %843 = fadd fast float %842, %584
  br i1 %840, label %849, label %844

; <label>:844                                     ; preds = %826
  %845 = fsub fast float %839, %829
  %846 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %845)  ; FMax(a,b)
  %847 = fmul fast float %846, %843
  %848 = fadd fast float %847, %828
  br label %855

; <label>:849                                     ; preds = %826
  %850 = fsub fast float %829, %839
  %851 = call float @dx.op.unary.f32(i32 6, float %850)  ; FAbs(value)
  %852 = fadd fast float %851, %827
  %853 = fmul fast float %851, %843
  %854 = fsub fast float %828, %853
  br label %855

; <label>:855                                     ; preds = %849, %844
  %856 = phi float [ %846, %844 ], [ %852, %849 ]
  %857 = phi float [ %848, %844 ], [ %854, %849 ]
  %858 = fcmp fast olt float %837, %706
  %859 = icmp slt i32 %834, 3
  %860 = and i1 %859, %858
  br i1 %860, label %826, label %861

; <label>:861                                     ; preds = %855
  br label %862

; <label>:862                                     ; preds = %861, %819
  %863 = phi float [ %704, %819 ], [ %856, %861 ]
  %864 = phi float [ %705, %819 ], [ %857, %861 ]
  %865 = fsub fast float %640, %863
  %866 = select i1 %642, float %863, float %865
  %867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %868 = extractvalue %dx.types.CBufRet.f32 %867, 3
  %869 = call float @dx.op.binary.f32(i32 36, float %864, float %868)  ; FMin(a,b)
  %870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %871 = extractvalue %dx.types.CBufRet.f32 %870, 0
  %872 = extractvalue %dx.types.CBufRet.f32 %870, 1
  %873 = fadd fast float %872, %871
  %874 = call float @dx.op.unary.f32(i32 7, float %873)  ; Saturate(value)
  %875 = extractvalue %dx.types.CBufRet.f32 %870, 2
  %876 = extractvalue %dx.types.CBufRet.f32 %870, 3
  %877 = fadd fast float %876, %875
  %878 = call float @dx.op.unary.f32(i32 7, float %877)  ; Saturate(value)
  %879 = fmul fast float %874, %869
  %880 = fmul fast float %879, %878
  br label %881

; <label>:881                                     ; preds = %862, %801, %656, %638, %636
  %882 = phi float [ %665, %656 ], [ %804, %801 ], [ %866, %862 ], [ 0.000000e+00, %636 ], [ 0.000000e+00, %638 ]
  %883 = phi float [ %679, %656 ], [ %818, %801 ], [ %880, %862 ], [ 0.000000e+00, %636 ], [ 0.000000e+00, %638 ]
  %884 = fmul fast float %579, %883
  %885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %886 = extractvalue %dx.types.CBufRet.f32 %885, 2
  %887 = fsub fast float %586, %886
  %888 = fcmp fast olt float %884, -2.000000e+01
  %889 = call float @dx.op.unary.f32(i32 21, float %884)  ; Exp(value)
  %890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %891 = extractvalue %dx.types.CBufRet.f32 %890, 2
  %892 = extractvalue %dx.types.CBufRet.f32 %890, 3
  %893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %894 = extractvalue %dx.types.CBufRet.f32 %893, 2
  %895 = fmul fast float %892, %887
  %896 = call float @dx.op.unary.f32(i32 7, float %895)  ; Saturate(value)
  %897 = fsub fast float 1.000000e+00, %896
  %898 = fmul fast float %571, 5.000000e-01
  %899 = fadd fast float %898, 5.000000e-01
  %900 = call float @dx.op.unary.f32(i32 7, float %899)  ; Saturate(value)
  %901 = fsub fast float 1.000000e+00, %900
  %902 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %897)  ; FMax(a,b)
  %903 = fdiv fast float %901, %902
  %904 = fsub fast float %887, %538
  %905 = call float @dx.op.unary.f32(i32 6, float %904)  ; FAbs(value)
  %906 = fmul fast float %905, %891
  %907 = call float @dx.op.unary.f32(i32 7, float %903)  ; Saturate(value)
  %908 = fsub fast float 1.000000e+00, %906
  %909 = fmul fast float %908, %907
  %910 = fadd fast float %909, %906
  %911 = fmul fast float %894, %887
  %912 = call float @dx.op.unary.f32(i32 7, float %911)  ; Saturate(value)
  %913 = fsub fast float 1.000000e+00, %910
  %914 = fmul fast float %913, %912
  %915 = fadd fast float %914, %910
  %916 = call float @dx.op.unary.f32(i32 7, float %915)  ; Saturate(value)
  %917 = fadd fast float %889, -1.000000e+00
  %918 = select i1 %888, float -1.000000e+00, float %917
  %919 = fmul fast float %916, %918
  %920 = fadd fast float %919, 1.000000e+00
  br label %921

; <label>:921                                     ; preds = %881, %543
  %922 = phi float [ %882, %881 ], [ 0.000000e+00, %543 ]
  %923 = phi float [ %920, %881 ], [ 1.000000e+00, %543 ]
  %924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %925 = extractvalue %dx.types.CBufRet.f32 %924, 1
  %926 = fsub fast float 1.000000e+00, %923
  %927 = fmul fast float %926, %572
  %928 = fmul fast float %927, %925
  %929 = fsub fast float %572, %928
  br i1 %563, label %930, label %946, !dx.controlflow.hints !93

; <label>:930                                     ; preds = %921
  %931 = fmul fast float %573, %560
  %932 = fadd fast float %931, %561
  %933 = call float @dx.op.unary.f32(i32 7, float %932)  ; Saturate(value)
  %934 = fmul fast float %550, %929
  %935 = fsub fast float -0.000000e+00, %934
  %936 = fmul fast float %551, %929
  %937 = fsub fast float -0.000000e+00, %936
  %938 = call float @dx.op.unary.f32(i32 21, float %935)  ; Exp(value)
  %939 = call float @dx.op.unary.f32(i32 21, float %937)  ; Exp(value)
  %940 = call float @dx.op.binary.f32(i32 35, float %565, float %938)  ; FMax(a,b)
  %941 = call float @dx.op.binary.f32(i32 35, float %565, float %939)  ; FMax(a,b)
  %942 = fsub fast float %941, %940
  %943 = fmul fast float %942, %933
  %944 = fadd fast float %943, %940
  %945 = call float @dx.op.unary.f32(i32 7, float %944)  ; Saturate(value)
  br label %979

; <label>:946                                     ; preds = %921
  %947 = fmul fast float %929, %559
  %948 = call float @dx.op.unary.f32(i32 7, float %947)  ; Saturate(value)
  %949 = fsub fast float 2.000000e+00, %948
  %950 = fmul fast float %948, 9.921875e-01
  %951 = fmul fast float %950, %949
  %952 = fadd fast float %951, 3.906250e-03
  %953 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %16, float %952, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %954 = extractvalue %dx.types.ResRet.f32 %953, 0
  %955 = fsub fast float %948, %954
  %956 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %955)  ; FMax(a,b)
  %957 = fmul fast float %553, %538
  %958 = call float @dx.op.unary.f32(i32 6, float %957)  ; FAbs(value)
  %959 = fcmp fast ogt float %958, 0x3EB0C6F7A0000000
  br i1 %959, label %960, label %966, !dx.controlflow.hints !94

; <label>:960                                     ; preds = %946
  %961 = fmul fast float %957, 0xBFF7154760000000
  %962 = call float @dx.op.unary.f32(i32 21, float %961)  ; Exp(value)
  %963 = fsub fast float 1.000000e+00, %962
  %964 = fdiv fast float %963, %957
  %965 = fmul fast float %964, %555
  br label %966

; <label>:966                                     ; preds = %960, %946
  %967 = phi float [ %965, %960 ], [ %555, %946 ]
  %968 = fadd fast float %967, %557
  %969 = fmul fast float %968, %956
  %970 = fmul fast float %550, %969
  %971 = fsub fast float -0.000000e+00, %970
  %972 = fmul fast float %551, %969
  %973 = fsub fast float -0.000000e+00, %972
  %974 = fmul fast float %552, %969
  %975 = fsub fast float -0.000000e+00, %974
  %976 = call float @dx.op.unary.f32(i32 21, float %971)  ; Exp(value)
  %977 = call float @dx.op.unary.f32(i32 21, float %973)  ; Exp(value)
  %978 = call float @dx.op.unary.f32(i32 21, float %975)  ; Exp(value)
  br label %979

; <label>:979                                     ; preds = %966, %930
  %980 = phi float [ %945, %930 ], [ %976, %966 ]
  %981 = phi float [ %945, %930 ], [ %977, %966 ]
  %982 = phi float [ %945, %930 ], [ %978, %966 ]
  br i1 %581, label %983, label %1079, !dx.controlflow.hints !95

; <label>:983                                     ; preds = %979
  %984 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %980)  ; FMax(a,b)
  %985 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %981)  ; FMax(a,b)
  %986 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %982)  ; FMax(a,b)
  %987 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %923)  ; FMax(a,b)
  %988 = call float @dx.op.binary.f32(i32 35, float %922, float %929)  ; FMax(a,b)
  %989 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %988)  ; FMax(a,b)
  %990 = fdiv fast float %922, %989
  %991 = call float @dx.op.unary.f32(i32 7, float %990)  ; Saturate(value)
  %992 = fdiv fast float %929, %989
  %993 = call float @dx.op.unary.f32(i32 7, float %992)  ; Saturate(value)
  %994 = fcmp fast une float %987, 1.000000e+00
  br i1 %994, label %995, label %998, !dx.controlflow.hints !96

; <label>:995                                     ; preds = %983
  %996 = call float @dx.op.unary.f32(i32 23, float %987)  ; Log(value)
  %997 = fmul fast float %996, 0x3FE62E4300000000
  br label %998

; <label>:998                                     ; preds = %995, %983
  %999 = phi float [ %997, %995 ], [ 0.000000e+00, %983 ]
  %1000 = fcmp fast une float %984, 1.000000e+00
  br i1 %1000, label %1001, label %1004, !dx.controlflow.hints !97

; <label>:1001                                    ; preds = %998
  %1002 = call float @dx.op.unary.f32(i32 23, float %984)  ; Log(value)
  %1003 = fmul fast float %1002, 0x3FE62E4300000000
  br label %1004

; <label>:1004                                    ; preds = %1001, %998
  %1005 = phi float [ %1003, %1001 ], [ 0.000000e+00, %998 ]
  %1006 = fcmp fast une float %985, 1.000000e+00
  br i1 %1006, label %1007, label %1010, !dx.controlflow.hints !97

; <label>:1007                                    ; preds = %1004
  %1008 = call float @dx.op.unary.f32(i32 23, float %985)  ; Log(value)
  %1009 = fmul fast float %1008, 0x3FE62E4300000000
  br label %1010

; <label>:1010                                    ; preds = %1007, %1004
  %1011 = phi float [ %1009, %1007 ], [ 0.000000e+00, %1004 ]
  %1012 = fcmp fast une float %986, 1.000000e+00
  br i1 %1012, label %1013, label %1016, !dx.controlflow.hints !97

; <label>:1013                                    ; preds = %1010
  %1014 = call float @dx.op.unary.f32(i32 23, float %986)  ; Log(value)
  %1015 = fmul fast float %1014, 0x3FE62E4300000000
  br label %1016

; <label>:1016                                    ; preds = %1013, %1010
  %1017 = phi float [ %1015, %1013 ], [ 0.000000e+00, %1010 ]
  %1018 = fmul fast float %999, %993
  %1019 = fmul fast float %1005, %991
  %1020 = fmul fast float %1011, %991
  %1021 = fmul fast float %1017, %991
  %1022 = fadd fast float %1019, %1018
  %1023 = fadd fast float %1020, %1018
  %1024 = fadd fast float %1021, %1018
  %1025 = fcmp fast une float %1022, 0.000000e+00
  br i1 %1025, label %1026, label %1029, !dx.controlflow.hints !98

; <label>:1026                                    ; preds = %1016
  %1027 = fmul fast float %1022, 0x3FF7154760000000
  %1028 = call float @dx.op.unary.f32(i32 21, float %1027)  ; Exp(value)
  br label %1029

; <label>:1029                                    ; preds = %1026, %1016
  %1030 = phi float [ %1028, %1026 ], [ 1.000000e+00, %1016 ]
  %1031 = fcmp fast une float %1023, 0.000000e+00
  br i1 %1031, label %1032, label %1035, !dx.controlflow.hints !98

; <label>:1032                                    ; preds = %1029
  %1033 = fmul fast float %1023, 0x3FF7154760000000
  %1034 = call float @dx.op.unary.f32(i32 21, float %1033)  ; Exp(value)
  br label %1035

; <label>:1035                                    ; preds = %1032, %1029
  %1036 = phi float [ %1034, %1032 ], [ 1.000000e+00, %1029 ]
  %1037 = fcmp fast une float %1024, 0.000000e+00
  br i1 %1037, label %1038, label %1041, !dx.controlflow.hints !98

; <label>:1038                                    ; preds = %1035
  %1039 = fmul fast float %1024, 0x3FF7154760000000
  %1040 = call float @dx.op.unary.f32(i32 21, float %1039)  ; Exp(value)
  br label %1041

; <label>:1041                                    ; preds = %1038, %1035
  %1042 = phi float [ %1040, %1038 ], [ 1.000000e+00, %1035 ]
  %1043 = fcmp fast ogt float %991, %993
  br i1 %1043, label %1044, label %1051

; <label>:1044                                    ; preds = %1041
  %1045 = fsub fast float 1.000000e+00, %993
  %1046 = fmul fast float %999, %1045
  %1047 = fcmp fast une float %1046, 0.000000e+00
  br i1 %1047, label %1048, label %1072, !dx.controlflow.hints !99

; <label>:1048                                    ; preds = %1044
  %1049 = fmul fast float %1046, 0x3FF7154760000000
  %1050 = call float @dx.op.unary.f32(i32 21, float %1049)  ; Exp(value)
  br label %1072

; <label>:1051                                    ; preds = %1041
  %1052 = fsub fast float 1.000000e+00, %991
  %1053 = fmul fast float %1005, %1052
  %1054 = fmul fast float %1011, %1052
  %1055 = fmul fast float %1017, %1052
  %1056 = fcmp fast une float %1053, 0.000000e+00
  br i1 %1056, label %1057, label %1060, !dx.controlflow.hints !98

; <label>:1057                                    ; preds = %1051
  %1058 = fmul fast float %1053, 0x3FF7154760000000
  %1059 = call float @dx.op.unary.f32(i32 21, float %1058)  ; Exp(value)
  br label %1060

; <label>:1060                                    ; preds = %1057, %1051
  %1061 = phi float [ %1059, %1057 ], [ 1.000000e+00, %1051 ]
  %1062 = fcmp fast une float %1054, 0.000000e+00
  br i1 %1062, label %1063, label %1066, !dx.controlflow.hints !98

; <label>:1063                                    ; preds = %1060
  %1064 = fmul fast float %1054, 0x3FF7154760000000
  %1065 = call float @dx.op.unary.f32(i32 21, float %1064)  ; Exp(value)
  br label %1066

; <label>:1066                                    ; preds = %1063, %1060
  %1067 = phi float [ %1065, %1063 ], [ 1.000000e+00, %1060 ]
  %1068 = fcmp fast une float %1055, 0.000000e+00
  br i1 %1068, label %1069, label %1072, !dx.controlflow.hints !98

; <label>:1069                                    ; preds = %1066
  %1070 = fmul fast float %1055, 0x3FF7154760000000
  %1071 = call float @dx.op.unary.f32(i32 21, float %1070)  ; Exp(value)
  br label %1072

; <label>:1072                                    ; preds = %1069, %1066, %1048, %1044
  %1073 = phi float [ %1071, %1069 ], [ %1050, %1048 ], [ 1.000000e+00, %1044 ], [ 1.000000e+00, %1066 ]
  %1074 = phi float [ %1067, %1069 ], [ %1050, %1048 ], [ 1.000000e+00, %1044 ], [ %1067, %1066 ]
  %1075 = phi float [ %1061, %1069 ], [ %1050, %1048 ], [ 1.000000e+00, %1044 ], [ %1061, %1066 ]
  %1076 = fmul fast float %1075, %1030
  %1077 = fmul fast float %1074, %1036
  %1078 = fmul fast float %1073, %1042
  br label %1079

; <label>:1079                                    ; preds = %1072, %979
  %1080 = phi float [ %1078, %1072 ], [ %982, %979 ]
  %1081 = phi float [ %1077, %1072 ], [ %981, %979 ]
  %1082 = phi float [ %1076, %1072 ], [ %980, %979 ]
  %1083 = call float @dx.op.dot3.f32(i32 55, float %1082, float %1081, float %1080, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1084 = select i1 %103, float %1083, float %1082
  %1085 = select i1 %103, float %1083, float %1081
  %1086 = select i1 %103, float 1.000000e+00, float %1080
  %1087 = fmul fast float %1084, %540
  %1088 = fmul fast float %1085, %541
  %1089 = fmul fast float %1086, %542
  %1090 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1091 = extractvalue %dx.types.CBufRet.i32 %1090, 0
  %1092 = icmp eq i32 %1091, 0
  br i1 %1092, label %1417, label %1093, !dx.controlflow.hints !100

; <label>:1093                                    ; preds = %1079
  %1094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1095 = extractvalue %dx.types.CBufRet.f32 %1094, 2
  %1096 = extractvalue %dx.types.CBufRet.f32 %1094, 3
  %1097 = fmul fast float %1095, %34
  %1098 = fmul fast float %1096, %35
  %1099 = fmul fast float %1097, 2.000000e+00
  %1100 = fmul fast float %1098, 2.000000e+00
  %1101 = fsub fast float 1.000000e+00, %1099
  %1102 = fsub fast float 1.000000e+00, %1100
  %1103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1104 = extractvalue %dx.types.CBufRet.f32 %1103, 0
  %1105 = extractvalue %dx.types.CBufRet.f32 %1103, 1
  %1106 = extractvalue %dx.types.CBufRet.f32 %1103, 2
  %1107 = fmul fast float %1101, %1104
  %1108 = fmul fast float %1101, %1105
  %1109 = fmul fast float %1101, %1106
  %1110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1111 = extractvalue %dx.types.CBufRet.f32 %1110, 0
  %1112 = extractvalue %dx.types.CBufRet.f32 %1110, 1
  %1113 = extractvalue %dx.types.CBufRet.f32 %1110, 2
  %1114 = fmul fast float %1102, %1111
  %1115 = fmul fast float %1102, %1112
  %1116 = fmul fast float %1102, %1113
  %1117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1118 = extractvalue %dx.types.CBufRet.f32 %1117, 0
  %1119 = extractvalue %dx.types.CBufRet.f32 %1117, 1
  %1120 = extractvalue %dx.types.CBufRet.f32 %1117, 2
  %1121 = fadd fast float %1114, %1118
  %1122 = fadd fast float %1121, %1107
  %1123 = fadd fast float %1115, %1119
  %1124 = fadd fast float %1123, %1108
  %1125 = fadd fast float %1116, %1120
  %1126 = fadd fast float %1125, %1109
  %1127 = fmul fast float %1122, %539
  %1128 = fmul fast float %1124, %539
  %1129 = fmul fast float %1126, %539
  %1130 = fmul fast float %1127, %1127
  %1131 = fmul fast float %1128, %1128
  %1132 = fadd fast float %1130, %1131
  %1133 = fmul fast float %1129, %1129
  %1134 = fadd fast float %1132, %1133
  %1135 = call float @dx.op.unary.f32(i32 24, float %1134)  ; Sqrt(value)
  %1136 = extractvalue %dx.types.CBufRet.f32 %408, 0
  %1137 = fsub fast float %1135, %1136
  %1138 = extractvalue %dx.types.CBufRet.f32 %408, 2
  %1139 = fmul fast float %1137, %1138
  %1140 = call float @dx.op.unary.f32(i32 7, float %1139)  ; Saturate(value)
  %1141 = fadd fast float %1140, -5.000000e-01
  %1142 = fmul fast float %1141, 2.000000e+00
  %1143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1144 = extractvalue %dx.types.CBufRet.f32 %1143, 2
  %1145 = call float @dx.op.binary.f32(i32 36, float %1144, float %1142)  ; FMin(a,b)
  %1146 = fsub fast float -0.000000e+00, %1144
  %1147 = fcmp fast ogt float %1145, %1146
  br i1 %1147, label %1148, label %1417, !dx.controlflow.hints !101

; <label>:1148                                    ; preds = %1093
  %1149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %1150 = extractvalue %dx.types.CBufRet.f32 %1149, 3
  %1151 = fcmp fast ogt float %1150, 0.000000e+00
  br i1 %1151, label %1152, label %1227, !dx.controlflow.hints !102

; <label>:1152                                    ; preds = %1148
  %1153 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %1154 = extractvalue %dx.types.Dimensions %1153, 0
  %1155 = sitofp i32 %1154 to float
  %1156 = extractvalue %dx.types.Dimensions %1153, 1
  %1157 = sitofp i32 %1156 to float
  %1158 = fmul fast float %1097, %1155
  %1159 = fmul fast float %1098, %1157
  %1160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1161 = extractvalue %dx.types.CBufRet.f32 %1160, 1
  %1162 = fsub fast float -0.000000e+00, %1161
  %1163 = fptoui float %1162 to i32
  %1164 = fptoui float %1158 to i32
  %1165 = fptoui float %1159 to i32
  %1166 = and i32 %1163, 31
  %1167 = lshr i32 %1164, %1166
  %1168 = lshr i32 %1165, %1166
  %1169 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 %1163, i32 %1167, i32 %1168, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1170 = extractvalue %dx.types.ResRet.f32 %1169, 0
  %1171 = fcmp fast olt float %1170, -1.000000e+00
  %1172 = fcmp fast ogt float %1170, -1.000000e+00
  %1173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1174 = extractvalue %dx.types.CBufRet.f32 %1173, 1
  %1175 = select i1 %1172, float %1174, float 1.000000e+00
  %1176 = fadd fast float %1170, 1.000000e+00
  %1177 = fmul fast float %1175, %1176
  %1178 = call float @dx.op.unary.f32(i32 6, float %1177)  ; FAbs(value)
  %1179 = extractvalue %dx.types.CBufRet.f32 %1173, 3
  %1180 = fcmp fast oge float %1178, %1179
  %1181 = select i1 %1180, float 0x4197782600000000, float %1178
  %1182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %1183 = extractvalue %dx.types.CBufRet.f32 %1182, 0
  %1184 = extractvalue %dx.types.CBufRet.f32 %1182, 1
  %1185 = extractvalue %dx.types.CBufRet.f32 %1182, 2
  %1186 = select i1 %1171, float %1183, float %1104
  %1187 = select i1 %1171, float %1184, float %1105
  %1188 = select i1 %1171, float %1185, float %1106
  %1189 = fmul fast float %1186, %1101
  %1190 = fmul fast float %1187, %1101
  %1191 = fmul fast float %1188, %1101
  %1192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %1193 = extractvalue %dx.types.CBufRet.f32 %1192, 0
  %1194 = extractvalue %dx.types.CBufRet.f32 %1192, 1
  %1195 = extractvalue %dx.types.CBufRet.f32 %1192, 2
  %1196 = select i1 %1171, float %1193, float %1111
  %1197 = select i1 %1171, float %1194, float %1112
  %1198 = select i1 %1171, float %1195, float %1113
  %1199 = fmul fast float %1196, %1102
  %1200 = fmul fast float %1197, %1102
  %1201 = fmul fast float %1198, %1102
  %1202 = fadd fast float %1199, %1189
  %1203 = fadd fast float %1200, %1190
  %1204 = fadd fast float %1201, %1191
  %1205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %1206 = extractvalue %dx.types.CBufRet.f32 %1205, 0
  %1207 = extractvalue %dx.types.CBufRet.f32 %1205, 1
  %1208 = extractvalue %dx.types.CBufRet.f32 %1205, 2
  %1209 = select i1 %1171, float %1206, float %1118
  %1210 = select i1 %1171, float %1207, float %1119
  %1211 = select i1 %1171, float %1208, float %1120
  %1212 = fadd fast float %1202, %1209
  %1213 = fadd fast float %1203, %1210
  %1214 = fadd fast float %1204, %1211
  %1215 = fmul fast float %1212, %1181
  %1216 = fmul fast float %1213, %1181
  %1217 = fmul fast float %1214, %1181
  %1218 = fmul fast float %1215, %1215
  %1219 = fmul fast float %1216, %1216
  %1220 = fadd fast float %1218, %1219
  %1221 = fmul fast float %1217, %1217
  %1222 = fadd fast float %1220, %1221
  %1223 = call float @dx.op.unary.f32(i32 24, float %1222)  ; Sqrt(value)
  %1224 = fsub fast float %1223, %1136
  %1225 = fmul fast float %1224, %1138
  %1226 = call float @dx.op.unary.f32(i32 7, float %1225)  ; Saturate(value)
  br label %1227

; <label>:1227                                    ; preds = %1152, %1148
  %1228 = phi float [ %1226, %1152 ], [ 1.000000e+00, %1148 ]
  %1229 = fmul fast float %1145, 5.000000e-01
  %1230 = fadd fast float %1229, 5.000000e-01
  %1231 = call float @dx.op.unary.f32(i32 22, float %1230)  ; Frc(value)
  %1232 = call float @dx.op.unary.f32(i32 27, float %1231)  ; Round_ni(value)
  %1233 = call float @dx.op.unary.f32(i32 22, float %1231)  ; Frc(value)
  %1234 = fmul fast float %1233, 2.000000e+00
  %1235 = fadd fast float %1234, -1.000000e+00
  %1236 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %16, float %1097, float %1098, float %1232, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1237 = extractvalue %dx.types.ResRet.f32 %1236, 0
  %1238 = extractvalue %dx.types.ResRet.f32 %1236, 1
  %1239 = extractvalue %dx.types.ResRet.f32 %1236, 2
  %1240 = extractvalue %dx.types.ResRet.f32 %1236, 3
  %1241 = fadd fast float %1237, -5.000000e-01
  %1242 = fadd fast float %1239, -5.000000e-01
  %1243 = fmul fast float %1241, 0xBFD5555560000000
  %1244 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1242, float %1243)  ; FMad(a,b,c)
  %1245 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1238, float 0.000000e+00)  ; FMad(a,b,c)
  %1246 = fadd fast float %1245, %1240
  %1247 = fmul fast float %1241, -7.500000e-01
  %1248 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1242, float %1247)  ; FMad(a,b,c)
  %1249 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1238, float 0.000000e+00)  ; FMad(a,b,c)
  %1250 = fadd fast float %1249, %1240
  %1251 = call float @dx.op.binary.f32(i32 35, float %1244, float -1.000000e+00)  ; FMax(a,b)
  %1252 = call float @dx.op.binary.f32(i32 35, float %1246, float -1.000000e+00)  ; FMax(a,b)
  %1253 = call float @dx.op.binary.f32(i32 35, float %1248, float -1.000000e+00)  ; FMax(a,b)
  %1254 = call float @dx.op.binary.f32(i32 35, float %1250, float -1.000000e+00)  ; FMax(a,b)
  %1255 = call float @dx.op.binary.f32(i32 36, float %1251, float 1.000000e+00)  ; FMin(a,b)
  %1256 = call float @dx.op.binary.f32(i32 36, float %1252, float 1.000000e+00)  ; FMin(a,b)
  %1257 = call float @dx.op.binary.f32(i32 36, float %1253, float 1.000000e+00)  ; FMin(a,b)
  %1258 = call float @dx.op.binary.f32(i32 36, float %1254, float 1.000000e+00)  ; FMin(a,b)
  %1259 = fcmp fast olt float %1255, 0x3FEFFF8020000000
  br i1 %1259, label %1260, label %1375, !dx.controlflow.hints !103

; <label>:1260                                    ; preds = %1227
  %1261 = extractvalue %dx.types.CBufRet.f32 %1143, 3
  %1262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1263 = extractvalue %dx.types.CBufRet.f32 %1262, 0
  %1264 = extractvalue %dx.types.CBufRet.f32 %1262, 1
  %1265 = extractvalue %dx.types.CBufRet.f32 %1262, 2
  %1266 = extractvalue %dx.types.CBufRet.f32 %1262, 3
  %1267 = fsub fast float %1263, %1255
  %1268 = fsub fast float %1264, %1256
  %1269 = fsub fast float %1265, %1257
  %1270 = fsub fast float %1266, %1258
  %1271 = fmul fast float %1267, %1261
  %1272 = fmul fast float %1268, %1261
  %1273 = fmul fast float %1269, %1261
  %1274 = fmul fast float %1270, %1261
  %1275 = fadd fast float %1271, %1255
  %1276 = fadd fast float %1272, %1256
  %1277 = fsub fast float -0.000000e+00, %1276
  %1278 = fadd fast float %1273, %1257
  %1279 = fadd fast float %1274, %1258
  %1280 = fmul fast float %1275, %1275
  %1281 = fsub fast float %1276, %1280
  %1282 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1281)  ; FMax(a,b)
  %1283 = fdiv fast float 1.000000e+00, %1282
  %1284 = fmul fast float %1276, %1275
  %1285 = fsub fast float %1278, %1284
  %1286 = fsub fast float %1235, %1275
  %1287 = fmul fast float %1235, %1235
  %1288 = fsub fast float %1287, %1276
  %1289 = fmul fast float %1286, %1283
  %1290 = fmul fast float %1289, %1285
  %1291 = fsub fast float %1288, %1290
  %1292 = fmul fast float %1276, %1276
  %1293 = fsub fast float %1279, %1292
  %1294 = fmul fast float %1285, %1285
  %1295 = fmul fast float %1294, %1283
  %1296 = fsub fast float %1293, %1295
  %1297 = fdiv fast float %1291, %1296
  %1298 = fmul fast float %1285, %1297
  %1299 = fsub fast float %1286, %1298
  %1300 = fmul fast float %1299, %1283
  %1301 = fmul fast float %1300, %1275
  %1302 = fsub fast float 1.000000e+00, %1301
  %1303 = fmul fast float %1276, %1297
  %1304 = fsub fast float %1302, %1303
  %1305 = fmul fast float %1300, %1300
  %1306 = fmul fast float %1297, 4.000000e+00
  %1307 = fmul fast float %1306, %1304
  %1308 = fsub fast float %1305, %1307
  %1309 = call float @dx.op.unary.f32(i32 24, float %1308)  ; Sqrt(value)
  %1310 = fcmp fast oge float %1300, 0.000000e+00
  %1311 = fsub fast float -0.000000e+00, %1309
  %1312 = select i1 %1310, float %1311, float %1309
  %1313 = fsub fast float %1312, %1300
  %1314 = fdiv fast float %1313, %1297
  %1315 = fdiv fast float %1304, %1313
  %1316 = fmul fast float %1314, 5.000000e-01
  %1317 = fmul fast float %1315, 2.000000e+00
  %1318 = select i1 %1310, float %1316, float %1317
  %1319 = select i1 %1310, float %1317, float %1316
  %1320 = call float @dx.op.binary.f32(i32 35, float %1318, float %1319)  ; FMax(a,b)
  %1321 = call float @dx.op.binary.f32(i32 36, float %1318, float %1319)  ; FMin(a,b)
  %1322 = fcmp fast ogt float %1235, %1321
  br i1 %1322, label %1323, label %1333

; <label>:1323                                    ; preds = %1260
  %1324 = fsub fast float %1235, %1321
  %1325 = fsub fast float %1320, %1321
  %1326 = fmul fast float %1324, %1325
  %1327 = fmul fast float %1320, %1235
  %1328 = fadd fast float %1320, %1235
  %1329 = fmul fast float %1328, %1275
  %1330 = fadd fast float %1327, %1276
  %1331 = fsub fast float %1330, %1329
  %1332 = fdiv fast float %1331, %1326
  br label %1333

; <label>:1333                                    ; preds = %1323, %1260
  %1334 = phi float [ %1332, %1323 ], [ 0.000000e+00, %1260 ]
  %1335 = fcmp fast ogt float %1235, %1320
  %1336 = fsub fast float %1235, %1320
  br i1 %1335, label %1337, label %1347

; <label>:1337                                    ; preds = %1333
  %1338 = fsub fast float %1320, %1321
  %1339 = fmul fast float %1338, %1336
  %1340 = fmul fast float %1321, %1235
  %1341 = fadd fast float %1321, %1235
  %1342 = fmul fast float %1341, %1275
  %1343 = fsub fast float %1277, %1340
  %1344 = fadd fast float %1343, %1342
  %1345 = fdiv fast float %1344, %1339
  %1346 = fadd fast float %1345, %1334
  br label %1347

; <label>:1347                                    ; preds = %1337, %1333
  %1348 = phi float [ %1346, %1337 ], [ %1334, %1333 ]
  %1349 = fsub fast float %1235, %1321
  %1350 = fmul fast float %1349, %1336
  %1351 = fmul fast float %1321, %1320
  %1352 = fadd fast float %1321, %1320
  %1353 = fmul fast float %1352, %1275
  %1354 = fadd fast float %1351, %1276
  %1355 = fsub fast float %1354, %1353
  %1356 = fdiv fast float %1355, %1350
  %1357 = call float @dx.op.unary.f32(i32 7, float %1348)  ; Saturate(value)
  %1358 = fcmp fast oeq float %409, 0.000000e+00
  %1359 = extractvalue %dx.types.CBufRet.f32 %1143, 0
  %1360 = fcmp fast oeq float %1359, 0.000000e+00
  %1361 = or i1 %1358, %1360
  %1362 = fmul fast float %1359, 2.000000e+00
  %1363 = fadd fast float %1144, %1145
  %1364 = fdiv fast float %1363, %1362
  %1365 = call float @dx.op.unary.f32(i32 7, float %1364)  ; Saturate(value)
  %1366 = fmul fast float %1365, 2.000000e+00
  %1367 = fsub fast float 3.000000e+00, %1366
  %1368 = fmul fast float %1365, %1365
  %1369 = fmul fast float %1368, %1367
  %1370 = select i1 %1361, float 1.000000e+00, float %1369
  %1371 = fmul fast float %1356, %409
  %1372 = fadd fast float %1357, %1371
  %1373 = call float @dx.op.unary.f32(i32 7, float %1372)  ; Saturate(value)
  %1374 = fmul fast float %1370, %1373
  br label %1375

; <label>:1375                                    ; preds = %1347, %1227
  %1376 = phi float [ %1374, %1347 ], [ 0.000000e+00, %1227 ]
  %1377 = fsub fast float 1.000000e+00, %1376
  %1378 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %16, float %1097, float %1098, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1379 = extractvalue %dx.types.ResRet.f32 %1378, 0
  %1380 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1381 = extractvalue %dx.types.CBufRet.i32 %1380, 2
  %1382 = icmp eq i32 %1381, 0
  br i1 %1382, label %1388, label %1383

; <label>:1383                                    ; preds = %1375
  %1384 = call float @dx.op.unary.f32(i32 7, float %1376)  ; Saturate(value)
  %1385 = fadd fast float %1379, -1.000000e+00
  %1386 = fmul fast float %1384, %1385
  %1387 = fadd fast float %1386, 1.000000e+00
  br label %1388

; <label>:1388                                    ; preds = %1383, %1375
  %1389 = phi float [ %1387, %1383 ], [ %1377, %1375 ]
  br i1 %1151, label %1390, label %1408

; <label>:1390                                    ; preds = %1388
  %1391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1392 = extractvalue %dx.types.CBufRet.f32 %1391, 1
  %1393 = fsub fast float %1228, %1392
  %1394 = call float @dx.op.unary.f32(i32 7, float %1393)  ; Saturate(value)
  %1395 = fsub fast float %1228, %1150
  %1396 = call float @dx.op.unary.f32(i32 7, float %1395)  ; Saturate(value)
  %1397 = fsub fast float %1394, %1396
  %1398 = fsub fast float %1230, %1396
  %1399 = fdiv fast float %1398, %1397
  %1400 = call float @dx.op.unary.f32(i32 7, float %1399)  ; Saturate(value)
  %1401 = fmul fast float %1400, 2.000000e+00
  %1402 = fsub fast float 3.000000e+00, %1401
  %1403 = fsub fast float %1379, %1389
  %1404 = fmul fast float %1400, %1400
  %1405 = fmul fast float %1404, %1403
  %1406 = fmul fast float %1405, %1402
  %1407 = fadd fast float %1406, %1389
  br label %1408

; <label>:1408                                    ; preds = %1390, %1388
  %1409 = phi float [ %1407, %1390 ], [ %1389, %1388 ]
  %1410 = call float @dx.op.binary.f32(i32 35, float %1379, float %1409)  ; FMax(a,b)
  %1411 = call float @dx.op.dot3.f32(i32 55, float %1410, float %1410, float %1410, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1412 = select i1 %103, float %1411, float %1410
  %1413 = select i1 %103, float 1.000000e+00, float %1410
  %1414 = fmul fast float %1412, %1087
  %1415 = fmul fast float %1412, %1088
  %1416 = fmul fast float %1413, %1089
  br label %1417

; <label>:1417                                    ; preds = %1408, %1093, %1079, %535
  %1418 = phi float [ %540, %535 ], [ %1087, %1079 ], [ %1414, %1408 ], [ %1087, %1093 ]
  %1419 = phi float [ %541, %535 ], [ %1088, %1079 ], [ %1415, %1408 ], [ %1088, %1093 ]
  %1420 = phi float [ %542, %535 ], [ %1089, %1079 ], [ %1416, %1408 ], [ %1089, %1093 ]
  %1421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1422 = extractvalue %dx.types.CBufRet.f32 %1421, 2
  %1423 = extractvalue %dx.types.CBufRet.f32 %1421, 3
  %1424 = fmul fast float %1422, %34
  %1425 = fmul fast float %1423, %35
  %1426 = call float @dx.op.unary.f32(i32 7, float %1424)  ; Saturate(value)
  %1427 = call float @dx.op.unary.f32(i32 7, float %1425)  ; Saturate(value)
  %1428 = select i1 %417, i32 2, i32 0
  %1429 = or i32 %1428, 1
  %1430 = uitofp i32 %1429 to float
  %1431 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %16, float %1426, float %1427, float %1430, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1432 = extractvalue %dx.types.ResRet.f32 %1431, 0
  %1433 = extractvalue %dx.types.ResRet.f32 %1431, 1
  %1434 = extractvalue %dx.types.ResRet.f32 %1431, 2
  %1435 = extractvalue %dx.types.ResRet.f32 %1431, 3
  %1436 = add nuw nsw i32 %1428, 2
  %1437 = uitofp i32 %1436 to float
  %1438 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %16, float %1426, float %1427, float %1437, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1439 = extractvalue %dx.types.ResRet.f32 %1438, 0
  %1440 = extractvalue %dx.types.ResRet.f32 %1438, 1
  %1441 = extractvalue %dx.types.ResRet.f32 %1438, 2
  %1442 = extractvalue %dx.types.ResRet.f32 %1438, 3
  %1443 = call float @dx.op.binary.f32(i32 35, float %1433, float %1434)  ; FMax(a,b)
  %1444 = call float @dx.op.binary.f32(i32 35, float %1432, float %1443)  ; FMax(a,b)
  %1445 = call float @dx.op.binary.f32(i32 35, float %1444, float %1435)  ; FMax(a,b)
  %1446 = call float @dx.op.binary.f32(i32 36, float %1440, float %1441)  ; FMin(a,b)
  %1447 = call float @dx.op.binary.f32(i32 36, float %1439, float %1446)  ; FMin(a,b)
  %1448 = call float @dx.op.binary.f32(i32 36, float %1447, float %1442)  ; FMin(a,b)
  %1449 = fmul fast float %1445, 2.550000e+02
  %1450 = fadd fast float %1449, 0x3F70101020000000
  %1451 = fptoui float %1450 to i32
  %1452 = fmul fast float %1448, 2.550000e+02
  %1453 = fadd fast float %1452, 0x3F70101020000000
  %1454 = fptoui float %1453 to i32
  %1455 = icmp ult i32 %1451, %1454
  br i1 %1455, label %1456, label %1499

; <label>:1456                                    ; preds = %1417
  %1457 = fcmp fast ogt float %27, 9.843750e-01
  %1458 = fadd fast float %539, -4.000000e+00
  %1459 = select i1 %1457, float -4.000000e+00, float %1458
  %1460 = call float @dx.op.binary.f32(i32 35, float %1459, float 0.000000e+00)  ; FMax(a,b)
  %1461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1462 = extractvalue %dx.types.CBufRet.f32 %1461, 0
  %1463 = fadd fast float %1462, %1460
  %1464 = extractvalue %dx.types.CBufRet.f32 %1461, 2
  %1465 = fmul fast float %1463, %1464
  %1466 = call float @dx.op.unary.f32(i32 23, float %1465)  ; Log(value)
  %1467 = extractvalue %dx.types.CBufRet.f32 %1461, 3
  %1468 = fmul fast float %1467, %1466
  %1469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1470 = extractvalue %dx.types.CBufRet.f32 %1469, 2
  %1471 = fmul fast float %1468, %1470
  %1472 = call float @dx.op.unary.f32(i32 7, float %1471)  ; Saturate(value)
  %1473 = uitofp i32 %1451 to float
  %1474 = uitofp i32 %1454 to float
  %1475 = fadd fast float %1473, 5.000000e-01
  %1476 = fadd fast float %1474, 5.000000e-01
  %1477 = fmul fast float %1470, %1475
  %1478 = fmul fast float %1470, %1476
  %1479 = fadd fast float %1477, 0x3F0FFB4800000000
  %1480 = fadd fast float %1478, 0xBF0FFB4800000000
  %1481 = call float @dx.op.binary.f32(i32 35, float %1472, float %1479)  ; FMax(a,b)
  %1482 = call float @dx.op.binary.f32(i32 36, float %1481, float %1480)  ; FMin(a,b)
  %1483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1484 = extractvalue %dx.types.CBufRet.f32 %1483, 1
  %1485 = extractvalue %dx.types.CBufRet.f32 %1483, 2
  %1486 = extractvalue %dx.types.CBufRet.f32 %1483, 0
  %1487 = select i1 %417, float %1486, float 0.000000e+00
  %1488 = fmul fast float %1484, %1482
  %1489 = fadd fast float %1487, %1488
  %1490 = fadd fast float %1487, %1485
  %1491 = fsub fast float %1484, %1485
  %1492 = fadd fast float %1491, %1487
  %1493 = call float @dx.op.binary.f32(i32 35, float %1489, float %1490)  ; FMax(a,b)
  %1494 = call float @dx.op.binary.f32(i32 36, float %1493, float %1492)  ; FMin(a,b)
  %1495 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %15, float %1426, float %1427, float %1494, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1496 = extractvalue %dx.types.ResRet.f32 %1495, 0
  %1497 = extractvalue %dx.types.ResRet.f32 %1495, 1
  %1498 = extractvalue %dx.types.ResRet.f32 %1495, 2
  br label %1499

; <label>:1499                                    ; preds = %1456, %1417
  %1500 = phi float [ %1496, %1456 ], [ 1.000000e+00, %1417 ]
  %1501 = phi float [ %1497, %1456 ], [ 1.000000e+00, %1417 ]
  %1502 = phi float [ %1498, %1456 ], [ 1.000000e+00, %1417 ]
  %1503 = call float @dx.op.dot3.f32(i32 55, float %1500, float %1501, float %1502, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1504 = select i1 %103, float %1503, float %1500
  %1505 = select i1 %103, float %1503, float %1501
  %1506 = fmul fast float %1504, %1418
  %1507 = fmul fast float %1505, %1419
  %1508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1509 = extractvalue %dx.types.CBufRet.f32 %1508, 0
  br i1 %103, label %1510, label %1513

; <label>:1510                                    ; preds = %1499
  %1511 = fadd fast float %1506, %1507
  %1512 = fmul fast float %1509, %1511
  br label %1523

; <label>:1513                                    ; preds = %1499
  %1514 = fmul fast float %1502, %1420
  %1515 = fmul fast float %1509, %1506
  %1516 = fmul fast float %1509, %1507
  %1517 = fmul fast float %1514, %1509
  %1518 = call float @dx.op.binary.f32(i32 35, float %1516, float %1517)  ; FMax(a,b)
  %1519 = call float @dx.op.binary.f32(i32 35, float %1515, float %1518)  ; FMax(a,b)
  %1520 = call float @dx.op.binary.f32(i32 35, float %1519, float 0.000000e+00)  ; FMax(a,b)
  %1521 = fcmp fast ugt float %1520, 0x3F10000000000000
  br i1 %1521, label %1523, label %1522

; <label>:1522                                    ; preds = %1513
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1523

; <label>:1523                                    ; preds = %1522, %1513, %1510
  %1524 = phi float [ %1512, %1510 ], [ %1515, %1522 ], [ %1515, %1513 ]
  %1525 = phi float [ 0.000000e+00, %1510 ], [ %1516, %1522 ], [ %1516, %1513 ]
  %1526 = phi float [ 0.000000e+00, %1510 ], [ %1517, %1522 ], [ %1517, %1513 ]
  %1527 = fadd fast float %347, 0x3FE3C6EF40000000
  %1528 = call float @dx.op.unary.f32(i32 22, float %1527)  ; Frc(value)
  %1529 = call float @dx.op.unary.f32(i32 23, float %1524)  ; Log(value)
  %1530 = fadd fast float %1529, -7.000000e+00
  %1531 = call float @dx.op.unary.f32(i32 21, float %1530)  ; Exp(value)
  %1532 = fmul fast float %1528, 2.000000e+00
  %1533 = fadd fast float %1532, -1.000000e+00
  %1534 = fmul fast float %1531, %1533
  %1535 = fcmp fast ogt float %1524, 0.000000e+00
  %1536 = select i1 %1535, float %1534, float 0.000000e+00
  %1537 = fadd fast float %1536, %1524
  %1538 = fadd fast float %347, 0x3FF3C6EF40000000
  %1539 = call float @dx.op.unary.f32(i32 22, float %1538)  ; Frc(value)
  %1540 = call float @dx.op.unary.f32(i32 23, float %1525)  ; Log(value)
  %1541 = fadd fast float %1540, -7.000000e+00
  %1542 = call float @dx.op.unary.f32(i32 21, float %1541)  ; Exp(value)
  %1543 = fmul fast float %1539, 2.000000e+00
  %1544 = fadd fast float %1543, -1.000000e+00
  %1545 = fmul fast float %1542, %1544
  %1546 = fcmp fast ogt float %1525, 0.000000e+00
  %1547 = select i1 %1546, float %1545, float 0.000000e+00
  %1548 = fadd fast float %1547, %1525
  %1549 = fadd fast float %347, 0x3FFDAA66E0000000
  %1550 = call float @dx.op.unary.f32(i32 22, float %1549)  ; Frc(value)
  %1551 = call float @dx.op.unary.f32(i32 23, float %1526)  ; Log(value)
  %1552 = fadd fast float %1551, -6.000000e+00
  %1553 = call float @dx.op.unary.f32(i32 21, float %1552)  ; Exp(value)
  %1554 = fmul fast float %1550, 2.000000e+00
  %1555 = fadd fast float %1554, -1.000000e+00
  %1556 = fmul fast float %1553, %1555
  %1557 = fcmp fast ogt float %1526, 0.000000e+00
  %1558 = select i1 %1557, float %1556, float 0.000000e+00
  %1559 = fadd fast float %1558, %1526
  %1560 = select i1 %103, float %1525, float %1548
  %1561 = select i1 %103, float %1526, float %1559
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1562 = call float @dx.op.binary.f32(i32 36, float %1537, float 3.225500e+04)  ; FMin(a,b)
  %1563 = call float @dx.op.binary.f32(i32 36, float %1560, float 3.225500e+04)  ; FMin(a,b)
  %1564 = call float @dx.op.binary.f32(i32 36, float %1561, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1562)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1563)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1564)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!32}
!dx.entryPoints = !{!33}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !24, !27}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23}
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
!18 = !{i32 10, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!19 = !{i32 11, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!20 = !{i32 12, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !21}
!21 = !{i32 0, i32 14}
!22 = !{i32 13, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!23 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!24 = !{!25, !26}
!25 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!26 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!27 = !{!28, !29, !30, !31}
!28 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!29 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!30 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!31 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!32 = !{[22 x i32] [i32 20, i32 8, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 7, i32 7, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0]}
!33 = !{void ()* @ps_main, !"ps_main", !34, !4, !50}
!34 = !{!35, !46, null}
!35 = !{!36, !39, !41, !43, !44, !45}
!36 = !{i32 0, !"SV_Position", i8 9, i8 3, !37, i8 4, i32 1, i8 4, i32 0, i8 0, !38}
!37 = !{i32 0}
!38 = !{i32 3, i32 15}
!39 = !{i32 1, !"COLOR", i8 9, i8 0, !37, i8 2, i32 1, i8 4, i32 1, i8 0, !40}
!40 = !{i32 3, i32 1}
!41 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !37, i8 2, i32 1, i8 4, i32 2, i8 0, !42}
!42 = !{i32 3, i32 3}
!43 = !{i32 3, !"ENTITY_IDS", i8 5, i8 0, !37, i8 1, i32 1, i8 2, i32 3, i8 0, !40}
!44 = !{i32 4, !"PACKED_TRI_DATA", i8 5, i8 0, !37, i8 1, i32 1, i8 4, i32 4, i8 0, !40}
!45 = !{i32 5, !"SV_SampleIndex", i8 5, i8 12, !37, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!46 = !{!47, !48}
!47 = !{i32 0, !"SV_Target", i8 9, i8 16, !37, i8 0, i32 1, i8 4, i32 0, i8 0, !38}
!48 = !{i32 1, !"SV_Target", i8 9, i8 16, !49, i8 0, i32 1, i8 4, i32 1, i8 0, !38}
!49 = !{i32 1}
!50 = !{i32 0, i64 24}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 1}
!53 = !{!54, !54, i64 0}
!54 = !{!"float", !55, i64 0}
!55 = !{!"omnipotent char", !56, i64 0}
!56 = !{!"Simple C/C++ TBAA"}
!57 = !{!58, !60, !62, !63, !65, !66, !67, !69, !70, !71}
!58 = distinct !{!58, !59, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!59 = distinct !{!59, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!60 = distinct !{!60, !61, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!61 = distinct !{!61, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!62 = distinct !{!62, !61, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!63 = distinct !{!63, !64, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!64 = distinct !{!64, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!65 = distinct !{!65, !64, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!66 = distinct !{!66, !64, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!67 = distinct !{!67, !68, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!68 = distinct !{!68, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!69 = distinct !{!69, !68, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!70 = distinct !{!70, !68, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!71 = distinct !{!71, !72, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!72 = distinct !{!72, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!73 = !{!74}
!74 = distinct !{!74, !75, !"\01?sort@@YAXAIAM00@Z: %c"}
!75 = distinct !{!75, !"\01?sort@@YAXAIAM00@Z"}
!76 = !{!77, !78, !58, !60, !62, !63, !65, !66, !67, !69, !70, !71}
!77 = distinct !{!77, !75, !"\01?sort@@YAXAIAM00@Z: %a"}
!78 = distinct !{!78, !75, !"\01?sort@@YAXAIAM00@Z: %b"}
!79 = !{!78}
!80 = !{!77, !74, !58, !60, !62, !63, !65, !66, !67, !69, !70, !71}
!81 = !{!77}
!82 = !{!78, !74, !58, !60, !62, !63, !65, !66, !67, !69, !70, !71}
!83 = !{!84}
!84 = distinct !{!84, !85, !"\01?sort@@YAXAIAM00@Z: %c"}
!85 = distinct !{!85, !"\01?sort@@YAXAIAM00@Z"}
!86 = !{!87, !88, !58, !60, !62, !63, !65, !66, !67, !69, !70, !71}
!87 = distinct !{!87, !85, !"\01?sort@@YAXAIAM00@Z: %a"}
!88 = distinct !{!88, !85, !"\01?sort@@YAXAIAM00@Z: %b"}
!89 = !{!88}
!90 = !{!87, !84, !58, !60, !62, !63, !65, !66, !67, !69, !70, !71}
!91 = !{!87}
!92 = !{!88, !84, !58, !60, !62, !63, !65, !66, !67, !69, !70, !71}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}

