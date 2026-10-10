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
; shader hash: 1387e29ff796500abdaef75b63694391
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
  %370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %371 = extractvalue %dx.types.CBufRet.f32 %370, 0
  %372 = fmul fast float %369, %371
  %373 = add i32 %20, 48
  %374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.i32 %374, 0
  %376 = lshr i32 %375, 22
  %377 = shl nuw nsw i32 %376, 5
  %378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %377)  ; LegacyF16ToF32(value)
  %379 = fmul fast float %378, %372
  %380 = select i1 %103, float %379, float %372
  %381 = fmul fast float %136, %380
  %382 = fmul fast float %132, %126
  %383 = fmul fast float %382, %355
  %384 = fmul fast float %383, %365
  %385 = fmul fast float %384, %371
  %386 = fmul fast float %135, %126
  %387 = fmul fast float %386, %356
  %388 = fmul fast float %387, %368
  %389 = fmul fast float %388, %371
  %390 = call float @dx.op.dot3.f32(i32 55, float %381, float %385, float %389, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %391 = select i1 %103, float 0.000000e+00, float %381
  %392 = select i1 %103, float %390, float %385
  %393 = select i1 %103, float 0.000000e+00, float %389
  %394 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %7, i32 0, i32 %146, i32 %147, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %395 = extractvalue %dx.types.ResRet.i32 %394, 0
  %396 = lshr i32 %395, 18
  %397 = uitofp i32 %396 to float
  %398 = fmul fast float %397, 0x3F4C00EBA0000000
  %399 = call float @dx.op.unary.f32(i32 21, float %398)  ; Exp(value)
  %400 = fadd fast float %399, -1.000000e+00
  %401 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %7, i32 0)  ; GetDimensions(handle,mipLevel)
  %402 = extractvalue %dx.types.Dimensions %401, 0
  %403 = sitofp i32 %402 to float
  %404 = extractvalue %dx.types.Dimensions %401, 1
  %405 = sitofp i32 %404 to float
  %406 = fcmp fast oge float %144, %403
  %407 = fcmp fast oge float %145, %405
  %408 = or i1 %406, %407
  %409 = select i1 %408, float 0x4197782600000000, float %400
  %410 = fmul fast float %391, %333
  %411 = fmul fast float %392, %333
  %412 = fmul fast float %393, %333
  %413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %414 = extractvalue %dx.types.CBufRet.f32 %413, 3
  %415 = icmp eq i32 %119, 3
  %416 = fcmp fast ogt float %28, %409
  %417 = and i1 %170, %416
  %418 = or i1 %415, %417
  %419 = icmp eq i32 %119, 2
  %420 = fcmp fast ole float %28, %409
  %421 = and i1 %419, %420
  %422 = or i1 %421, %418
  br i1 %417, label %423, label %540

; <label>:423                                     ; preds = %328
  %424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %425 = extractvalue %dx.types.CBufRet.f32 %424, 2
  %426 = extractvalue %dx.types.CBufRet.f32 %424, 3
  %427 = fmul fast float %425, %34
  %428 = fmul fast float %426, %35
  %429 = call float @dx.op.unary.f32(i32 7, float %427)  ; Saturate(value)
  %430 = call float @dx.op.unary.f32(i32 7, float %428)  ; Saturate(value)
  %431 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %16, float %429, float %430, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %432 = extractvalue %dx.types.ResRet.f32 %431, 0
  %433 = extractvalue %dx.types.ResRet.f32 %431, 1
  %434 = extractvalue %dx.types.ResRet.f32 %431, 2
  %435 = extractvalue %dx.types.ResRet.f32 %431, 3
  %436 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %16, float %429, float %430, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %437 = extractvalue %dx.types.ResRet.f32 %436, 0
  %438 = extractvalue %dx.types.ResRet.f32 %436, 1
  %439 = extractvalue %dx.types.ResRet.f32 %436, 2
  %440 = extractvalue %dx.types.ResRet.f32 %436, 3
  %441 = call float @dx.op.binary.f32(i32 35, float %433, float %434)  ; FMax(a,b)
  %442 = call float @dx.op.binary.f32(i32 35, float %432, float %441)  ; FMax(a,b)
  %443 = call float @dx.op.binary.f32(i32 35, float %442, float %435)  ; FMax(a,b)
  %444 = call float @dx.op.binary.f32(i32 36, float %438, float %439)  ; FMin(a,b)
  %445 = call float @dx.op.binary.f32(i32 36, float %437, float %444)  ; FMin(a,b)
  %446 = call float @dx.op.binary.f32(i32 36, float %445, float %440)  ; FMin(a,b)
  %447 = fmul fast float %443, 2.550000e+02
  %448 = fadd fast float %447, 0x3F70101020000000
  %449 = fptoui float %448 to i32
  %450 = fmul fast float %446, 2.550000e+02
  %451 = fadd fast float %450, 0x3F70101020000000
  %452 = fptoui float %451 to i32
  %453 = icmp ult i32 %449, %452
  br i1 %453, label %454, label %496

; <label>:454                                     ; preds = %423
  %455 = fcmp fast ogt float %27, 9.843750e-01
  %456 = fadd fast float %28, -4.000000e+00
  %457 = select i1 %455, float -4.000000e+00, float %456
  %458 = call float @dx.op.binary.f32(i32 35, float %457, float 0.000000e+00)  ; FMax(a,b)
  %459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %460 = extractvalue %dx.types.CBufRet.f32 %459, 0
  %461 = fadd fast float %460, %458
  %462 = extractvalue %dx.types.CBufRet.f32 %459, 2
  %463 = fmul fast float %461, %462
  %464 = call float @dx.op.unary.f32(i32 23, float %463)  ; Log(value)
  %465 = extractvalue %dx.types.CBufRet.f32 %459, 3
  %466 = fmul fast float %465, %464
  %467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %468 = extractvalue %dx.types.CBufRet.f32 %467, 2
  %469 = fmul fast float %466, %468
  %470 = call float @dx.op.unary.f32(i32 7, float %469)  ; Saturate(value)
  %471 = uitofp i32 %449 to float
  %472 = uitofp i32 %452 to float
  %473 = fadd fast float %471, 5.000000e-01
  %474 = fadd fast float %472, 5.000000e-01
  %475 = fmul fast float %468, %473
  %476 = fmul fast float %468, %474
  %477 = fadd fast float %475, 0x3F0FFB4800000000
  %478 = fadd fast float %476, 0xBF0FFB4800000000
  %479 = call float @dx.op.binary.f32(i32 35, float %470, float %477)  ; FMax(a,b)
  %480 = call float @dx.op.binary.f32(i32 36, float %479, float %478)  ; FMin(a,b)
  %481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %482 = extractvalue %dx.types.CBufRet.f32 %481, 1
  %483 = extractvalue %dx.types.CBufRet.f32 %481, 2
  %484 = extractvalue %dx.types.CBufRet.f32 %481, 0
  %485 = fmul fast float %482, %480
  %486 = fadd fast float %484, %485
  %487 = fadd fast float %484, %483
  %488 = fsub fast float %482, %483
  %489 = fadd fast float %488, %484
  %490 = call float @dx.op.binary.f32(i32 35, float %486, float %487)  ; FMax(a,b)
  %491 = call float @dx.op.binary.f32(i32 36, float %490, float %489)  ; FMin(a,b)
  %492 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %15, float %429, float %430, float %491, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %493 = extractvalue %dx.types.ResRet.f32 %492, 0
  %494 = extractvalue %dx.types.ResRet.f32 %492, 1
  %495 = extractvalue %dx.types.ResRet.f32 %492, 2
  br label %496

; <label>:496                                     ; preds = %454, %423
  %497 = phi float [ %493, %454 ], [ 1.000000e+00, %423 ]
  %498 = phi float [ %494, %454 ], [ 1.000000e+00, %423 ]
  %499 = phi float [ %495, %454 ], [ 1.000000e+00, %423 ]
  %500 = call float @dx.op.dot3.f32(i32 55, float %497, float %498, float %499, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %501 = select i1 %103, float %500, float %497
  %502 = select i1 %103, float %500, float %498
  %503 = select i1 %103, float 1.000000e+00, float %499
  %504 = fmul fast float %501, %410
  %505 = fmul fast float %502, %411
  %506 = fmul fast float %503, %412
  %507 = fmul fast float %34, 2.000000e+00
  %508 = fmul fast float %507, %425
  %509 = fmul fast float %35, 2.000000e+00
  %510 = fmul fast float %509, %426
  %511 = fsub fast float 1.000000e+00, %508
  %512 = fsub fast float 1.000000e+00, %510
  %513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %514 = extractvalue %dx.types.CBufRet.f32 %513, 0
  %515 = extractvalue %dx.types.CBufRet.f32 %513, 1
  %516 = extractvalue %dx.types.CBufRet.f32 %513, 2
  %517 = fmul fast float %511, %514
  %518 = fmul fast float %511, %515
  %519 = fmul fast float %511, %516
  %520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %521 = extractvalue %dx.types.CBufRet.f32 %520, 0
  %522 = extractvalue %dx.types.CBufRet.f32 %520, 1
  %523 = extractvalue %dx.types.CBufRet.f32 %520, 2
  %524 = fmul fast float %512, %521
  %525 = fmul fast float %512, %522
  %526 = fmul fast float %512, %523
  %527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %528 = extractvalue %dx.types.CBufRet.f32 %527, 0
  %529 = extractvalue %dx.types.CBufRet.f32 %527, 1
  %530 = extractvalue %dx.types.CBufRet.f32 %527, 2
  %531 = fadd fast float %524, %528
  %532 = fadd fast float %531, %517
  %533 = fadd fast float %525, %529
  %534 = fadd fast float %533, %518
  %535 = fadd fast float %526, %530
  %536 = fadd fast float %535, %519
  %537 = fmul fast float %532, %409
  %538 = fmul fast float %534, %409
  %539 = fmul fast float %536, %409
  br label %540

; <label>:540                                     ; preds = %496, %328
  %541 = phi float [ %537, %496 ], [ %69, %328 ]
  %542 = phi float [ %538, %496 ], [ %70, %328 ]
  %543 = phi float [ %539, %496 ], [ %71, %328 ]
  %544 = phi float [ %409, %496 ], [ %28, %328 ]
  %545 = phi float [ %504, %496 ], [ %410, %328 ]
  %546 = phi float [ %505, %496 ], [ %411, %328 ]
  %547 = phi float [ %506, %496 ], [ %412, %328 ]
  br i1 %422, label %1422, label %548

; <label>:548                                     ; preds = %540
  %549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %550 = extractvalue %dx.types.CBufRet.f32 %549, 0
  %551 = extractvalue %dx.types.CBufRet.f32 %549, 1
  %552 = extractvalue %dx.types.CBufRet.f32 %549, 2
  %553 = extractvalue %dx.types.CBufRet.f32 %549, 3
  %554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %555 = extractvalue %dx.types.CBufRet.f32 %554, 0
  %556 = extractvalue %dx.types.CBufRet.f32 %554, 1
  %557 = extractvalue %dx.types.CBufRet.f32 %554, 2
  %558 = extractvalue %dx.types.CBufRet.f32 %554, 3
  %559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %560 = extractvalue %dx.types.CBufRet.f32 %559, 3
  %561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %562 = extractvalue %dx.types.CBufRet.f32 %561, 3
  %563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %564 = extractvalue %dx.types.CBufRet.f32 %563, 3
  %565 = extractvalue %dx.types.CBufRet.f32 %563, 0
  %566 = extractvalue %dx.types.CBufRet.f32 %563, 1
  %567 = extractvalue %dx.types.CBufRet.f32 %563, 2
  %568 = fcmp fast olt float %567, -5.000000e-01
  %569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %570 = extractvalue %dx.types.CBufRet.f32 %569, 3
  %571 = call float @dx.op.dot3.f32(i32 55, float %541, float %542, float %543, float %541, float %542, float %543)  ; Dot3(ax,ay,az,bx,by,bz)
  %572 = call float @dx.op.unary.f32(i32 25, float %571)  ; Rsqrt(value)
  %573 = fmul fast float %572, %571
  %574 = fmul fast float %572, %541
  %575 = fmul fast float %572, %542
  %576 = fmul fast float %572, %543
  %577 = fadd fast float %573, %553
  %578 = call float @dx.op.dot3.f32(i32 55, float %574, float %575, float %576, float %550, float %551, float %552)  ; Dot3(ax,ay,az,bx,by,bz)
  %579 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %580 = extractvalue %dx.types.CBufRet.i32 %579, 1
  %581 = and i32 %580, 1
  %582 = icmp ne i32 %581, 0
  %583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %584 = extractvalue %dx.types.CBufRet.f32 %583, 2
  %585 = fcmp fast ogt float %584, 0.000000e+00
  %586 = and i1 %582, %585
  br i1 %586, label %587, label %926, !dx.controlflow.hints !52

; <label>:587                                     ; preds = %548
  %588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %589 = extractvalue %dx.types.CBufRet.f32 %588, 3
  %590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %591 = extractvalue %dx.types.CBufRet.f32 %590, 2
  %592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %593 = extractvalue %dx.types.CBufRet.f32 %592, 2
  %594 = fsub fast float %591, %593
  %595 = and i32 %580, 2
  %596 = extractvalue %dx.types.CBufRet.i32 %579, 0
  %597 = call i32 @dx.op.binary.i32(i32 40, i32 %596, i32 3)  ; UMin(a,b)
  %598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %599 = extractvalue %dx.types.CBufRet.f32 %598, 0
  %600 = extractvalue %dx.types.CBufRet.f32 %598, 1
  %601 = extractvalue %dx.types.CBufRet.f32 %592, 0
  %602 = extractvalue %dx.types.CBufRet.f32 %592, 1
  %603 = fsub fast float %599, %601
  %604 = fsub fast float %600, %602
  %605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %606 = extractvalue %dx.types.CBufRet.f32 %605, 0
  %607 = fcmp fast ogt float %606, 0.000000e+00
  %608 = fsub fast float -0.000000e+00, %603
  %609 = fsub fast float -0.000000e+00, %604
  %610 = call float @dx.op.dot2.f32(i32 54, float %574, float %575, float %574, float %575)  ; Dot2(ax,ay,bx,by)
  %611 = call float @dx.op.dot2.f32(i32 54, float %574, float %575, float %608, float %609)  ; Dot2(ax,ay,bx,by)
  %612 = fmul fast float %611, 2.000000e+00
  %613 = call float @dx.op.dot2.f32(i32 54, float %608, float %609, float %608, float %609)  ; Dot2(ax,ay,bx,by)
  %614 = fmul fast float %606, %606
  %615 = fsub fast float %613, %614
  %616 = fmul fast float %612, %612
  %617 = fmul fast float %610, 4.000000e+00
  %618 = fmul fast float %617, %615
  %619 = fsub fast float %616, %618
  %620 = fcmp fast ogt float %619, 0.000000e+00
  br i1 %620, label %621, label %636

; <label>:621                                     ; preds = %587
  %622 = fcmp fast ogt float %612, 0.000000e+00
  %623 = call float @dx.op.unary.f32(i32 24, float %619)  ; Sqrt(value)
  %624 = fsub fast float -0.000000e+00, %623
  %625 = select i1 %622, float %623, float %624
  %626 = fadd fast float %625, %612
  %627 = fmul float %626, -5.000000e-01
  %628 = fdiv fast float %627, %610
  %629 = call float @dx.op.binary.f32(i32 35, float %628, float 0.000000e+00)  ; FMax(a,b)
  %630 = call float @dx.op.binary.f32(i32 36, float %573, float %629)  ; FMin(a,b)
  %631 = fdiv fast float %615, %627
  %632 = call float @dx.op.binary.f32(i32 35, float %631, float 0.000000e+00)  ; FMax(a,b)
  %633 = call float @dx.op.binary.f32(i32 36, float %573, float %632)  ; FMin(a,b)
  %634 = call float @dx.op.binary.f32(i32 36, float %630, float %633)  ; FMin(a,b)
  %635 = call float @dx.op.binary.f32(i32 35, float %630, float %633)  ; FMax(a,b)
  br label %636

; <label>:636                                     ; preds = %621, %587
  %637 = phi float [ %635, %621 ], [ -1.000000e+00, %587 ]
  %638 = phi float [ %634, %621 ], [ -1.000000e+00, %587 ]
  %639 = phi i1 [ true, %621 ], [ false, %587 ]
  %640 = and i1 %607, %639
  br i1 %640, label %641, label %643

; <label>:641                                     ; preds = %636
  %642 = fcmp fast oeq float %638, %637
  br i1 %642, label %886, label %644

; <label>:643                                     ; preds = %636
  br i1 %607, label %886, label %644

; <label>:644                                     ; preds = %643, %641
  %645 = phi float [ %573, %643 ], [ %637, %641 ]
  %646 = phi float [ 0.000000e+00, %643 ], [ %638, %641 ]
  %647 = icmp ne i32 %595, 0
  %648 = fmul fast float %645, %576
  %649 = fadd fast float %648, %589
  %650 = fmul fast float %649, %645
  %651 = select i1 %647, float 0.000000e+00, float %650
  %652 = fcmp fast oeq float %576, 0.000000e+00
  %653 = fdiv fast float %594, %576
  %654 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %653)  ; FMax(a,b)
  %655 = select i1 %652, float %645, float %654
  %656 = call float @dx.op.binary.f32(i32 36, float %645, float %655)  ; FMin(a,b)
  %657 = fcmp fast ogt float %576, 0.000000e+00
  %658 = fcmp fast olt float %594, 0.000000e+00
  br i1 %657, label %659, label %696

; <label>:659                                     ; preds = %644
  %660 = icmp eq i32 %595, 0
  br i1 %658, label %661, label %685

; <label>:661                                     ; preds = %659
  %662 = select i1 %660, float %645, float 0.000000e+00
  %663 = fsub fast float -0.000000e+00, %662
  %664 = call float @dx.op.unary.f32(i32 6, float %663)  ; FAbs(value)
  %665 = fmul fast float %662, %576
  %666 = fadd fast float %665, %589
  %667 = fmul fast float %664, %666
  %668 = fsub fast float %651, %667
  %669 = fsub fast float %645, %664
  %670 = select i1 %660, float %669, float 0.000000e+00
  %671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %672 = extractvalue %dx.types.CBufRet.f32 %671, 3
  %673 = call float @dx.op.binary.f32(i32 36, float %668, float %672)  ; FMin(a,b)
  %674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %675 = extractvalue %dx.types.CBufRet.f32 %674, 0
  %676 = extractvalue %dx.types.CBufRet.f32 %674, 1
  %677 = fadd fast float %676, %675
  %678 = call float @dx.op.unary.f32(i32 7, float %677)  ; Saturate(value)
  %679 = extractvalue %dx.types.CBufRet.f32 %674, 2
  %680 = extractvalue %dx.types.CBufRet.f32 %674, 3
  %681 = fadd fast float %680, %679
  %682 = call float @dx.op.unary.f32(i32 7, float %681)  ; Saturate(value)
  %683 = fmul fast float %678, %673
  %684 = fmul fast float %683, %682
  br label %886

; <label>:685                                     ; preds = %659
  br i1 %660, label %686, label %707

; <label>:686                                     ; preds = %685
  %687 = call float @dx.op.binary.f32(i32 36, float %656, float %646)  ; FMin(a,b)
  %688 = fsub fast float %656, %687
  %689 = fsub fast float %688, %645
  %690 = call float @dx.op.unary.f32(i32 6, float %689)  ; FAbs(value)
  %691 = fadd fast float %688, %645
  %692 = fmul fast float %691, %576
  %693 = fadd fast float %692, %589
  %694 = fmul fast float %693, %690
  %695 = fsub fast float %651, %694
  br label %707

; <label>:696                                     ; preds = %644
  br i1 %658, label %697, label %707

; <label>:697                                     ; preds = %696
  %698 = call float @dx.op.binary.f32(i32 35, float %646, float %656)  ; FMax(a,b)
  %699 = icmp eq i32 %595, 0
  %700 = select i1 %699, float %656, float 0.000000e+00
  %701 = fsub fast float -0.000000e+00, %700
  %702 = call float @dx.op.unary.f32(i32 6, float %701)  ; FAbs(value)
  %703 = fmul fast float %700, %576
  %704 = fadd fast float %703, %589
  %705 = fmul fast float %702, %704
  %706 = fsub fast float %651, %705
  br label %707

; <label>:707                                     ; preds = %697, %696, %686, %685
  %708 = phi float [ %646, %685 ], [ %646, %686 ], [ %698, %697 ], [ %646, %696 ]
  %709 = phi float [ 0.000000e+00, %685 ], [ %690, %686 ], [ %702, %697 ], [ 0.000000e+00, %696 ]
  %710 = phi float [ %651, %685 ], [ %695, %686 ], [ %706, %697 ], [ %651, %696 ]
  %711 = phi float [ %656, %685 ], [ %656, %686 ], [ %645, %697 ], [ %645, %696 ]
  %712 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 0
  store float -1.000000e+00, float* %712, align 4, !tbaa !53, !noalias !57
  %713 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 1
  store float -1.000000e+00, float* %713, align 4, !tbaa !53, !noalias !57
  %714 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 2
  store float -1.000000e+00, float* %714, align 4, !tbaa !53, !noalias !57
  %715 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 0
  store float -1.000000e+00, float* %715, align 4, !tbaa !53, !noalias !57
  %716 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 1
  store float -1.000000e+00, float* %716, align 4, !tbaa !53, !noalias !57
  %717 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 2
  store float -1.000000e+00, float* %717, align 4, !tbaa !53, !noalias !57
  %718 = icmp sgt i32 %597, 0
  br i1 %718, label %719, label %780

; <label>:719                                     ; preds = %707
  br label %720

; <label>:720                                     ; preds = %769, %719
  %721 = phi i32 [ %770, %769 ], [ 0, %719 ]
  %722 = phi i32 [ %771, %769 ], [ 0, %719 ]
  %723 = add nuw i32 %722, 171
  %724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 %723)  ; CBufferLoadLegacy(handle,regIndex)
  %725 = extractvalue %dx.types.CBufRet.f32 %724, 0
  %726 = extractvalue %dx.types.CBufRet.f32 %724, 1
  %727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %728 = extractvalue %dx.types.CBufRet.f32 %727, 0
  %729 = extractvalue %dx.types.CBufRet.f32 %727, 1
  %730 = fsub fast float %725, %728
  %731 = fsub fast float %726, %729
  %732 = extractvalue %dx.types.CBufRet.f32 %724, 2
  %733 = fsub fast float -0.000000e+00, %730
  %734 = fsub fast float -0.000000e+00, %731
  %735 = call float @dx.op.dot2.f32(i32 54, float %574, float %575, float %733, float %734)  ; Dot2(ax,ay,bx,by)
  %736 = fmul fast float %735, 2.000000e+00
  %737 = call float @dx.op.dot2.f32(i32 54, float %733, float %734, float %733, float %734)  ; Dot2(ax,ay,bx,by)
  %738 = fmul fast float %732, %732
  %739 = fsub fast float %737, %738
  %740 = fmul fast float %736, %736
  %741 = fmul fast float %617, %739
  %742 = fsub fast float %740, %741
  %743 = fcmp fast ogt float %742, 0.000000e+00
  br i1 %743, label %744, label %759

; <label>:744                                     ; preds = %720
  %745 = fcmp fast ogt float %736, 0.000000e+00
  %746 = call float @dx.op.unary.f32(i32 24, float %742)  ; Sqrt(value)
  %747 = fsub fast float -0.000000e+00, %746
  %748 = select i1 %745, float %746, float %747
  %749 = fadd fast float %748, %736
  %750 = fmul float %749, -5.000000e-01
  %751 = fdiv fast float %750, %610
  %752 = call float @dx.op.binary.f32(i32 35, float %751, float 0.000000e+00)  ; FMax(a,b)
  %753 = call float @dx.op.binary.f32(i32 36, float %645, float %752)  ; FMin(a,b)
  %754 = fdiv fast float %739, %750
  %755 = call float @dx.op.binary.f32(i32 35, float %754, float 0.000000e+00)  ; FMax(a,b)
  %756 = call float @dx.op.binary.f32(i32 36, float %645, float %755)  ; FMin(a,b)
  %757 = call float @dx.op.binary.f32(i32 36, float %753, float %756)  ; FMin(a,b)
  %758 = call float @dx.op.binary.f32(i32 35, float %753, float %756)  ; FMax(a,b)
  br label %759

; <label>:759                                     ; preds = %744, %720
  %760 = phi float [ %758, %744 ], [ -1.000000e+00, %720 ]
  %761 = phi float [ %757, %744 ], [ -1.000000e+00, %720 ]
  %762 = phi i1 [ true, %744 ], [ false, %720 ]
  br i1 %762, label %763, label %769

; <label>:763                                     ; preds = %759
  %764 = call float @dx.op.binary.f32(i32 35, float %708, float %761)  ; FMax(a,b)
  %765 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %722
  store float %764, float* %765, align 4, !tbaa !53, !noalias !57
  %766 = call float @dx.op.binary.f32(i32 35, float %708, float %760)  ; FMax(a,b)
  %767 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 %722
  store float %766, float* %767, align 4, !tbaa !53, !noalias !57
  %768 = add nsw i32 %721, 1
  br label %769

; <label>:769                                     ; preds = %763, %759
  %770 = phi i32 [ %768, %763 ], [ %721, %759 ]
  %771 = add nuw nsw i32 %722, 1
  %772 = icmp eq i32 %771, %597
  br i1 %772, label %773, label %720

; <label>:773                                     ; preds = %769
  %774 = load float, float* %714, align 4, !tbaa !53, !alias.scope !73, !noalias !76
  %775 = load float, float* %713, align 4, !tbaa !53, !alias.scope !79, !noalias !80
  %776 = load float, float* %712, align 4, !tbaa !53, !alias.scope !81, !noalias !82
  %777 = load float, float* %717, align 4, !tbaa !53, !alias.scope !83, !noalias !86
  %778 = load float, float* %716, align 4, !tbaa !53, !alias.scope !89, !noalias !90
  %779 = load float, float* %715, align 4, !tbaa !53, !alias.scope !91, !noalias !92
  br label %780

; <label>:780                                     ; preds = %773, %707
  %781 = phi float [ -1.000000e+00, %707 ], [ %779, %773 ]
  %782 = phi float [ -1.000000e+00, %707 ], [ %778, %773 ]
  %783 = phi float [ -1.000000e+00, %707 ], [ %777, %773 ]
  %784 = phi float [ -1.000000e+00, %707 ], [ %776, %773 ]
  %785 = phi float [ -1.000000e+00, %707 ], [ %775, %773 ]
  %786 = phi float [ -1.000000e+00, %707 ], [ %774, %773 ]
  %787 = phi i32 [ 0, %707 ], [ %770, %773 ]
  %788 = call float @dx.op.binary.f32(i32 36, float %785, float %786)  ; FMin(a,b)
  %789 = call float @dx.op.binary.f32(i32 36, float %784, float %788)  ; FMin(a,b)
  %790 = call float @dx.op.binary.f32(i32 35, float %784, float %785)  ; FMax(a,b)
  %791 = call float @dx.op.binary.f32(i32 36, float %790, float %786)  ; FMin(a,b)
  %792 = call float @dx.op.binary.f32(i32 36, float %784, float %785)  ; FMin(a,b)
  %793 = call float @dx.op.binary.f32(i32 35, float %792, float %791)  ; FMax(a,b)
  %794 = call float @dx.op.binary.f32(i32 35, float %785, float %786)  ; FMax(a,b)
  %795 = call float @dx.op.binary.f32(i32 35, float %784, float %794)  ; FMax(a,b)
  store float %789, float* %712, align 4, !tbaa !53, !alias.scope !81, !noalias !82
  store float %793, float* %713, align 4, !tbaa !53, !alias.scope !79, !noalias !80
  store float %795, float* %714, align 4, !tbaa !53, !alias.scope !73, !noalias !76
  %796 = call float @dx.op.binary.f32(i32 36, float %782, float %783)  ; FMin(a,b)
  %797 = call float @dx.op.binary.f32(i32 36, float %781, float %796)  ; FMin(a,b)
  %798 = call float @dx.op.binary.f32(i32 35, float %781, float %782)  ; FMax(a,b)
  %799 = call float @dx.op.binary.f32(i32 36, float %798, float %783)  ; FMin(a,b)
  %800 = call float @dx.op.binary.f32(i32 36, float %781, float %782)  ; FMin(a,b)
  %801 = call float @dx.op.binary.f32(i32 35, float %800, float %799)  ; FMax(a,b)
  %802 = call float @dx.op.binary.f32(i32 35, float %782, float %783)  ; FMax(a,b)
  %803 = call float @dx.op.binary.f32(i32 35, float %781, float %802)  ; FMax(a,b)
  store float %797, float* %715, align 4, !tbaa !53, !alias.scope !91, !noalias !92
  store float %801, float* %716, align 4, !tbaa !53, !alias.scope !89, !noalias !90
  store float %803, float* %717, align 4, !tbaa !53, !alias.scope !83, !noalias !86
  %804 = sub nsw i32 3, %787
  %805 = icmp sgt i32 %804, 2
  br i1 %805, label %806, label %824

; <label>:806                                     ; preds = %780
  %807 = icmp eq i32 %595, 0
  %808 = fsub fast float %645, %709
  %809 = select i1 %807, float %808, float %709
  %810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %811 = extractvalue %dx.types.CBufRet.f32 %810, 3
  %812 = call float @dx.op.binary.f32(i32 36, float %710, float %811)  ; FMin(a,b)
  %813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %814 = extractvalue %dx.types.CBufRet.f32 %813, 0
  %815 = extractvalue %dx.types.CBufRet.f32 %813, 1
  %816 = fadd fast float %815, %814
  %817 = call float @dx.op.unary.f32(i32 7, float %816)  ; Saturate(value)
  %818 = extractvalue %dx.types.CBufRet.f32 %813, 2
  %819 = extractvalue %dx.types.CBufRet.f32 %813, 3
  %820 = fadd fast float %819, %818
  %821 = call float @dx.op.unary.f32(i32 7, float %820)  ; Saturate(value)
  %822 = fmul fast float %817, %812
  %823 = fmul fast float %822, %821
  br label %886

; <label>:824                                     ; preds = %780
  %825 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %804
  %826 = load float, float* %825, align 4, !tbaa !53, !noalias !57
  %827 = fcmp fast olt float %826, %711
  %828 = icmp sgt i32 %787, 0
  %829 = and i1 %828, %827
  br i1 %829, label %830, label %867

; <label>:830                                     ; preds = %824
  br label %831

; <label>:831                                     ; preds = %860, %830
  %832 = phi float [ %861, %860 ], [ %709, %830 ]
  %833 = phi float [ %862, %860 ], [ %710, %830 ]
  %834 = phi float [ %842, %860 ], [ %826, %830 ]
  %835 = phi i32 [ %839, %860 ], [ %804, %830 ]
  %836 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 %835
  %837 = load float, float* %836, align 4, !tbaa !53, !noalias !57
  %838 = icmp slt i32 %835, 2
  %839 = add nsw i32 %835, 1
  %840 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %839
  %841 = load float, float* %840, align 4, !tbaa !53, !noalias !57
  %842 = select i1 %838, float %841, float %645
  %843 = call float @dx.op.binary.f32(i32 36, float %842, float %837)  ; FMin(a,b)
  %844 = call float @dx.op.binary.f32(i32 36, float %711, float %843)  ; FMin(a,b)
  %845 = icmp eq i32 %595, 0
  %846 = fadd fast float %844, %834
  %847 = fmul fast float %846, %576
  %848 = fadd fast float %847, %589
  br i1 %845, label %854, label %849

; <label>:849                                     ; preds = %831
  %850 = fsub fast float %844, %834
  %851 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %850)  ; FMax(a,b)
  %852 = fmul fast float %851, %848
  %853 = fadd fast float %852, %833
  br label %860

; <label>:854                                     ; preds = %831
  %855 = fsub fast float %834, %844
  %856 = call float @dx.op.unary.f32(i32 6, float %855)  ; FAbs(value)
  %857 = fadd fast float %856, %832
  %858 = fmul fast float %856, %848
  %859 = fsub fast float %833, %858
  br label %860

; <label>:860                                     ; preds = %854, %849
  %861 = phi float [ %851, %849 ], [ %857, %854 ]
  %862 = phi float [ %853, %849 ], [ %859, %854 ]
  %863 = fcmp fast olt float %842, %711
  %864 = icmp slt i32 %839, 3
  %865 = and i1 %864, %863
  br i1 %865, label %831, label %866

; <label>:866                                     ; preds = %860
  br label %867

; <label>:867                                     ; preds = %866, %824
  %868 = phi float [ %709, %824 ], [ %861, %866 ]
  %869 = phi float [ %710, %824 ], [ %862, %866 ]
  %870 = fsub fast float %645, %868
  %871 = select i1 %647, float %868, float %870
  %872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %873 = extractvalue %dx.types.CBufRet.f32 %872, 3
  %874 = call float @dx.op.binary.f32(i32 36, float %869, float %873)  ; FMin(a,b)
  %875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %876 = extractvalue %dx.types.CBufRet.f32 %875, 0
  %877 = extractvalue %dx.types.CBufRet.f32 %875, 1
  %878 = fadd fast float %877, %876
  %879 = call float @dx.op.unary.f32(i32 7, float %878)  ; Saturate(value)
  %880 = extractvalue %dx.types.CBufRet.f32 %875, 2
  %881 = extractvalue %dx.types.CBufRet.f32 %875, 3
  %882 = fadd fast float %881, %880
  %883 = call float @dx.op.unary.f32(i32 7, float %882)  ; Saturate(value)
  %884 = fmul fast float %879, %874
  %885 = fmul fast float %884, %883
  br label %886

; <label>:886                                     ; preds = %867, %806, %661, %643, %641
  %887 = phi float [ %670, %661 ], [ %809, %806 ], [ %871, %867 ], [ 0.000000e+00, %641 ], [ 0.000000e+00, %643 ]
  %888 = phi float [ %684, %661 ], [ %823, %806 ], [ %885, %867 ], [ 0.000000e+00, %641 ], [ 0.000000e+00, %643 ]
  %889 = fmul fast float %584, %888
  %890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %891 = extractvalue %dx.types.CBufRet.f32 %890, 2
  %892 = fsub fast float %591, %891
  %893 = fcmp fast olt float %889, -2.000000e+01
  %894 = call float @dx.op.unary.f32(i32 21, float %889)  ; Exp(value)
  %895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %896 = extractvalue %dx.types.CBufRet.f32 %895, 2
  %897 = extractvalue %dx.types.CBufRet.f32 %895, 3
  %898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %899 = extractvalue %dx.types.CBufRet.f32 %898, 2
  %900 = fmul fast float %897, %892
  %901 = call float @dx.op.unary.f32(i32 7, float %900)  ; Saturate(value)
  %902 = fsub fast float 1.000000e+00, %901
  %903 = fmul fast float %576, 5.000000e-01
  %904 = fadd fast float %903, 5.000000e-01
  %905 = call float @dx.op.unary.f32(i32 7, float %904)  ; Saturate(value)
  %906 = fsub fast float 1.000000e+00, %905
  %907 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %902)  ; FMax(a,b)
  %908 = fdiv fast float %906, %907
  %909 = fsub fast float %892, %543
  %910 = call float @dx.op.unary.f32(i32 6, float %909)  ; FAbs(value)
  %911 = fmul fast float %910, %896
  %912 = call float @dx.op.unary.f32(i32 7, float %908)  ; Saturate(value)
  %913 = fsub fast float 1.000000e+00, %911
  %914 = fmul fast float %913, %912
  %915 = fadd fast float %914, %911
  %916 = fmul fast float %899, %892
  %917 = call float @dx.op.unary.f32(i32 7, float %916)  ; Saturate(value)
  %918 = fsub fast float 1.000000e+00, %915
  %919 = fmul fast float %918, %917
  %920 = fadd fast float %919, %915
  %921 = call float @dx.op.unary.f32(i32 7, float %920)  ; Saturate(value)
  %922 = fadd fast float %894, -1.000000e+00
  %923 = select i1 %893, float -1.000000e+00, float %922
  %924 = fmul fast float %921, %923
  %925 = fadd fast float %924, 1.000000e+00
  br label %926

; <label>:926                                     ; preds = %886, %548
  %927 = phi float [ %887, %886 ], [ 0.000000e+00, %548 ]
  %928 = phi float [ %925, %886 ], [ 1.000000e+00, %548 ]
  %929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %930 = extractvalue %dx.types.CBufRet.f32 %929, 1
  %931 = fsub fast float 1.000000e+00, %928
  %932 = fmul fast float %931, %577
  %933 = fmul fast float %932, %930
  %934 = fsub fast float %577, %933
  br i1 %568, label %935, label %951, !dx.controlflow.hints !93

; <label>:935                                     ; preds = %926
  %936 = fmul fast float %578, %565
  %937 = fadd fast float %936, %566
  %938 = call float @dx.op.unary.f32(i32 7, float %937)  ; Saturate(value)
  %939 = fmul fast float %555, %934
  %940 = fsub fast float -0.000000e+00, %939
  %941 = fmul fast float %556, %934
  %942 = fsub fast float -0.000000e+00, %941
  %943 = call float @dx.op.unary.f32(i32 21, float %940)  ; Exp(value)
  %944 = call float @dx.op.unary.f32(i32 21, float %942)  ; Exp(value)
  %945 = call float @dx.op.binary.f32(i32 35, float %570, float %943)  ; FMax(a,b)
  %946 = call float @dx.op.binary.f32(i32 35, float %570, float %944)  ; FMax(a,b)
  %947 = fsub fast float %946, %945
  %948 = fmul fast float %947, %938
  %949 = fadd fast float %948, %945
  %950 = call float @dx.op.unary.f32(i32 7, float %949)  ; Saturate(value)
  br label %984

; <label>:951                                     ; preds = %926
  %952 = fmul fast float %934, %564
  %953 = call float @dx.op.unary.f32(i32 7, float %952)  ; Saturate(value)
  %954 = fsub fast float 2.000000e+00, %953
  %955 = fmul fast float %953, 9.921875e-01
  %956 = fmul fast float %955, %954
  %957 = fadd fast float %956, 3.906250e-03
  %958 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %16, float %957, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %959 = extractvalue %dx.types.ResRet.f32 %958, 0
  %960 = fsub fast float %953, %959
  %961 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %960)  ; FMax(a,b)
  %962 = fmul fast float %558, %543
  %963 = call float @dx.op.unary.f32(i32 6, float %962)  ; FAbs(value)
  %964 = fcmp fast ogt float %963, 0x3EB0C6F7A0000000
  br i1 %964, label %965, label %971, !dx.controlflow.hints !94

; <label>:965                                     ; preds = %951
  %966 = fmul fast float %962, 0xBFF7154760000000
  %967 = call float @dx.op.unary.f32(i32 21, float %966)  ; Exp(value)
  %968 = fsub fast float 1.000000e+00, %967
  %969 = fdiv fast float %968, %962
  %970 = fmul fast float %969, %560
  br label %971

; <label>:971                                     ; preds = %965, %951
  %972 = phi float [ %970, %965 ], [ %560, %951 ]
  %973 = fadd fast float %972, %562
  %974 = fmul fast float %973, %961
  %975 = fmul fast float %555, %974
  %976 = fsub fast float -0.000000e+00, %975
  %977 = fmul fast float %556, %974
  %978 = fsub fast float -0.000000e+00, %977
  %979 = fmul fast float %557, %974
  %980 = fsub fast float -0.000000e+00, %979
  %981 = call float @dx.op.unary.f32(i32 21, float %976)  ; Exp(value)
  %982 = call float @dx.op.unary.f32(i32 21, float %978)  ; Exp(value)
  %983 = call float @dx.op.unary.f32(i32 21, float %980)  ; Exp(value)
  br label %984

; <label>:984                                     ; preds = %971, %935
  %985 = phi float [ %950, %935 ], [ %981, %971 ]
  %986 = phi float [ %950, %935 ], [ %982, %971 ]
  %987 = phi float [ %950, %935 ], [ %983, %971 ]
  br i1 %586, label %988, label %1084, !dx.controlflow.hints !95

; <label>:988                                     ; preds = %984
  %989 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %985)  ; FMax(a,b)
  %990 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %986)  ; FMax(a,b)
  %991 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %987)  ; FMax(a,b)
  %992 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %928)  ; FMax(a,b)
  %993 = call float @dx.op.binary.f32(i32 35, float %927, float %934)  ; FMax(a,b)
  %994 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %993)  ; FMax(a,b)
  %995 = fdiv fast float %927, %994
  %996 = call float @dx.op.unary.f32(i32 7, float %995)  ; Saturate(value)
  %997 = fdiv fast float %934, %994
  %998 = call float @dx.op.unary.f32(i32 7, float %997)  ; Saturate(value)
  %999 = fcmp fast une float %992, 1.000000e+00
  br i1 %999, label %1000, label %1003, !dx.controlflow.hints !96

; <label>:1000                                    ; preds = %988
  %1001 = call float @dx.op.unary.f32(i32 23, float %992)  ; Log(value)
  %1002 = fmul fast float %1001, 0x3FE62E4300000000
  br label %1003

; <label>:1003                                    ; preds = %1000, %988
  %1004 = phi float [ %1002, %1000 ], [ 0.000000e+00, %988 ]
  %1005 = fcmp fast une float %989, 1.000000e+00
  br i1 %1005, label %1006, label %1009, !dx.controlflow.hints !97

; <label>:1006                                    ; preds = %1003
  %1007 = call float @dx.op.unary.f32(i32 23, float %989)  ; Log(value)
  %1008 = fmul fast float %1007, 0x3FE62E4300000000
  br label %1009

; <label>:1009                                    ; preds = %1006, %1003
  %1010 = phi float [ %1008, %1006 ], [ 0.000000e+00, %1003 ]
  %1011 = fcmp fast une float %990, 1.000000e+00
  br i1 %1011, label %1012, label %1015, !dx.controlflow.hints !97

; <label>:1012                                    ; preds = %1009
  %1013 = call float @dx.op.unary.f32(i32 23, float %990)  ; Log(value)
  %1014 = fmul fast float %1013, 0x3FE62E4300000000
  br label %1015

; <label>:1015                                    ; preds = %1012, %1009
  %1016 = phi float [ %1014, %1012 ], [ 0.000000e+00, %1009 ]
  %1017 = fcmp fast une float %991, 1.000000e+00
  br i1 %1017, label %1018, label %1021, !dx.controlflow.hints !97

; <label>:1018                                    ; preds = %1015
  %1019 = call float @dx.op.unary.f32(i32 23, float %991)  ; Log(value)
  %1020 = fmul fast float %1019, 0x3FE62E4300000000
  br label %1021

; <label>:1021                                    ; preds = %1018, %1015
  %1022 = phi float [ %1020, %1018 ], [ 0.000000e+00, %1015 ]
  %1023 = fmul fast float %1004, %998
  %1024 = fmul fast float %1010, %996
  %1025 = fmul fast float %1016, %996
  %1026 = fmul fast float %1022, %996
  %1027 = fadd fast float %1024, %1023
  %1028 = fadd fast float %1025, %1023
  %1029 = fadd fast float %1026, %1023
  %1030 = fcmp fast une float %1027, 0.000000e+00
  br i1 %1030, label %1031, label %1034, !dx.controlflow.hints !98

; <label>:1031                                    ; preds = %1021
  %1032 = fmul fast float %1027, 0x3FF7154760000000
  %1033 = call float @dx.op.unary.f32(i32 21, float %1032)  ; Exp(value)
  br label %1034

; <label>:1034                                    ; preds = %1031, %1021
  %1035 = phi float [ %1033, %1031 ], [ 1.000000e+00, %1021 ]
  %1036 = fcmp fast une float %1028, 0.000000e+00
  br i1 %1036, label %1037, label %1040, !dx.controlflow.hints !98

; <label>:1037                                    ; preds = %1034
  %1038 = fmul fast float %1028, 0x3FF7154760000000
  %1039 = call float @dx.op.unary.f32(i32 21, float %1038)  ; Exp(value)
  br label %1040

; <label>:1040                                    ; preds = %1037, %1034
  %1041 = phi float [ %1039, %1037 ], [ 1.000000e+00, %1034 ]
  %1042 = fcmp fast une float %1029, 0.000000e+00
  br i1 %1042, label %1043, label %1046, !dx.controlflow.hints !98

; <label>:1043                                    ; preds = %1040
  %1044 = fmul fast float %1029, 0x3FF7154760000000
  %1045 = call float @dx.op.unary.f32(i32 21, float %1044)  ; Exp(value)
  br label %1046

; <label>:1046                                    ; preds = %1043, %1040
  %1047 = phi float [ %1045, %1043 ], [ 1.000000e+00, %1040 ]
  %1048 = fcmp fast ogt float %996, %998
  br i1 %1048, label %1049, label %1056

; <label>:1049                                    ; preds = %1046
  %1050 = fsub fast float 1.000000e+00, %998
  %1051 = fmul fast float %1004, %1050
  %1052 = fcmp fast une float %1051, 0.000000e+00
  br i1 %1052, label %1053, label %1077, !dx.controlflow.hints !99

; <label>:1053                                    ; preds = %1049
  %1054 = fmul fast float %1051, 0x3FF7154760000000
  %1055 = call float @dx.op.unary.f32(i32 21, float %1054)  ; Exp(value)
  br label %1077

; <label>:1056                                    ; preds = %1046
  %1057 = fsub fast float 1.000000e+00, %996
  %1058 = fmul fast float %1010, %1057
  %1059 = fmul fast float %1016, %1057
  %1060 = fmul fast float %1022, %1057
  %1061 = fcmp fast une float %1058, 0.000000e+00
  br i1 %1061, label %1062, label %1065, !dx.controlflow.hints !98

; <label>:1062                                    ; preds = %1056
  %1063 = fmul fast float %1058, 0x3FF7154760000000
  %1064 = call float @dx.op.unary.f32(i32 21, float %1063)  ; Exp(value)
  br label %1065

; <label>:1065                                    ; preds = %1062, %1056
  %1066 = phi float [ %1064, %1062 ], [ 1.000000e+00, %1056 ]
  %1067 = fcmp fast une float %1059, 0.000000e+00
  br i1 %1067, label %1068, label %1071, !dx.controlflow.hints !98

; <label>:1068                                    ; preds = %1065
  %1069 = fmul fast float %1059, 0x3FF7154760000000
  %1070 = call float @dx.op.unary.f32(i32 21, float %1069)  ; Exp(value)
  br label %1071

; <label>:1071                                    ; preds = %1068, %1065
  %1072 = phi float [ %1070, %1068 ], [ 1.000000e+00, %1065 ]
  %1073 = fcmp fast une float %1060, 0.000000e+00
  br i1 %1073, label %1074, label %1077, !dx.controlflow.hints !98

; <label>:1074                                    ; preds = %1071
  %1075 = fmul fast float %1060, 0x3FF7154760000000
  %1076 = call float @dx.op.unary.f32(i32 21, float %1075)  ; Exp(value)
  br label %1077

; <label>:1077                                    ; preds = %1074, %1071, %1053, %1049
  %1078 = phi float [ %1076, %1074 ], [ %1055, %1053 ], [ 1.000000e+00, %1049 ], [ 1.000000e+00, %1071 ]
  %1079 = phi float [ %1072, %1074 ], [ %1055, %1053 ], [ 1.000000e+00, %1049 ], [ %1072, %1071 ]
  %1080 = phi float [ %1066, %1074 ], [ %1055, %1053 ], [ 1.000000e+00, %1049 ], [ %1066, %1071 ]
  %1081 = fmul fast float %1080, %1035
  %1082 = fmul fast float %1079, %1041
  %1083 = fmul fast float %1078, %1047
  br label %1084

; <label>:1084                                    ; preds = %1077, %984
  %1085 = phi float [ %1083, %1077 ], [ %987, %984 ]
  %1086 = phi float [ %1082, %1077 ], [ %986, %984 ]
  %1087 = phi float [ %1081, %1077 ], [ %985, %984 ]
  %1088 = call float @dx.op.dot3.f32(i32 55, float %1087, float %1086, float %1085, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1089 = select i1 %103, float %1088, float %1087
  %1090 = select i1 %103, float %1088, float %1086
  %1091 = select i1 %103, float 1.000000e+00, float %1085
  %1092 = fmul fast float %1089, %545
  %1093 = fmul fast float %1090, %546
  %1094 = fmul fast float %1091, %547
  %1095 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1096 = extractvalue %dx.types.CBufRet.i32 %1095, 0
  %1097 = icmp eq i32 %1096, 0
  br i1 %1097, label %1422, label %1098, !dx.controlflow.hints !100

; <label>:1098                                    ; preds = %1084
  %1099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1100 = extractvalue %dx.types.CBufRet.f32 %1099, 2
  %1101 = extractvalue %dx.types.CBufRet.f32 %1099, 3
  %1102 = fmul fast float %1100, %34
  %1103 = fmul fast float %1101, %35
  %1104 = fmul fast float %1102, 2.000000e+00
  %1105 = fmul fast float %1103, 2.000000e+00
  %1106 = fsub fast float 1.000000e+00, %1104
  %1107 = fsub fast float 1.000000e+00, %1105
  %1108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1109 = extractvalue %dx.types.CBufRet.f32 %1108, 0
  %1110 = extractvalue %dx.types.CBufRet.f32 %1108, 1
  %1111 = extractvalue %dx.types.CBufRet.f32 %1108, 2
  %1112 = fmul fast float %1106, %1109
  %1113 = fmul fast float %1106, %1110
  %1114 = fmul fast float %1106, %1111
  %1115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1116 = extractvalue %dx.types.CBufRet.f32 %1115, 0
  %1117 = extractvalue %dx.types.CBufRet.f32 %1115, 1
  %1118 = extractvalue %dx.types.CBufRet.f32 %1115, 2
  %1119 = fmul fast float %1107, %1116
  %1120 = fmul fast float %1107, %1117
  %1121 = fmul fast float %1107, %1118
  %1122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1123 = extractvalue %dx.types.CBufRet.f32 %1122, 0
  %1124 = extractvalue %dx.types.CBufRet.f32 %1122, 1
  %1125 = extractvalue %dx.types.CBufRet.f32 %1122, 2
  %1126 = fadd fast float %1119, %1123
  %1127 = fadd fast float %1126, %1112
  %1128 = fadd fast float %1120, %1124
  %1129 = fadd fast float %1128, %1113
  %1130 = fadd fast float %1121, %1125
  %1131 = fadd fast float %1130, %1114
  %1132 = fmul fast float %1127, %544
  %1133 = fmul fast float %1129, %544
  %1134 = fmul fast float %1131, %544
  %1135 = fmul fast float %1132, %1132
  %1136 = fmul fast float %1133, %1133
  %1137 = fadd fast float %1135, %1136
  %1138 = fmul fast float %1134, %1134
  %1139 = fadd fast float %1137, %1138
  %1140 = call float @dx.op.unary.f32(i32 24, float %1139)  ; Sqrt(value)
  %1141 = extractvalue %dx.types.CBufRet.f32 %413, 0
  %1142 = fsub fast float %1140, %1141
  %1143 = extractvalue %dx.types.CBufRet.f32 %413, 2
  %1144 = fmul fast float %1142, %1143
  %1145 = call float @dx.op.unary.f32(i32 7, float %1144)  ; Saturate(value)
  %1146 = fadd fast float %1145, -5.000000e-01
  %1147 = fmul fast float %1146, 2.000000e+00
  %1148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1149 = extractvalue %dx.types.CBufRet.f32 %1148, 2
  %1150 = call float @dx.op.binary.f32(i32 36, float %1149, float %1147)  ; FMin(a,b)
  %1151 = fsub fast float -0.000000e+00, %1149
  %1152 = fcmp fast ogt float %1150, %1151
  br i1 %1152, label %1153, label %1422, !dx.controlflow.hints !101

; <label>:1153                                    ; preds = %1098
  %1154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %1155 = extractvalue %dx.types.CBufRet.f32 %1154, 3
  %1156 = fcmp fast ogt float %1155, 0.000000e+00
  br i1 %1156, label %1157, label %1232, !dx.controlflow.hints !102

; <label>:1157                                    ; preds = %1153
  %1158 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %1159 = extractvalue %dx.types.Dimensions %1158, 0
  %1160 = sitofp i32 %1159 to float
  %1161 = extractvalue %dx.types.Dimensions %1158, 1
  %1162 = sitofp i32 %1161 to float
  %1163 = fmul fast float %1102, %1160
  %1164 = fmul fast float %1103, %1162
  %1165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1166 = extractvalue %dx.types.CBufRet.f32 %1165, 1
  %1167 = fsub fast float -0.000000e+00, %1166
  %1168 = fptoui float %1167 to i32
  %1169 = fptoui float %1163 to i32
  %1170 = fptoui float %1164 to i32
  %1171 = and i32 %1168, 31
  %1172 = lshr i32 %1169, %1171
  %1173 = lshr i32 %1170, %1171
  %1174 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 %1168, i32 %1172, i32 %1173, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1175 = extractvalue %dx.types.ResRet.f32 %1174, 0
  %1176 = fcmp fast olt float %1175, -1.000000e+00
  %1177 = fcmp fast ogt float %1175, -1.000000e+00
  %1178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1179 = extractvalue %dx.types.CBufRet.f32 %1178, 1
  %1180 = select i1 %1177, float %1179, float 1.000000e+00
  %1181 = fadd fast float %1175, 1.000000e+00
  %1182 = fmul fast float %1180, %1181
  %1183 = call float @dx.op.unary.f32(i32 6, float %1182)  ; FAbs(value)
  %1184 = extractvalue %dx.types.CBufRet.f32 %1178, 3
  %1185 = fcmp fast oge float %1183, %1184
  %1186 = select i1 %1185, float 0x4197782600000000, float %1183
  %1187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %1188 = extractvalue %dx.types.CBufRet.f32 %1187, 0
  %1189 = extractvalue %dx.types.CBufRet.f32 %1187, 1
  %1190 = extractvalue %dx.types.CBufRet.f32 %1187, 2
  %1191 = select i1 %1176, float %1188, float %1109
  %1192 = select i1 %1176, float %1189, float %1110
  %1193 = select i1 %1176, float %1190, float %1111
  %1194 = fmul fast float %1191, %1106
  %1195 = fmul fast float %1192, %1106
  %1196 = fmul fast float %1193, %1106
  %1197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %1198 = extractvalue %dx.types.CBufRet.f32 %1197, 0
  %1199 = extractvalue %dx.types.CBufRet.f32 %1197, 1
  %1200 = extractvalue %dx.types.CBufRet.f32 %1197, 2
  %1201 = select i1 %1176, float %1198, float %1116
  %1202 = select i1 %1176, float %1199, float %1117
  %1203 = select i1 %1176, float %1200, float %1118
  %1204 = fmul fast float %1201, %1107
  %1205 = fmul fast float %1202, %1107
  %1206 = fmul fast float %1203, %1107
  %1207 = fadd fast float %1204, %1194
  %1208 = fadd fast float %1205, %1195
  %1209 = fadd fast float %1206, %1196
  %1210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %1211 = extractvalue %dx.types.CBufRet.f32 %1210, 0
  %1212 = extractvalue %dx.types.CBufRet.f32 %1210, 1
  %1213 = extractvalue %dx.types.CBufRet.f32 %1210, 2
  %1214 = select i1 %1176, float %1211, float %1123
  %1215 = select i1 %1176, float %1212, float %1124
  %1216 = select i1 %1176, float %1213, float %1125
  %1217 = fadd fast float %1207, %1214
  %1218 = fadd fast float %1208, %1215
  %1219 = fadd fast float %1209, %1216
  %1220 = fmul fast float %1217, %1186
  %1221 = fmul fast float %1218, %1186
  %1222 = fmul fast float %1219, %1186
  %1223 = fmul fast float %1220, %1220
  %1224 = fmul fast float %1221, %1221
  %1225 = fadd fast float %1223, %1224
  %1226 = fmul fast float %1222, %1222
  %1227 = fadd fast float %1225, %1226
  %1228 = call float @dx.op.unary.f32(i32 24, float %1227)  ; Sqrt(value)
  %1229 = fsub fast float %1228, %1141
  %1230 = fmul fast float %1229, %1143
  %1231 = call float @dx.op.unary.f32(i32 7, float %1230)  ; Saturate(value)
  br label %1232

; <label>:1232                                    ; preds = %1157, %1153
  %1233 = phi float [ %1231, %1157 ], [ 1.000000e+00, %1153 ]
  %1234 = fmul fast float %1150, 5.000000e-01
  %1235 = fadd fast float %1234, 5.000000e-01
  %1236 = call float @dx.op.unary.f32(i32 22, float %1235)  ; Frc(value)
  %1237 = call float @dx.op.unary.f32(i32 27, float %1236)  ; Round_ni(value)
  %1238 = call float @dx.op.unary.f32(i32 22, float %1236)  ; Frc(value)
  %1239 = fmul fast float %1238, 2.000000e+00
  %1240 = fadd fast float %1239, -1.000000e+00
  %1241 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %16, float %1102, float %1103, float %1237, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1242 = extractvalue %dx.types.ResRet.f32 %1241, 0
  %1243 = extractvalue %dx.types.ResRet.f32 %1241, 1
  %1244 = extractvalue %dx.types.ResRet.f32 %1241, 2
  %1245 = extractvalue %dx.types.ResRet.f32 %1241, 3
  %1246 = fadd fast float %1242, -5.000000e-01
  %1247 = fadd fast float %1244, -5.000000e-01
  %1248 = fmul fast float %1246, 0xBFD5555560000000
  %1249 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1247, float %1248)  ; FMad(a,b,c)
  %1250 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1243, float 0.000000e+00)  ; FMad(a,b,c)
  %1251 = fadd fast float %1250, %1245
  %1252 = fmul fast float %1246, -7.500000e-01
  %1253 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1247, float %1252)  ; FMad(a,b,c)
  %1254 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1243, float 0.000000e+00)  ; FMad(a,b,c)
  %1255 = fadd fast float %1254, %1245
  %1256 = call float @dx.op.binary.f32(i32 35, float %1249, float -1.000000e+00)  ; FMax(a,b)
  %1257 = call float @dx.op.binary.f32(i32 35, float %1251, float -1.000000e+00)  ; FMax(a,b)
  %1258 = call float @dx.op.binary.f32(i32 35, float %1253, float -1.000000e+00)  ; FMax(a,b)
  %1259 = call float @dx.op.binary.f32(i32 35, float %1255, float -1.000000e+00)  ; FMax(a,b)
  %1260 = call float @dx.op.binary.f32(i32 36, float %1256, float 1.000000e+00)  ; FMin(a,b)
  %1261 = call float @dx.op.binary.f32(i32 36, float %1257, float 1.000000e+00)  ; FMin(a,b)
  %1262 = call float @dx.op.binary.f32(i32 36, float %1258, float 1.000000e+00)  ; FMin(a,b)
  %1263 = call float @dx.op.binary.f32(i32 36, float %1259, float 1.000000e+00)  ; FMin(a,b)
  %1264 = fcmp fast olt float %1260, 0x3FEFFF8020000000
  br i1 %1264, label %1265, label %1380, !dx.controlflow.hints !103

; <label>:1265                                    ; preds = %1232
  %1266 = extractvalue %dx.types.CBufRet.f32 %1148, 3
  %1267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1268 = extractvalue %dx.types.CBufRet.f32 %1267, 0
  %1269 = extractvalue %dx.types.CBufRet.f32 %1267, 1
  %1270 = extractvalue %dx.types.CBufRet.f32 %1267, 2
  %1271 = extractvalue %dx.types.CBufRet.f32 %1267, 3
  %1272 = fsub fast float %1268, %1260
  %1273 = fsub fast float %1269, %1261
  %1274 = fsub fast float %1270, %1262
  %1275 = fsub fast float %1271, %1263
  %1276 = fmul fast float %1272, %1266
  %1277 = fmul fast float %1273, %1266
  %1278 = fmul fast float %1274, %1266
  %1279 = fmul fast float %1275, %1266
  %1280 = fadd fast float %1276, %1260
  %1281 = fadd fast float %1277, %1261
  %1282 = fsub fast float -0.000000e+00, %1281
  %1283 = fadd fast float %1278, %1262
  %1284 = fadd fast float %1279, %1263
  %1285 = fmul fast float %1280, %1280
  %1286 = fsub fast float %1281, %1285
  %1287 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1286)  ; FMax(a,b)
  %1288 = fdiv fast float 1.000000e+00, %1287
  %1289 = fmul fast float %1281, %1280
  %1290 = fsub fast float %1283, %1289
  %1291 = fsub fast float %1240, %1280
  %1292 = fmul fast float %1240, %1240
  %1293 = fsub fast float %1292, %1281
  %1294 = fmul fast float %1291, %1288
  %1295 = fmul fast float %1294, %1290
  %1296 = fsub fast float %1293, %1295
  %1297 = fmul fast float %1281, %1281
  %1298 = fsub fast float %1284, %1297
  %1299 = fmul fast float %1290, %1290
  %1300 = fmul fast float %1299, %1288
  %1301 = fsub fast float %1298, %1300
  %1302 = fdiv fast float %1296, %1301
  %1303 = fmul fast float %1290, %1302
  %1304 = fsub fast float %1291, %1303
  %1305 = fmul fast float %1304, %1288
  %1306 = fmul fast float %1305, %1280
  %1307 = fsub fast float 1.000000e+00, %1306
  %1308 = fmul fast float %1281, %1302
  %1309 = fsub fast float %1307, %1308
  %1310 = fmul fast float %1305, %1305
  %1311 = fmul fast float %1302, 4.000000e+00
  %1312 = fmul fast float %1311, %1309
  %1313 = fsub fast float %1310, %1312
  %1314 = call float @dx.op.unary.f32(i32 24, float %1313)  ; Sqrt(value)
  %1315 = fcmp fast oge float %1305, 0.000000e+00
  %1316 = fsub fast float -0.000000e+00, %1314
  %1317 = select i1 %1315, float %1316, float %1314
  %1318 = fsub fast float %1317, %1305
  %1319 = fdiv fast float %1318, %1302
  %1320 = fdiv fast float %1309, %1318
  %1321 = fmul fast float %1319, 5.000000e-01
  %1322 = fmul fast float %1320, 2.000000e+00
  %1323 = select i1 %1315, float %1321, float %1322
  %1324 = select i1 %1315, float %1322, float %1321
  %1325 = call float @dx.op.binary.f32(i32 35, float %1323, float %1324)  ; FMax(a,b)
  %1326 = call float @dx.op.binary.f32(i32 36, float %1323, float %1324)  ; FMin(a,b)
  %1327 = fcmp fast ogt float %1240, %1326
  br i1 %1327, label %1328, label %1338

; <label>:1328                                    ; preds = %1265
  %1329 = fsub fast float %1240, %1326
  %1330 = fsub fast float %1325, %1326
  %1331 = fmul fast float %1329, %1330
  %1332 = fmul fast float %1325, %1240
  %1333 = fadd fast float %1325, %1240
  %1334 = fmul fast float %1333, %1280
  %1335 = fadd fast float %1332, %1281
  %1336 = fsub fast float %1335, %1334
  %1337 = fdiv fast float %1336, %1331
  br label %1338

; <label>:1338                                    ; preds = %1328, %1265
  %1339 = phi float [ %1337, %1328 ], [ 0.000000e+00, %1265 ]
  %1340 = fcmp fast ogt float %1240, %1325
  %1341 = fsub fast float %1240, %1325
  br i1 %1340, label %1342, label %1352

; <label>:1342                                    ; preds = %1338
  %1343 = fsub fast float %1325, %1326
  %1344 = fmul fast float %1343, %1341
  %1345 = fmul fast float %1326, %1240
  %1346 = fadd fast float %1326, %1240
  %1347 = fmul fast float %1346, %1280
  %1348 = fsub fast float %1282, %1345
  %1349 = fadd fast float %1348, %1347
  %1350 = fdiv fast float %1349, %1344
  %1351 = fadd fast float %1350, %1339
  br label %1352

; <label>:1352                                    ; preds = %1342, %1338
  %1353 = phi float [ %1351, %1342 ], [ %1339, %1338 ]
  %1354 = fsub fast float %1240, %1326
  %1355 = fmul fast float %1354, %1341
  %1356 = fmul fast float %1326, %1325
  %1357 = fadd fast float %1326, %1325
  %1358 = fmul fast float %1357, %1280
  %1359 = fadd fast float %1356, %1281
  %1360 = fsub fast float %1359, %1358
  %1361 = fdiv fast float %1360, %1355
  %1362 = call float @dx.op.unary.f32(i32 7, float %1353)  ; Saturate(value)
  %1363 = fcmp fast oeq float %414, 0.000000e+00
  %1364 = extractvalue %dx.types.CBufRet.f32 %1148, 0
  %1365 = fcmp fast oeq float %1364, 0.000000e+00
  %1366 = or i1 %1363, %1365
  %1367 = fmul fast float %1364, 2.000000e+00
  %1368 = fadd fast float %1149, %1150
  %1369 = fdiv fast float %1368, %1367
  %1370 = call float @dx.op.unary.f32(i32 7, float %1369)  ; Saturate(value)
  %1371 = fmul fast float %1370, 2.000000e+00
  %1372 = fsub fast float 3.000000e+00, %1371
  %1373 = fmul fast float %1370, %1370
  %1374 = fmul fast float %1373, %1372
  %1375 = select i1 %1366, float 1.000000e+00, float %1374
  %1376 = fmul fast float %1361, %414
  %1377 = fadd fast float %1362, %1376
  %1378 = call float @dx.op.unary.f32(i32 7, float %1377)  ; Saturate(value)
  %1379 = fmul fast float %1375, %1378
  br label %1380

; <label>:1380                                    ; preds = %1352, %1232
  %1381 = phi float [ %1379, %1352 ], [ 0.000000e+00, %1232 ]
  %1382 = fsub fast float 1.000000e+00, %1381
  %1383 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %16, float %1102, float %1103, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1384 = extractvalue %dx.types.ResRet.f32 %1383, 0
  %1385 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1386 = extractvalue %dx.types.CBufRet.i32 %1385, 2
  %1387 = icmp eq i32 %1386, 0
  br i1 %1387, label %1393, label %1388

; <label>:1388                                    ; preds = %1380
  %1389 = call float @dx.op.unary.f32(i32 7, float %1381)  ; Saturate(value)
  %1390 = fadd fast float %1384, -1.000000e+00
  %1391 = fmul fast float %1389, %1390
  %1392 = fadd fast float %1391, 1.000000e+00
  br label %1393

; <label>:1393                                    ; preds = %1388, %1380
  %1394 = phi float [ %1392, %1388 ], [ %1382, %1380 ]
  br i1 %1156, label %1395, label %1413

; <label>:1395                                    ; preds = %1393
  %1396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1397 = extractvalue %dx.types.CBufRet.f32 %1396, 1
  %1398 = fsub fast float %1233, %1397
  %1399 = call float @dx.op.unary.f32(i32 7, float %1398)  ; Saturate(value)
  %1400 = fsub fast float %1233, %1155
  %1401 = call float @dx.op.unary.f32(i32 7, float %1400)  ; Saturate(value)
  %1402 = fsub fast float %1399, %1401
  %1403 = fsub fast float %1235, %1401
  %1404 = fdiv fast float %1403, %1402
  %1405 = call float @dx.op.unary.f32(i32 7, float %1404)  ; Saturate(value)
  %1406 = fmul fast float %1405, 2.000000e+00
  %1407 = fsub fast float 3.000000e+00, %1406
  %1408 = fsub fast float %1384, %1394
  %1409 = fmul fast float %1405, %1405
  %1410 = fmul fast float %1409, %1408
  %1411 = fmul fast float %1410, %1407
  %1412 = fadd fast float %1411, %1394
  br label %1413

; <label>:1413                                    ; preds = %1395, %1393
  %1414 = phi float [ %1412, %1395 ], [ %1394, %1393 ]
  %1415 = call float @dx.op.binary.f32(i32 35, float %1384, float %1414)  ; FMax(a,b)
  %1416 = call float @dx.op.dot3.f32(i32 55, float %1415, float %1415, float %1415, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1417 = select i1 %103, float %1416, float %1415
  %1418 = select i1 %103, float 1.000000e+00, float %1415
  %1419 = fmul fast float %1417, %1092
  %1420 = fmul fast float %1417, %1093
  %1421 = fmul fast float %1418, %1094
  br label %1422

; <label>:1422                                    ; preds = %1413, %1098, %1084, %540
  %1423 = phi float [ %545, %540 ], [ %1092, %1084 ], [ %1419, %1413 ], [ %1092, %1098 ]
  %1424 = phi float [ %546, %540 ], [ %1093, %1084 ], [ %1420, %1413 ], [ %1093, %1098 ]
  %1425 = phi float [ %547, %540 ], [ %1094, %1084 ], [ %1421, %1413 ], [ %1094, %1098 ]
  %1426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1427 = extractvalue %dx.types.CBufRet.f32 %1426, 2
  %1428 = extractvalue %dx.types.CBufRet.f32 %1426, 3
  %1429 = fmul fast float %1427, %34
  %1430 = fmul fast float %1428, %35
  %1431 = call float @dx.op.unary.f32(i32 7, float %1429)  ; Saturate(value)
  %1432 = call float @dx.op.unary.f32(i32 7, float %1430)  ; Saturate(value)
  %1433 = select i1 %422, i32 2, i32 0
  %1434 = or i32 %1433, 1
  %1435 = uitofp i32 %1434 to float
  %1436 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %16, float %1431, float %1432, float %1435, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1437 = extractvalue %dx.types.ResRet.f32 %1436, 0
  %1438 = extractvalue %dx.types.ResRet.f32 %1436, 1
  %1439 = extractvalue %dx.types.ResRet.f32 %1436, 2
  %1440 = extractvalue %dx.types.ResRet.f32 %1436, 3
  %1441 = add nuw nsw i32 %1433, 2
  %1442 = uitofp i32 %1441 to float
  %1443 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %16, float %1431, float %1432, float %1442, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1444 = extractvalue %dx.types.ResRet.f32 %1443, 0
  %1445 = extractvalue %dx.types.ResRet.f32 %1443, 1
  %1446 = extractvalue %dx.types.ResRet.f32 %1443, 2
  %1447 = extractvalue %dx.types.ResRet.f32 %1443, 3
  %1448 = call float @dx.op.binary.f32(i32 35, float %1438, float %1439)  ; FMax(a,b)
  %1449 = call float @dx.op.binary.f32(i32 35, float %1437, float %1448)  ; FMax(a,b)
  %1450 = call float @dx.op.binary.f32(i32 35, float %1449, float %1440)  ; FMax(a,b)
  %1451 = call float @dx.op.binary.f32(i32 36, float %1445, float %1446)  ; FMin(a,b)
  %1452 = call float @dx.op.binary.f32(i32 36, float %1444, float %1451)  ; FMin(a,b)
  %1453 = call float @dx.op.binary.f32(i32 36, float %1452, float %1447)  ; FMin(a,b)
  %1454 = fmul fast float %1450, 2.550000e+02
  %1455 = fadd fast float %1454, 0x3F70101020000000
  %1456 = fptoui float %1455 to i32
  %1457 = fmul fast float %1453, 2.550000e+02
  %1458 = fadd fast float %1457, 0x3F70101020000000
  %1459 = fptoui float %1458 to i32
  %1460 = icmp ult i32 %1456, %1459
  br i1 %1460, label %1461, label %1504

; <label>:1461                                    ; preds = %1422
  %1462 = fcmp fast ogt float %27, 9.843750e-01
  %1463 = fadd fast float %544, -4.000000e+00
  %1464 = select i1 %1462, float -4.000000e+00, float %1463
  %1465 = call float @dx.op.binary.f32(i32 35, float %1464, float 0.000000e+00)  ; FMax(a,b)
  %1466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1467 = extractvalue %dx.types.CBufRet.f32 %1466, 0
  %1468 = fadd fast float %1467, %1465
  %1469 = extractvalue %dx.types.CBufRet.f32 %1466, 2
  %1470 = fmul fast float %1468, %1469
  %1471 = call float @dx.op.unary.f32(i32 23, float %1470)  ; Log(value)
  %1472 = extractvalue %dx.types.CBufRet.f32 %1466, 3
  %1473 = fmul fast float %1472, %1471
  %1474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1475 = extractvalue %dx.types.CBufRet.f32 %1474, 2
  %1476 = fmul fast float %1473, %1475
  %1477 = call float @dx.op.unary.f32(i32 7, float %1476)  ; Saturate(value)
  %1478 = uitofp i32 %1456 to float
  %1479 = uitofp i32 %1459 to float
  %1480 = fadd fast float %1478, 5.000000e-01
  %1481 = fadd fast float %1479, 5.000000e-01
  %1482 = fmul fast float %1475, %1480
  %1483 = fmul fast float %1475, %1481
  %1484 = fadd fast float %1482, 0x3F0FFB4800000000
  %1485 = fadd fast float %1483, 0xBF0FFB4800000000
  %1486 = call float @dx.op.binary.f32(i32 35, float %1477, float %1484)  ; FMax(a,b)
  %1487 = call float @dx.op.binary.f32(i32 36, float %1486, float %1485)  ; FMin(a,b)
  %1488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1489 = extractvalue %dx.types.CBufRet.f32 %1488, 1
  %1490 = extractvalue %dx.types.CBufRet.f32 %1488, 2
  %1491 = extractvalue %dx.types.CBufRet.f32 %1488, 0
  %1492 = select i1 %422, float %1491, float 0.000000e+00
  %1493 = fmul fast float %1489, %1487
  %1494 = fadd fast float %1492, %1493
  %1495 = fadd fast float %1492, %1490
  %1496 = fsub fast float %1489, %1490
  %1497 = fadd fast float %1496, %1492
  %1498 = call float @dx.op.binary.f32(i32 35, float %1494, float %1495)  ; FMax(a,b)
  %1499 = call float @dx.op.binary.f32(i32 36, float %1498, float %1497)  ; FMin(a,b)
  %1500 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %15, float %1431, float %1432, float %1499, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1501 = extractvalue %dx.types.ResRet.f32 %1500, 0
  %1502 = extractvalue %dx.types.ResRet.f32 %1500, 1
  %1503 = extractvalue %dx.types.ResRet.f32 %1500, 2
  br label %1504

; <label>:1504                                    ; preds = %1461, %1422
  %1505 = phi float [ %1501, %1461 ], [ 1.000000e+00, %1422 ]
  %1506 = phi float [ %1502, %1461 ], [ 1.000000e+00, %1422 ]
  %1507 = phi float [ %1503, %1461 ], [ 1.000000e+00, %1422 ]
  %1508 = call float @dx.op.dot3.f32(i32 55, float %1505, float %1506, float %1507, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1509 = select i1 %103, float %1508, float %1505
  %1510 = select i1 %103, float %1508, float %1506
  %1511 = fmul fast float %1509, %1423
  %1512 = fmul fast float %1510, %1424
  %1513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1514 = extractvalue %dx.types.CBufRet.f32 %1513, 0
  br i1 %103, label %1515, label %1518

; <label>:1515                                    ; preds = %1504
  %1516 = fadd fast float %1511, %1512
  %1517 = fmul fast float %1514, %1516
  br label %1528

; <label>:1518                                    ; preds = %1504
  %1519 = fmul fast float %1507, %1425
  %1520 = fmul fast float %1514, %1511
  %1521 = fmul fast float %1514, %1512
  %1522 = fmul fast float %1519, %1514
  %1523 = call float @dx.op.binary.f32(i32 35, float %1521, float %1522)  ; FMax(a,b)
  %1524 = call float @dx.op.binary.f32(i32 35, float %1520, float %1523)  ; FMax(a,b)
  %1525 = call float @dx.op.binary.f32(i32 35, float %1524, float 0.000000e+00)  ; FMax(a,b)
  %1526 = fcmp fast ugt float %1525, 0x3F10000000000000
  br i1 %1526, label %1528, label %1527

; <label>:1527                                    ; preds = %1518
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1528

; <label>:1528                                    ; preds = %1527, %1518, %1515
  %1529 = phi float [ %1517, %1515 ], [ %1520, %1527 ], [ %1520, %1518 ]
  %1530 = phi float [ 0.000000e+00, %1515 ], [ %1521, %1527 ], [ %1521, %1518 ]
  %1531 = phi float [ 0.000000e+00, %1515 ], [ %1522, %1527 ], [ %1522, %1518 ]
  %1532 = fadd fast float %347, 0x3FE3C6EF40000000
  %1533 = call float @dx.op.unary.f32(i32 22, float %1532)  ; Frc(value)
  %1534 = call float @dx.op.unary.f32(i32 23, float %1529)  ; Log(value)
  %1535 = fadd fast float %1534, -7.000000e+00
  %1536 = call float @dx.op.unary.f32(i32 21, float %1535)  ; Exp(value)
  %1537 = fmul fast float %1533, 2.000000e+00
  %1538 = fadd fast float %1537, -1.000000e+00
  %1539 = fmul fast float %1536, %1538
  %1540 = fcmp fast ogt float %1529, 0.000000e+00
  %1541 = select i1 %1540, float %1539, float 0.000000e+00
  %1542 = fadd fast float %1541, %1529
  %1543 = fadd fast float %347, 0x3FF3C6EF40000000
  %1544 = call float @dx.op.unary.f32(i32 22, float %1543)  ; Frc(value)
  %1545 = call float @dx.op.unary.f32(i32 23, float %1530)  ; Log(value)
  %1546 = fadd fast float %1545, -7.000000e+00
  %1547 = call float @dx.op.unary.f32(i32 21, float %1546)  ; Exp(value)
  %1548 = fmul fast float %1544, 2.000000e+00
  %1549 = fadd fast float %1548, -1.000000e+00
  %1550 = fmul fast float %1547, %1549
  %1551 = fcmp fast ogt float %1530, 0.000000e+00
  %1552 = select i1 %1551, float %1550, float 0.000000e+00
  %1553 = fadd fast float %1552, %1530
  %1554 = fadd fast float %347, 0x3FFDAA66E0000000
  %1555 = call float @dx.op.unary.f32(i32 22, float %1554)  ; Frc(value)
  %1556 = call float @dx.op.unary.f32(i32 23, float %1531)  ; Log(value)
  %1557 = fadd fast float %1556, -6.000000e+00
  %1558 = call float @dx.op.unary.f32(i32 21, float %1557)  ; Exp(value)
  %1559 = fmul fast float %1555, 2.000000e+00
  %1560 = fadd fast float %1559, -1.000000e+00
  %1561 = fmul fast float %1558, %1560
  %1562 = fcmp fast ogt float %1531, 0.000000e+00
  %1563 = select i1 %1562, float %1561, float 0.000000e+00
  %1564 = fadd fast float %1563, %1531
  %1565 = select i1 %103, float %1530, float %1553
  %1566 = select i1 %103, float %1531, float %1564
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1567 = call float @dx.op.binary.f32(i32 36, float %1542, float 3.225500e+04)  ; FMin(a,b)
  %1568 = call float @dx.op.binary.f32(i32 36, float %1565, float 3.225500e+04)  ; FMin(a,b)
  %1569 = call float @dx.op.binary.f32(i32 36, float %1566, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1567)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1568)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1569)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

