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
; shader hash: d57d8b61b4b6c30813ea57fc08ee1873
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
;   output 3 depends on inputs: { 0, 1, 2, 3, 8, 9, 12, 16 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 8, 9, 12, 16 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 8, 9, 12, 16 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 8, 9, 12, 16 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 8, 9, 12, 16 }
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
  %75 = extractvalue %dx.types.ResRet.i32 %74, 0
  %76 = extractvalue %dx.types.ResRet.i32 %74, 1
  %77 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %78 = extractvalue %dx.types.CBufRet.i32 %77, 3
  %79 = and i32 %78, 3
  %80 = icmp ne i32 %79, 0
  %81 = and i32 %78, 4
  %82 = icmp ne i32 %81, 0
  %83 = and i1 %80, %82
  br i1 %83, label %84, label %93

; <label>:84                                      ; preds = %0
  %85 = fmul fast float %38, %35
  %86 = fmul fast float %37, %34
  %87 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %16, float %86, float %85, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %88 = extractvalue %dx.types.ResRet.f32 %87, 0
  %89 = fsub fast float 1.000000e+00, %88
  %90 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.f32 %90, 0
  %92 = fcmp fast olt float %89, %91
  br label %101

; <label>:93                                      ; preds = %0
  %94 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.i32 %94, 3
  %96 = and i32 %95, 3
  %97 = icmp ne i32 %96, 0
  %98 = and i32 %95, 4
  %99 = icmp eq i32 %98, 0
  %100 = and i1 %97, %99
  br label %101

; <label>:101                                     ; preds = %93, %84
  %102 = phi i1 [ %92, %84 ], [ %100, %93 ]
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 2
  %105 = extractvalue %dx.types.CBufRet.f32 %103, 3
  %106 = fmul fast float %104, %34
  %107 = fmul fast float %105, %35
  %108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %109 = extractvalue %dx.types.ResRet.i32 %108, 0
  %110 = and i32 %109, 114688
  %111 = icmp ne i32 %110, 0
  %112 = select i1 %111, float %106, float 0.000000e+00
  %113 = select i1 %111, float %107, float 0.000000e+00
  %114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %112, float %113, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %115 = extractvalue %dx.types.ResRet.f32 %114, 0
  %116 = fmul fast float %115, 2.550000e+02
  %117 = fptoui float %116 to i32
  %118 = select i1 %111, i32 %117, i32 0
  %119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 188, i32 undef)  ; BufferLoad(srv,index,wot)
  %120 = extractvalue %dx.types.ResRet.i32 %119, 0
  %121 = and i32 %75, 65535
  %122 = call float @dx.op.legacyF16ToF32(i32 131, i32 %121)  ; LegacyF16ToF32(value)
  %123 = lshr i32 %75, 16
  %124 = call float @dx.op.legacyF16ToF32(i32 131, i32 %123)  ; LegacyF16ToF32(value)
  %125 = and i32 %76, 65535
  %126 = call float @dx.op.legacyF16ToF32(i32 131, i32 %125)  ; LegacyF16ToF32(value)
  %127 = lshr i32 %76, 16
  %128 = call float @dx.op.legacyF16ToF32(i32 131, i32 %127)  ; LegacyF16ToF32(value)
  %129 = fmul fast float %128, %24
  %130 = and i32 %120, 16
  %131 = icmp ne i32 %130, 0
  %132 = select i1 %131, float 1.000000e+00, float %129
  %133 = fcmp fast ogt float %132, 0.000000e+00
  br i1 %133, label %135, label %134

; <label>:134                                     ; preds = %101
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %135

; <label>:135                                     ; preds = %134, %101
  %136 = call float @dx.op.unary.f32(i32 7, float %132)  ; Saturate(value)
  %137 = fmul fast float %34, 5.000000e-01
  %138 = fmul fast float %35, 5.000000e-01
  %139 = fptosi float %137 to i32
  %140 = fptosi float %138 to i32
  %141 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %7, i32 0, i32 %139, i32 %140, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %142 = extractvalue %dx.types.ResRet.i32 %141, 0
  %143 = lshr i32 %142, 18
  %144 = uitofp i32 %143 to float
  %145 = fmul fast float %144, 0x3F4C00EBA0000000
  %146 = call float @dx.op.unary.f32(i32 21, float %145)  ; Exp(value)
  %147 = fadd fast float %146, -1.000000e+00
  %148 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %7, i32 0)  ; GetDimensions(handle,mipLevel)
  %149 = extractvalue %dx.types.Dimensions %148, 0
  %150 = sitofp i32 %149 to float
  %151 = extractvalue %dx.types.Dimensions %148, 1
  %152 = sitofp i32 %151 to float
  %153 = fcmp fast oge float %137, %150
  %154 = fcmp fast oge float %138, %152
  %155 = or i1 %153, %154
  %156 = select i1 %155, float 0x4197782600000000, float %147
  %157 = fsub fast float %156, %28
  %158 = fcmp fast ogt float %157, 0.000000e+00
  %159 = and i32 %118, -2
  %160 = icmp eq i32 %159, 2
  %161 = and i1 %160, %158
  %162 = xor i1 %158, true
  %163 = icmp eq i32 %118, 1
  %164 = and i1 %163, %162
  %165 = or i1 %161, %164
  %166 = and i32 %120, 262144
  %167 = icmp ne i32 %166, 0
  %168 = and i1 %167, %165
  %169 = xor i1 %165, true
  %170 = and i32 %120, 131072
  %171 = icmp ne i32 %170, 0
  %172 = and i1 %171, %169
  %173 = or i1 %168, %172
  br i1 %173, label %174, label %175

; <label>:174                                     ; preds = %135
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %175

; <label>:175                                     ; preds = %174, %135
  %176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %177 = extractvalue %dx.types.CBufRet.f32 %176, 2
  %178 = fptosi float %28 to i32
  %179 = sitofp i32 %178 to float
  %180 = fadd fast float %177, %179
  %181 = fmul fast float %180, 0x3FE3C6EF40000000
  %182 = frem fast float %34, 2.560000e+02
  %183 = frem fast float %35, 2.560000e+02
  %184 = fptoui float %182 to i32
  %185 = fptoui float %183 to i32
  %186 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %184, i32 %185, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %187 = extractvalue %dx.types.ResRet.f32 %186, 0
  %188 = fadd fast float %187, %181
  %189 = call float @dx.op.unary.f32(i32 22, float %188)  ; Frc(value)
  %190 = add i32 %20, 72
  %191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %190, i32 undef)  ; BufferLoad(srv,index,wot)
  %192 = extractvalue %dx.types.ResRet.i32 %191, 0
  %193 = add i32 %192, 0
  %194 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %193, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %195 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %194, %dx.types.Handle %31, float %22, float %23, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %196 = extractvalue %dx.types.ResRet.f32 %195, 0
  %197 = extractvalue %dx.types.ResRet.f32 %195, 1
  %198 = extractvalue %dx.types.ResRet.f32 %195, 2
  %199 = add i32 %20, 56
  %200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %199, i32 undef)  ; BufferLoad(srv,index,wot)
  %201 = extractvalue %dx.types.ResRet.i32 %200, 0
  %202 = and i32 %201, 255
  %203 = uitofp i32 %202 to float
  %204 = fmul fast float %203, 0x3F70101020000000
  %205 = lshr i32 %201, 8
  %206 = and i32 %205, 255
  %207 = uitofp i32 %206 to float
  %208 = fmul fast float %207, 0x3F70101020000000
  %209 = lshr i32 %201, 16
  %210 = and i32 %209, 255
  %211 = uitofp i32 %210 to float
  %212 = fmul fast float %211, 0x3F70101020000000
  %213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %214 = extractvalue %dx.types.CBufRet.f32 %213, 0
  %215 = fmul fast float %196, %122
  %216 = fmul fast float %215, %214
  %217 = fmul fast float %204, %204
  %218 = fmul fast float %217, %216
  %219 = fmul fast float %197, %124
  %220 = fmul fast float %219, %214
  %221 = fmul fast float %208, %208
  %222 = fmul fast float %221, %220
  %223 = fmul fast float %198, %126
  %224 = fmul fast float %223, %214
  %225 = fmul fast float %212, %212
  %226 = fmul fast float %225, %224
  %227 = call float @dx.op.dot3.f32(i32 55, float %218, float %222, float %226, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %228 = add i32 %20, 32
  %229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.i32 %229, 0
  %231 = and i32 %230, 255
  %232 = uitofp i32 %231 to float
  %233 = lshr i32 %230, 8
  %234 = and i32 %233, 255
  %235 = uitofp i32 %234 to float
  %236 = fmul fast float %235, %227
  %237 = fadd fast float %236, %232
  %238 = fmul fast float %237, 0x3F70101020000000
  %239 = call float @dx.op.unary.f32(i32 7, float %238)  ; Saturate(value)
  %240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %241 = extractvalue %dx.types.CBufRet.f32 %240, 0
  %242 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %7, i32 0, i32 %139, i32 %140, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %243 = extractvalue %dx.types.ResRet.i32 %242, 0
  %244 = lshr i32 %243, 18
  %245 = uitofp i32 %244 to float
  %246 = fmul fast float %245, 0x3F4C00EBA0000000
  %247 = call float @dx.op.unary.f32(i32 21, float %246)  ; Exp(value)
  %248 = fadd fast float %247, -1.000000e+00
  %249 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %7, i32 0)  ; GetDimensions(handle,mipLevel)
  %250 = extractvalue %dx.types.Dimensions %249, 0
  %251 = sitofp i32 %250 to float
  %252 = extractvalue %dx.types.Dimensions %249, 1
  %253 = sitofp i32 %252 to float
  %254 = fcmp fast oge float %137, %251
  %255 = fcmp fast oge float %138, %253
  %256 = or i1 %254, %255
  %257 = select i1 %256, float 0x4197782600000000, float %248
  %258 = fmul fast float %241, %239
  %259 = fsub fast float -0.000000e+00, %239
  %260 = call float @dx.op.unary.f32(i32 7, float %259)  ; Saturate(value)
  %261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %262 = extractvalue %dx.types.CBufRet.f32 %261, 3
  %263 = fmul fast float %262, %260
  %264 = fadd fast float %263, %258
  %265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %266 = extractvalue %dx.types.CBufRet.f32 %265, 3
  %267 = fmul fast float %218, %136
  %268 = fmul fast float %222, %136
  %269 = fmul fast float %226, %136
  %270 = icmp eq i32 %118, 3
  %271 = fcmp fast ogt float %28, %257
  %272 = and i1 %163, %271
  %273 = or i1 %270, %272
  %274 = icmp eq i32 %118, 2
  %275 = fcmp fast ole float %28, %257
  %276 = and i1 %274, %275
  %277 = or i1 %276, %273
  br i1 %272, label %278, label %395

; <label>:278                                     ; preds = %175
  %279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %280 = extractvalue %dx.types.CBufRet.f32 %279, 2
  %281 = extractvalue %dx.types.CBufRet.f32 %279, 3
  %282 = fmul fast float %280, %34
  %283 = fmul fast float %281, %35
  %284 = call float @dx.op.unary.f32(i32 7, float %282)  ; Saturate(value)
  %285 = call float @dx.op.unary.f32(i32 7, float %283)  ; Saturate(value)
  %286 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %16, float %284, float %285, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %287 = extractvalue %dx.types.ResRet.f32 %286, 0
  %288 = extractvalue %dx.types.ResRet.f32 %286, 1
  %289 = extractvalue %dx.types.ResRet.f32 %286, 2
  %290 = extractvalue %dx.types.ResRet.f32 %286, 3
  %291 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %16, float %284, float %285, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %292 = extractvalue %dx.types.ResRet.f32 %291, 0
  %293 = extractvalue %dx.types.ResRet.f32 %291, 1
  %294 = extractvalue %dx.types.ResRet.f32 %291, 2
  %295 = extractvalue %dx.types.ResRet.f32 %291, 3
  %296 = call float @dx.op.binary.f32(i32 35, float %288, float %289)  ; FMax(a,b)
  %297 = call float @dx.op.binary.f32(i32 35, float %287, float %296)  ; FMax(a,b)
  %298 = call float @dx.op.binary.f32(i32 35, float %297, float %290)  ; FMax(a,b)
  %299 = call float @dx.op.binary.f32(i32 36, float %293, float %294)  ; FMin(a,b)
  %300 = call float @dx.op.binary.f32(i32 36, float %292, float %299)  ; FMin(a,b)
  %301 = call float @dx.op.binary.f32(i32 36, float %300, float %295)  ; FMin(a,b)
  %302 = fmul fast float %298, 2.550000e+02
  %303 = fadd fast float %302, 0x3F70101020000000
  %304 = fptoui float %303 to i32
  %305 = fmul fast float %301, 2.550000e+02
  %306 = fadd fast float %305, 0x3F70101020000000
  %307 = fptoui float %306 to i32
  %308 = icmp ult i32 %304, %307
  br i1 %308, label %309, label %351

; <label>:309                                     ; preds = %278
  %310 = fcmp fast ogt float %27, 9.843750e-01
  %311 = fadd fast float %28, -4.000000e+00
  %312 = select i1 %310, float -4.000000e+00, float %311
  %313 = call float @dx.op.binary.f32(i32 35, float %312, float 0.000000e+00)  ; FMax(a,b)
  %314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %315 = extractvalue %dx.types.CBufRet.f32 %314, 0
  %316 = fadd fast float %315, %313
  %317 = extractvalue %dx.types.CBufRet.f32 %314, 2
  %318 = fmul fast float %316, %317
  %319 = call float @dx.op.unary.f32(i32 23, float %318)  ; Log(value)
  %320 = extractvalue %dx.types.CBufRet.f32 %314, 3
  %321 = fmul fast float %320, %319
  %322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %323 = extractvalue %dx.types.CBufRet.f32 %322, 2
  %324 = fmul fast float %321, %323
  %325 = call float @dx.op.unary.f32(i32 7, float %324)  ; Saturate(value)
  %326 = uitofp i32 %304 to float
  %327 = uitofp i32 %307 to float
  %328 = fadd fast float %326, 5.000000e-01
  %329 = fadd fast float %327, 5.000000e-01
  %330 = fmul fast float %323, %328
  %331 = fmul fast float %323, %329
  %332 = fadd fast float %330, 0x3F0FFB4800000000
  %333 = fadd fast float %331, 0xBF0FFB4800000000
  %334 = call float @dx.op.binary.f32(i32 35, float %325, float %332)  ; FMax(a,b)
  %335 = call float @dx.op.binary.f32(i32 36, float %334, float %333)  ; FMin(a,b)
  %336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %337 = extractvalue %dx.types.CBufRet.f32 %336, 1
  %338 = extractvalue %dx.types.CBufRet.f32 %336, 2
  %339 = extractvalue %dx.types.CBufRet.f32 %336, 0
  %340 = fmul fast float %337, %335
  %341 = fadd fast float %339, %340
  %342 = fadd fast float %339, %338
  %343 = fsub fast float %337, %338
  %344 = fadd fast float %343, %339
  %345 = call float @dx.op.binary.f32(i32 35, float %341, float %342)  ; FMax(a,b)
  %346 = call float @dx.op.binary.f32(i32 36, float %345, float %344)  ; FMin(a,b)
  %347 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %15, float %284, float %285, float %346, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %348 = extractvalue %dx.types.ResRet.f32 %347, 0
  %349 = extractvalue %dx.types.ResRet.f32 %347, 1
  %350 = extractvalue %dx.types.ResRet.f32 %347, 2
  br label %351

; <label>:351                                     ; preds = %309, %278
  %352 = phi float [ %348, %309 ], [ 1.000000e+00, %278 ]
  %353 = phi float [ %349, %309 ], [ 1.000000e+00, %278 ]
  %354 = phi float [ %350, %309 ], [ 1.000000e+00, %278 ]
  %355 = call float @dx.op.dot3.f32(i32 55, float %352, float %353, float %354, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %356 = select i1 %102, float %355, float %352
  %357 = select i1 %102, float %355, float %353
  %358 = select i1 %102, float 1.000000e+00, float %354
  %359 = fmul fast float %356, %267
  %360 = fmul fast float %357, %268
  %361 = fmul fast float %358, %269
  %362 = fmul fast float %34, 2.000000e+00
  %363 = fmul fast float %362, %280
  %364 = fmul fast float %35, 2.000000e+00
  %365 = fmul fast float %364, %281
  %366 = fsub fast float 1.000000e+00, %363
  %367 = fsub fast float 1.000000e+00, %365
  %368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %369 = extractvalue %dx.types.CBufRet.f32 %368, 0
  %370 = extractvalue %dx.types.CBufRet.f32 %368, 1
  %371 = extractvalue %dx.types.CBufRet.f32 %368, 2
  %372 = fmul fast float %366, %369
  %373 = fmul fast float %366, %370
  %374 = fmul fast float %366, %371
  %375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %376 = extractvalue %dx.types.CBufRet.f32 %375, 0
  %377 = extractvalue %dx.types.CBufRet.f32 %375, 1
  %378 = extractvalue %dx.types.CBufRet.f32 %375, 2
  %379 = fmul fast float %367, %376
  %380 = fmul fast float %367, %377
  %381 = fmul fast float %367, %378
  %382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %383 = extractvalue %dx.types.CBufRet.f32 %382, 0
  %384 = extractvalue %dx.types.CBufRet.f32 %382, 1
  %385 = extractvalue %dx.types.CBufRet.f32 %382, 2
  %386 = fadd fast float %379, %383
  %387 = fadd fast float %386, %372
  %388 = fadd fast float %380, %384
  %389 = fadd fast float %388, %373
  %390 = fadd fast float %381, %385
  %391 = fadd fast float %390, %374
  %392 = fmul fast float %387, %257
  %393 = fmul fast float %389, %257
  %394 = fmul fast float %391, %257
  br label %395

; <label>:395                                     ; preds = %351, %175
  %396 = phi float [ %392, %351 ], [ %69, %175 ]
  %397 = phi float [ %393, %351 ], [ %70, %175 ]
  %398 = phi float [ %394, %351 ], [ %71, %175 ]
  %399 = phi float [ %257, %351 ], [ %28, %175 ]
  %400 = phi float [ %359, %351 ], [ %267, %175 ]
  %401 = phi float [ %360, %351 ], [ %268, %175 ]
  %402 = phi float [ %361, %351 ], [ %269, %175 ]
  %403 = phi float [ %352, %351 ], [ 1.000000e+00, %175 ]
  br i1 %277, label %1280, label %404

; <label>:404                                     ; preds = %395
  %405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %406 = extractvalue %dx.types.CBufRet.f32 %405, 0
  %407 = extractvalue %dx.types.CBufRet.f32 %405, 1
  %408 = extractvalue %dx.types.CBufRet.f32 %405, 2
  %409 = extractvalue %dx.types.CBufRet.f32 %405, 3
  %410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %411 = extractvalue %dx.types.CBufRet.f32 %410, 0
  %412 = extractvalue %dx.types.CBufRet.f32 %410, 1
  %413 = extractvalue %dx.types.CBufRet.f32 %410, 2
  %414 = extractvalue %dx.types.CBufRet.f32 %410, 3
  %415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %416 = extractvalue %dx.types.CBufRet.f32 %415, 3
  %417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %418 = extractvalue %dx.types.CBufRet.f32 %417, 3
  %419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %420 = extractvalue %dx.types.CBufRet.f32 %419, 3
  %421 = extractvalue %dx.types.CBufRet.f32 %419, 0
  %422 = extractvalue %dx.types.CBufRet.f32 %419, 1
  %423 = extractvalue %dx.types.CBufRet.f32 %419, 2
  %424 = fcmp fast olt float %423, -5.000000e-01
  %425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %426 = extractvalue %dx.types.CBufRet.f32 %425, 3
  %427 = call float @dx.op.dot3.f32(i32 55, float %396, float %397, float %398, float %396, float %397, float %398)  ; Dot3(ax,ay,az,bx,by,bz)
  %428 = call float @dx.op.unary.f32(i32 25, float %427)  ; Rsqrt(value)
  %429 = fmul fast float %428, %427
  %430 = fmul fast float %428, %396
  %431 = fmul fast float %428, %397
  %432 = fmul fast float %428, %398
  %433 = fadd fast float %429, %409
  %434 = call float @dx.op.dot3.f32(i32 55, float %430, float %431, float %432, float %406, float %407, float %408)  ; Dot3(ax,ay,az,bx,by,bz)
  %435 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %436 = extractvalue %dx.types.CBufRet.i32 %435, 1
  %437 = and i32 %436, 1
  %438 = icmp ne i32 %437, 0
  %439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %440 = extractvalue %dx.types.CBufRet.f32 %439, 2
  %441 = fcmp fast ogt float %440, 0.000000e+00
  %442 = and i1 %438, %441
  br i1 %442, label %443, label %782, !dx.controlflow.hints !51

; <label>:443                                     ; preds = %404
  %444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %445 = extractvalue %dx.types.CBufRet.f32 %444, 3
  %446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %447 = extractvalue %dx.types.CBufRet.f32 %446, 2
  %448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %449 = extractvalue %dx.types.CBufRet.f32 %448, 2
  %450 = fsub fast float %447, %449
  %451 = and i32 %436, 2
  %452 = extractvalue %dx.types.CBufRet.i32 %435, 0
  %453 = call i32 @dx.op.binary.i32(i32 40, i32 %452, i32 3)  ; UMin(a,b)
  %454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %455 = extractvalue %dx.types.CBufRet.f32 %454, 0
  %456 = extractvalue %dx.types.CBufRet.f32 %454, 1
  %457 = extractvalue %dx.types.CBufRet.f32 %448, 0
  %458 = extractvalue %dx.types.CBufRet.f32 %448, 1
  %459 = fsub fast float %455, %457
  %460 = fsub fast float %456, %458
  %461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %462 = extractvalue %dx.types.CBufRet.f32 %461, 0
  %463 = fcmp fast ogt float %462, 0.000000e+00
  %464 = fsub fast float -0.000000e+00, %459
  %465 = fsub fast float -0.000000e+00, %460
  %466 = call float @dx.op.dot2.f32(i32 54, float %430, float %431, float %430, float %431)  ; Dot2(ax,ay,bx,by)
  %467 = call float @dx.op.dot2.f32(i32 54, float %430, float %431, float %464, float %465)  ; Dot2(ax,ay,bx,by)
  %468 = fmul fast float %467, 2.000000e+00
  %469 = call float @dx.op.dot2.f32(i32 54, float %464, float %465, float %464, float %465)  ; Dot2(ax,ay,bx,by)
  %470 = fmul fast float %462, %462
  %471 = fsub fast float %469, %470
  %472 = fmul fast float %468, %468
  %473 = fmul fast float %466, 4.000000e+00
  %474 = fmul fast float %473, %471
  %475 = fsub fast float %472, %474
  %476 = fcmp fast ogt float %475, 0.000000e+00
  br i1 %476, label %477, label %492

; <label>:477                                     ; preds = %443
  %478 = fcmp fast ogt float %468, 0.000000e+00
  %479 = call float @dx.op.unary.f32(i32 24, float %475)  ; Sqrt(value)
  %480 = fsub fast float -0.000000e+00, %479
  %481 = select i1 %478, float %479, float %480
  %482 = fadd fast float %481, %468
  %483 = fmul float %482, -5.000000e-01
  %484 = fdiv fast float %483, %466
  %485 = call float @dx.op.binary.f32(i32 35, float %484, float 0.000000e+00)  ; FMax(a,b)
  %486 = call float @dx.op.binary.f32(i32 36, float %429, float %485)  ; FMin(a,b)
  %487 = fdiv fast float %471, %483
  %488 = call float @dx.op.binary.f32(i32 35, float %487, float 0.000000e+00)  ; FMax(a,b)
  %489 = call float @dx.op.binary.f32(i32 36, float %429, float %488)  ; FMin(a,b)
  %490 = call float @dx.op.binary.f32(i32 36, float %486, float %489)  ; FMin(a,b)
  %491 = call float @dx.op.binary.f32(i32 35, float %486, float %489)  ; FMax(a,b)
  br label %492

; <label>:492                                     ; preds = %477, %443
  %493 = phi float [ %491, %477 ], [ -1.000000e+00, %443 ]
  %494 = phi float [ %490, %477 ], [ -1.000000e+00, %443 ]
  %495 = phi i1 [ true, %477 ], [ false, %443 ]
  %496 = and i1 %463, %495
  br i1 %496, label %497, label %499

; <label>:497                                     ; preds = %492
  %498 = fcmp fast oeq float %494, %493
  br i1 %498, label %742, label %500

; <label>:499                                     ; preds = %492
  br i1 %463, label %742, label %500

; <label>:500                                     ; preds = %499, %497
  %501 = phi float [ %429, %499 ], [ %493, %497 ]
  %502 = phi float [ 0.000000e+00, %499 ], [ %494, %497 ]
  %503 = icmp ne i32 %451, 0
  %504 = fmul fast float %501, %432
  %505 = fadd fast float %504, %445
  %506 = fmul fast float %505, %501
  %507 = select i1 %503, float 0.000000e+00, float %506
  %508 = fcmp fast oeq float %432, 0.000000e+00
  %509 = fdiv fast float %450, %432
  %510 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %509)  ; FMax(a,b)
  %511 = select i1 %508, float %501, float %510
  %512 = call float @dx.op.binary.f32(i32 36, float %501, float %511)  ; FMin(a,b)
  %513 = fcmp fast ogt float %432, 0.000000e+00
  %514 = fcmp fast olt float %450, 0.000000e+00
  br i1 %513, label %515, label %552

; <label>:515                                     ; preds = %500
  %516 = icmp eq i32 %451, 0
  br i1 %514, label %517, label %541

; <label>:517                                     ; preds = %515
  %518 = select i1 %516, float %501, float 0.000000e+00
  %519 = fsub fast float -0.000000e+00, %518
  %520 = call float @dx.op.unary.f32(i32 6, float %519)  ; FAbs(value)
  %521 = fmul fast float %518, %432
  %522 = fadd fast float %521, %445
  %523 = fmul fast float %520, %522
  %524 = fsub fast float %507, %523
  %525 = fsub fast float %501, %520
  %526 = select i1 %516, float %525, float 0.000000e+00
  %527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %528 = extractvalue %dx.types.CBufRet.f32 %527, 3
  %529 = call float @dx.op.binary.f32(i32 36, float %524, float %528)  ; FMin(a,b)
  %530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %531 = extractvalue %dx.types.CBufRet.f32 %530, 0
  %532 = extractvalue %dx.types.CBufRet.f32 %530, 1
  %533 = fadd fast float %532, %531
  %534 = call float @dx.op.unary.f32(i32 7, float %533)  ; Saturate(value)
  %535 = extractvalue %dx.types.CBufRet.f32 %530, 2
  %536 = extractvalue %dx.types.CBufRet.f32 %530, 3
  %537 = fadd fast float %536, %535
  %538 = call float @dx.op.unary.f32(i32 7, float %537)  ; Saturate(value)
  %539 = fmul fast float %534, %529
  %540 = fmul fast float %539, %538
  br label %742

; <label>:541                                     ; preds = %515
  br i1 %516, label %542, label %563

; <label>:542                                     ; preds = %541
  %543 = call float @dx.op.binary.f32(i32 36, float %512, float %502)  ; FMin(a,b)
  %544 = fsub fast float %512, %543
  %545 = fsub fast float %544, %501
  %546 = call float @dx.op.unary.f32(i32 6, float %545)  ; FAbs(value)
  %547 = fadd fast float %544, %501
  %548 = fmul fast float %547, %432
  %549 = fadd fast float %548, %445
  %550 = fmul fast float %549, %546
  %551 = fsub fast float %507, %550
  br label %563

; <label>:552                                     ; preds = %500
  br i1 %514, label %553, label %563

; <label>:553                                     ; preds = %552
  %554 = call float @dx.op.binary.f32(i32 35, float %502, float %512)  ; FMax(a,b)
  %555 = icmp eq i32 %451, 0
  %556 = select i1 %555, float %512, float 0.000000e+00
  %557 = fsub fast float -0.000000e+00, %556
  %558 = call float @dx.op.unary.f32(i32 6, float %557)  ; FAbs(value)
  %559 = fmul fast float %556, %432
  %560 = fadd fast float %559, %445
  %561 = fmul fast float %558, %560
  %562 = fsub fast float %507, %561
  br label %563

; <label>:563                                     ; preds = %553, %552, %542, %541
  %564 = phi float [ %502, %541 ], [ %502, %542 ], [ %554, %553 ], [ %502, %552 ]
  %565 = phi float [ 0.000000e+00, %541 ], [ %546, %542 ], [ %558, %553 ], [ 0.000000e+00, %552 ]
  %566 = phi float [ %507, %541 ], [ %551, %542 ], [ %562, %553 ], [ %507, %552 ]
  %567 = phi float [ %512, %541 ], [ %512, %542 ], [ %501, %553 ], [ %501, %552 ]
  %568 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 0
  store float -1.000000e+00, float* %568, align 4, !tbaa !52, !noalias !56
  %569 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 1
  store float -1.000000e+00, float* %569, align 4, !tbaa !52, !noalias !56
  %570 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 2
  store float -1.000000e+00, float* %570, align 4, !tbaa !52, !noalias !56
  %571 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 0
  store float -1.000000e+00, float* %571, align 4, !tbaa !52, !noalias !56
  %572 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 1
  store float -1.000000e+00, float* %572, align 4, !tbaa !52, !noalias !56
  %573 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 2
  store float -1.000000e+00, float* %573, align 4, !tbaa !52, !noalias !56
  %574 = icmp sgt i32 %453, 0
  br i1 %574, label %575, label %636

; <label>:575                                     ; preds = %563
  br label %576

; <label>:576                                     ; preds = %625, %575
  %577 = phi i32 [ %626, %625 ], [ 0, %575 ]
  %578 = phi i32 [ %627, %625 ], [ 0, %575 ]
  %579 = add nuw i32 %578, 171
  %580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 %579)  ; CBufferLoadLegacy(handle,regIndex)
  %581 = extractvalue %dx.types.CBufRet.f32 %580, 0
  %582 = extractvalue %dx.types.CBufRet.f32 %580, 1
  %583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %584 = extractvalue %dx.types.CBufRet.f32 %583, 0
  %585 = extractvalue %dx.types.CBufRet.f32 %583, 1
  %586 = fsub fast float %581, %584
  %587 = fsub fast float %582, %585
  %588 = extractvalue %dx.types.CBufRet.f32 %580, 2
  %589 = fsub fast float -0.000000e+00, %586
  %590 = fsub fast float -0.000000e+00, %587
  %591 = call float @dx.op.dot2.f32(i32 54, float %430, float %431, float %589, float %590)  ; Dot2(ax,ay,bx,by)
  %592 = fmul fast float %591, 2.000000e+00
  %593 = call float @dx.op.dot2.f32(i32 54, float %589, float %590, float %589, float %590)  ; Dot2(ax,ay,bx,by)
  %594 = fmul fast float %588, %588
  %595 = fsub fast float %593, %594
  %596 = fmul fast float %592, %592
  %597 = fmul fast float %473, %595
  %598 = fsub fast float %596, %597
  %599 = fcmp fast ogt float %598, 0.000000e+00
  br i1 %599, label %600, label %615

; <label>:600                                     ; preds = %576
  %601 = fcmp fast ogt float %592, 0.000000e+00
  %602 = call float @dx.op.unary.f32(i32 24, float %598)  ; Sqrt(value)
  %603 = fsub fast float -0.000000e+00, %602
  %604 = select i1 %601, float %602, float %603
  %605 = fadd fast float %604, %592
  %606 = fmul float %605, -5.000000e-01
  %607 = fdiv fast float %606, %466
  %608 = call float @dx.op.binary.f32(i32 35, float %607, float 0.000000e+00)  ; FMax(a,b)
  %609 = call float @dx.op.binary.f32(i32 36, float %501, float %608)  ; FMin(a,b)
  %610 = fdiv fast float %595, %606
  %611 = call float @dx.op.binary.f32(i32 35, float %610, float 0.000000e+00)  ; FMax(a,b)
  %612 = call float @dx.op.binary.f32(i32 36, float %501, float %611)  ; FMin(a,b)
  %613 = call float @dx.op.binary.f32(i32 36, float %609, float %612)  ; FMin(a,b)
  %614 = call float @dx.op.binary.f32(i32 35, float %609, float %612)  ; FMax(a,b)
  br label %615

; <label>:615                                     ; preds = %600, %576
  %616 = phi float [ %614, %600 ], [ -1.000000e+00, %576 ]
  %617 = phi float [ %613, %600 ], [ -1.000000e+00, %576 ]
  %618 = phi i1 [ true, %600 ], [ false, %576 ]
  br i1 %618, label %619, label %625

; <label>:619                                     ; preds = %615
  %620 = call float @dx.op.binary.f32(i32 35, float %564, float %617)  ; FMax(a,b)
  %621 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %578
  store float %620, float* %621, align 4, !tbaa !52, !noalias !56
  %622 = call float @dx.op.binary.f32(i32 35, float %564, float %616)  ; FMax(a,b)
  %623 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 %578
  store float %622, float* %623, align 4, !tbaa !52, !noalias !56
  %624 = add nsw i32 %577, 1
  br label %625

; <label>:625                                     ; preds = %619, %615
  %626 = phi i32 [ %624, %619 ], [ %577, %615 ]
  %627 = add nuw nsw i32 %578, 1
  %628 = icmp eq i32 %627, %453
  br i1 %628, label %629, label %576

; <label>:629                                     ; preds = %625
  %630 = load float, float* %570, align 4, !tbaa !52, !alias.scope !72, !noalias !75
  %631 = load float, float* %569, align 4, !tbaa !52, !alias.scope !78, !noalias !79
  %632 = load float, float* %568, align 4, !tbaa !52, !alias.scope !80, !noalias !81
  %633 = load float, float* %573, align 4, !tbaa !52, !alias.scope !82, !noalias !85
  %634 = load float, float* %572, align 4, !tbaa !52, !alias.scope !88, !noalias !89
  %635 = load float, float* %571, align 4, !tbaa !52, !alias.scope !90, !noalias !91
  br label %636

; <label>:636                                     ; preds = %629, %563
  %637 = phi float [ -1.000000e+00, %563 ], [ %635, %629 ]
  %638 = phi float [ -1.000000e+00, %563 ], [ %634, %629 ]
  %639 = phi float [ -1.000000e+00, %563 ], [ %633, %629 ]
  %640 = phi float [ -1.000000e+00, %563 ], [ %632, %629 ]
  %641 = phi float [ -1.000000e+00, %563 ], [ %631, %629 ]
  %642 = phi float [ -1.000000e+00, %563 ], [ %630, %629 ]
  %643 = phi i32 [ 0, %563 ], [ %626, %629 ]
  %644 = call float @dx.op.binary.f32(i32 36, float %641, float %642)  ; FMin(a,b)
  %645 = call float @dx.op.binary.f32(i32 36, float %640, float %644)  ; FMin(a,b)
  %646 = call float @dx.op.binary.f32(i32 35, float %640, float %641)  ; FMax(a,b)
  %647 = call float @dx.op.binary.f32(i32 36, float %646, float %642)  ; FMin(a,b)
  %648 = call float @dx.op.binary.f32(i32 36, float %640, float %641)  ; FMin(a,b)
  %649 = call float @dx.op.binary.f32(i32 35, float %648, float %647)  ; FMax(a,b)
  %650 = call float @dx.op.binary.f32(i32 35, float %641, float %642)  ; FMax(a,b)
  %651 = call float @dx.op.binary.f32(i32 35, float %640, float %650)  ; FMax(a,b)
  store float %645, float* %568, align 4, !tbaa !52, !alias.scope !80, !noalias !81
  store float %649, float* %569, align 4, !tbaa !52, !alias.scope !78, !noalias !79
  store float %651, float* %570, align 4, !tbaa !52, !alias.scope !72, !noalias !75
  %652 = call float @dx.op.binary.f32(i32 36, float %638, float %639)  ; FMin(a,b)
  %653 = call float @dx.op.binary.f32(i32 36, float %637, float %652)  ; FMin(a,b)
  %654 = call float @dx.op.binary.f32(i32 35, float %637, float %638)  ; FMax(a,b)
  %655 = call float @dx.op.binary.f32(i32 36, float %654, float %639)  ; FMin(a,b)
  %656 = call float @dx.op.binary.f32(i32 36, float %637, float %638)  ; FMin(a,b)
  %657 = call float @dx.op.binary.f32(i32 35, float %656, float %655)  ; FMax(a,b)
  %658 = call float @dx.op.binary.f32(i32 35, float %638, float %639)  ; FMax(a,b)
  %659 = call float @dx.op.binary.f32(i32 35, float %637, float %658)  ; FMax(a,b)
  store float %653, float* %571, align 4, !tbaa !52, !alias.scope !90, !noalias !91
  store float %657, float* %572, align 4, !tbaa !52, !alias.scope !88, !noalias !89
  store float %659, float* %573, align 4, !tbaa !52, !alias.scope !82, !noalias !85
  %660 = sub nsw i32 3, %643
  %661 = icmp sgt i32 %660, 2
  br i1 %661, label %662, label %680

; <label>:662                                     ; preds = %636
  %663 = icmp eq i32 %451, 0
  %664 = fsub fast float %501, %565
  %665 = select i1 %663, float %664, float %565
  %666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %667 = extractvalue %dx.types.CBufRet.f32 %666, 3
  %668 = call float @dx.op.binary.f32(i32 36, float %566, float %667)  ; FMin(a,b)
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
  br label %742

; <label>:680                                     ; preds = %636
  %681 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %660
  %682 = load float, float* %681, align 4, !tbaa !52, !noalias !56
  %683 = fcmp fast olt float %682, %567
  %684 = icmp sgt i32 %643, 0
  %685 = and i1 %684, %683
  br i1 %685, label %686, label %723

; <label>:686                                     ; preds = %680
  br label %687

; <label>:687                                     ; preds = %716, %686
  %688 = phi float [ %717, %716 ], [ %565, %686 ]
  %689 = phi float [ %718, %716 ], [ %566, %686 ]
  %690 = phi float [ %698, %716 ], [ %682, %686 ]
  %691 = phi i32 [ %695, %716 ], [ %660, %686 ]
  %692 = getelementptr inbounds [3 x float], [3 x float]* %30, i32 0, i32 %691
  %693 = load float, float* %692, align 4, !tbaa !52, !noalias !56
  %694 = icmp slt i32 %691, 2
  %695 = add nsw i32 %691, 1
  %696 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %695
  %697 = load float, float* %696, align 4, !tbaa !52, !noalias !56
  %698 = select i1 %694, float %697, float %501
  %699 = call float @dx.op.binary.f32(i32 36, float %698, float %693)  ; FMin(a,b)
  %700 = call float @dx.op.binary.f32(i32 36, float %567, float %699)  ; FMin(a,b)
  %701 = icmp eq i32 %451, 0
  %702 = fadd fast float %700, %690
  %703 = fmul fast float %702, %432
  %704 = fadd fast float %703, %445
  br i1 %701, label %710, label %705

; <label>:705                                     ; preds = %687
  %706 = fsub fast float %700, %690
  %707 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %706)  ; FMax(a,b)
  %708 = fmul fast float %707, %704
  %709 = fadd fast float %708, %689
  br label %716

; <label>:710                                     ; preds = %687
  %711 = fsub fast float %690, %700
  %712 = call float @dx.op.unary.f32(i32 6, float %711)  ; FAbs(value)
  %713 = fadd fast float %712, %688
  %714 = fmul fast float %712, %704
  %715 = fsub fast float %689, %714
  br label %716

; <label>:716                                     ; preds = %710, %705
  %717 = phi float [ %707, %705 ], [ %713, %710 ]
  %718 = phi float [ %709, %705 ], [ %715, %710 ]
  %719 = fcmp fast olt float %698, %567
  %720 = icmp slt i32 %695, 3
  %721 = and i1 %720, %719
  br i1 %721, label %687, label %722

; <label>:722                                     ; preds = %716
  br label %723

; <label>:723                                     ; preds = %722, %680
  %724 = phi float [ %565, %680 ], [ %717, %722 ]
  %725 = phi float [ %566, %680 ], [ %718, %722 ]
  %726 = fsub fast float %501, %724
  %727 = select i1 %503, float %724, float %726
  %728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %729 = extractvalue %dx.types.CBufRet.f32 %728, 3
  %730 = call float @dx.op.binary.f32(i32 36, float %725, float %729)  ; FMin(a,b)
  %731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %732 = extractvalue %dx.types.CBufRet.f32 %731, 0
  %733 = extractvalue %dx.types.CBufRet.f32 %731, 1
  %734 = fadd fast float %733, %732
  %735 = call float @dx.op.unary.f32(i32 7, float %734)  ; Saturate(value)
  %736 = extractvalue %dx.types.CBufRet.f32 %731, 2
  %737 = extractvalue %dx.types.CBufRet.f32 %731, 3
  %738 = fadd fast float %737, %736
  %739 = call float @dx.op.unary.f32(i32 7, float %738)  ; Saturate(value)
  %740 = fmul fast float %735, %730
  %741 = fmul fast float %740, %739
  br label %742

; <label>:742                                     ; preds = %723, %662, %517, %499, %497
  %743 = phi float [ %526, %517 ], [ %665, %662 ], [ %727, %723 ], [ 0.000000e+00, %497 ], [ 0.000000e+00, %499 ]
  %744 = phi float [ %540, %517 ], [ %679, %662 ], [ %741, %723 ], [ 0.000000e+00, %497 ], [ 0.000000e+00, %499 ]
  %745 = fmul fast float %440, %744
  %746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %747 = extractvalue %dx.types.CBufRet.f32 %746, 2
  %748 = fsub fast float %447, %747
  %749 = fcmp fast olt float %745, -2.000000e+01
  %750 = call float @dx.op.unary.f32(i32 21, float %745)  ; Exp(value)
  %751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %752 = extractvalue %dx.types.CBufRet.f32 %751, 2
  %753 = extractvalue %dx.types.CBufRet.f32 %751, 3
  %754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %755 = extractvalue %dx.types.CBufRet.f32 %754, 2
  %756 = fmul fast float %753, %748
  %757 = call float @dx.op.unary.f32(i32 7, float %756)  ; Saturate(value)
  %758 = fsub fast float 1.000000e+00, %757
  %759 = fmul fast float %432, 5.000000e-01
  %760 = fadd fast float %759, 5.000000e-01
  %761 = call float @dx.op.unary.f32(i32 7, float %760)  ; Saturate(value)
  %762 = fsub fast float 1.000000e+00, %761
  %763 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %758)  ; FMax(a,b)
  %764 = fdiv fast float %762, %763
  %765 = fsub fast float %748, %398
  %766 = call float @dx.op.unary.f32(i32 6, float %765)  ; FAbs(value)
  %767 = fmul fast float %766, %752
  %768 = call float @dx.op.unary.f32(i32 7, float %764)  ; Saturate(value)
  %769 = fsub fast float 1.000000e+00, %767
  %770 = fmul fast float %769, %768
  %771 = fadd fast float %770, %767
  %772 = fmul fast float %755, %748
  %773 = call float @dx.op.unary.f32(i32 7, float %772)  ; Saturate(value)
  %774 = fsub fast float 1.000000e+00, %771
  %775 = fmul fast float %774, %773
  %776 = fadd fast float %775, %771
  %777 = call float @dx.op.unary.f32(i32 7, float %776)  ; Saturate(value)
  %778 = fadd fast float %750, -1.000000e+00
  %779 = select i1 %749, float -1.000000e+00, float %778
  %780 = fmul fast float %777, %779
  %781 = fadd fast float %780, 1.000000e+00
  br label %782

; <label>:782                                     ; preds = %742, %404
  %783 = phi float [ %743, %742 ], [ 0.000000e+00, %404 ]
  %784 = phi float [ %781, %742 ], [ 1.000000e+00, %404 ]
  %785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %786 = extractvalue %dx.types.CBufRet.f32 %785, 1
  %787 = fsub fast float 1.000000e+00, %784
  %788 = fmul fast float %787, %433
  %789 = fmul fast float %788, %786
  %790 = fsub fast float %433, %789
  br i1 %424, label %791, label %807, !dx.controlflow.hints !92

; <label>:791                                     ; preds = %782
  %792 = fmul fast float %434, %421
  %793 = fadd fast float %792, %422
  %794 = call float @dx.op.unary.f32(i32 7, float %793)  ; Saturate(value)
  %795 = fmul fast float %411, %790
  %796 = fsub fast float -0.000000e+00, %795
  %797 = fmul fast float %412, %790
  %798 = fsub fast float -0.000000e+00, %797
  %799 = call float @dx.op.unary.f32(i32 21, float %796)  ; Exp(value)
  %800 = call float @dx.op.unary.f32(i32 21, float %798)  ; Exp(value)
  %801 = call float @dx.op.binary.f32(i32 35, float %426, float %799)  ; FMax(a,b)
  %802 = call float @dx.op.binary.f32(i32 35, float %426, float %800)  ; FMax(a,b)
  %803 = fsub fast float %802, %801
  %804 = fmul fast float %803, %794
  %805 = fadd fast float %804, %801
  %806 = call float @dx.op.unary.f32(i32 7, float %805)  ; Saturate(value)
  br label %840

; <label>:807                                     ; preds = %782
  %808 = fmul fast float %790, %420
  %809 = call float @dx.op.unary.f32(i32 7, float %808)  ; Saturate(value)
  %810 = fsub fast float 2.000000e+00, %809
  %811 = fmul fast float %809, 9.921875e-01
  %812 = fmul fast float %811, %810
  %813 = fadd fast float %812, 3.906250e-03
  %814 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %16, float %813, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %815 = extractvalue %dx.types.ResRet.f32 %814, 0
  %816 = fsub fast float %809, %815
  %817 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %816)  ; FMax(a,b)
  %818 = fmul fast float %414, %398
  %819 = call float @dx.op.unary.f32(i32 6, float %818)  ; FAbs(value)
  %820 = fcmp fast ogt float %819, 0x3EB0C6F7A0000000
  br i1 %820, label %821, label %827, !dx.controlflow.hints !93

; <label>:821                                     ; preds = %807
  %822 = fmul fast float %818, 0xBFF7154760000000
  %823 = call float @dx.op.unary.f32(i32 21, float %822)  ; Exp(value)
  %824 = fsub fast float 1.000000e+00, %823
  %825 = fdiv fast float %824, %818
  %826 = fmul fast float %825, %416
  br label %827

; <label>:827                                     ; preds = %821, %807
  %828 = phi float [ %826, %821 ], [ %416, %807 ]
  %829 = fadd fast float %828, %418
  %830 = fmul fast float %829, %817
  %831 = fmul fast float %411, %830
  %832 = fsub fast float -0.000000e+00, %831
  %833 = fmul fast float %412, %830
  %834 = fsub fast float -0.000000e+00, %833
  %835 = fmul fast float %413, %830
  %836 = fsub fast float -0.000000e+00, %835
  %837 = call float @dx.op.unary.f32(i32 21, float %832)  ; Exp(value)
  %838 = call float @dx.op.unary.f32(i32 21, float %834)  ; Exp(value)
  %839 = call float @dx.op.unary.f32(i32 21, float %836)  ; Exp(value)
  br label %840

; <label>:840                                     ; preds = %827, %791
  %841 = phi float [ %806, %791 ], [ %837, %827 ]
  %842 = phi float [ %806, %791 ], [ %838, %827 ]
  %843 = phi float [ %806, %791 ], [ %839, %827 ]
  br i1 %442, label %844, label %940, !dx.controlflow.hints !94

; <label>:844                                     ; preds = %840
  %845 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %841)  ; FMax(a,b)
  %846 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %842)  ; FMax(a,b)
  %847 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %843)  ; FMax(a,b)
  %848 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %784)  ; FMax(a,b)
  %849 = call float @dx.op.binary.f32(i32 35, float %783, float %790)  ; FMax(a,b)
  %850 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %849)  ; FMax(a,b)
  %851 = fdiv fast float %783, %850
  %852 = call float @dx.op.unary.f32(i32 7, float %851)  ; Saturate(value)
  %853 = fdiv fast float %790, %850
  %854 = call float @dx.op.unary.f32(i32 7, float %853)  ; Saturate(value)
  %855 = fcmp fast une float %848, 1.000000e+00
  br i1 %855, label %856, label %859, !dx.controlflow.hints !95

; <label>:856                                     ; preds = %844
  %857 = call float @dx.op.unary.f32(i32 23, float %848)  ; Log(value)
  %858 = fmul fast float %857, 0x3FE62E4300000000
  br label %859

; <label>:859                                     ; preds = %856, %844
  %860 = phi float [ %858, %856 ], [ 0.000000e+00, %844 ]
  %861 = fcmp fast une float %845, 1.000000e+00
  br i1 %861, label %862, label %865, !dx.controlflow.hints !96

; <label>:862                                     ; preds = %859
  %863 = call float @dx.op.unary.f32(i32 23, float %845)  ; Log(value)
  %864 = fmul fast float %863, 0x3FE62E4300000000
  br label %865

; <label>:865                                     ; preds = %862, %859
  %866 = phi float [ %864, %862 ], [ 0.000000e+00, %859 ]
  %867 = fcmp fast une float %846, 1.000000e+00
  br i1 %867, label %868, label %871, !dx.controlflow.hints !96

; <label>:868                                     ; preds = %865
  %869 = call float @dx.op.unary.f32(i32 23, float %846)  ; Log(value)
  %870 = fmul fast float %869, 0x3FE62E4300000000
  br label %871

; <label>:871                                     ; preds = %868, %865
  %872 = phi float [ %870, %868 ], [ 0.000000e+00, %865 ]
  %873 = fcmp fast une float %847, 1.000000e+00
  br i1 %873, label %874, label %877, !dx.controlflow.hints !96

; <label>:874                                     ; preds = %871
  %875 = call float @dx.op.unary.f32(i32 23, float %847)  ; Log(value)
  %876 = fmul fast float %875, 0x3FE62E4300000000
  br label %877

; <label>:877                                     ; preds = %874, %871
  %878 = phi float [ %876, %874 ], [ 0.000000e+00, %871 ]
  %879 = fmul fast float %860, %854
  %880 = fmul fast float %866, %852
  %881 = fmul fast float %872, %852
  %882 = fmul fast float %878, %852
  %883 = fadd fast float %880, %879
  %884 = fadd fast float %881, %879
  %885 = fadd fast float %882, %879
  %886 = fcmp fast une float %883, 0.000000e+00
  br i1 %886, label %887, label %890, !dx.controlflow.hints !97

; <label>:887                                     ; preds = %877
  %888 = fmul fast float %883, 0x3FF7154760000000
  %889 = call float @dx.op.unary.f32(i32 21, float %888)  ; Exp(value)
  br label %890

; <label>:890                                     ; preds = %887, %877
  %891 = phi float [ %889, %887 ], [ 1.000000e+00, %877 ]
  %892 = fcmp fast une float %884, 0.000000e+00
  br i1 %892, label %893, label %896, !dx.controlflow.hints !97

; <label>:893                                     ; preds = %890
  %894 = fmul fast float %884, 0x3FF7154760000000
  %895 = call float @dx.op.unary.f32(i32 21, float %894)  ; Exp(value)
  br label %896

; <label>:896                                     ; preds = %893, %890
  %897 = phi float [ %895, %893 ], [ 1.000000e+00, %890 ]
  %898 = fcmp fast une float %885, 0.000000e+00
  br i1 %898, label %899, label %902, !dx.controlflow.hints !97

; <label>:899                                     ; preds = %896
  %900 = fmul fast float %885, 0x3FF7154760000000
  %901 = call float @dx.op.unary.f32(i32 21, float %900)  ; Exp(value)
  br label %902

; <label>:902                                     ; preds = %899, %896
  %903 = phi float [ %901, %899 ], [ 1.000000e+00, %896 ]
  %904 = fcmp fast ogt float %852, %854
  br i1 %904, label %905, label %912

; <label>:905                                     ; preds = %902
  %906 = fsub fast float 1.000000e+00, %854
  %907 = fmul fast float %860, %906
  %908 = fcmp fast une float %907, 0.000000e+00
  br i1 %908, label %909, label %933, !dx.controlflow.hints !98

; <label>:909                                     ; preds = %905
  %910 = fmul fast float %907, 0x3FF7154760000000
  %911 = call float @dx.op.unary.f32(i32 21, float %910)  ; Exp(value)
  br label %933

; <label>:912                                     ; preds = %902
  %913 = fsub fast float 1.000000e+00, %852
  %914 = fmul fast float %866, %913
  %915 = fmul fast float %872, %913
  %916 = fmul fast float %878, %913
  %917 = fcmp fast une float %914, 0.000000e+00
  br i1 %917, label %918, label %921, !dx.controlflow.hints !97

; <label>:918                                     ; preds = %912
  %919 = fmul fast float %914, 0x3FF7154760000000
  %920 = call float @dx.op.unary.f32(i32 21, float %919)  ; Exp(value)
  br label %921

; <label>:921                                     ; preds = %918, %912
  %922 = phi float [ %920, %918 ], [ 1.000000e+00, %912 ]
  %923 = fcmp fast une float %915, 0.000000e+00
  br i1 %923, label %924, label %927, !dx.controlflow.hints !97

; <label>:924                                     ; preds = %921
  %925 = fmul fast float %915, 0x3FF7154760000000
  %926 = call float @dx.op.unary.f32(i32 21, float %925)  ; Exp(value)
  br label %927

; <label>:927                                     ; preds = %924, %921
  %928 = phi float [ %926, %924 ], [ 1.000000e+00, %921 ]
  %929 = fcmp fast une float %916, 0.000000e+00
  br i1 %929, label %930, label %933, !dx.controlflow.hints !97

; <label>:930                                     ; preds = %927
  %931 = fmul fast float %916, 0x3FF7154760000000
  %932 = call float @dx.op.unary.f32(i32 21, float %931)  ; Exp(value)
  br label %933

; <label>:933                                     ; preds = %930, %927, %909, %905
  %934 = phi float [ %932, %930 ], [ %911, %909 ], [ 1.000000e+00, %905 ], [ 1.000000e+00, %927 ]
  %935 = phi float [ %928, %930 ], [ %911, %909 ], [ 1.000000e+00, %905 ], [ %928, %927 ]
  %936 = phi float [ %922, %930 ], [ %911, %909 ], [ 1.000000e+00, %905 ], [ %922, %927 ]
  %937 = fmul fast float %936, %891
  %938 = fmul fast float %935, %897
  %939 = fmul fast float %934, %903
  br label %940

; <label>:940                                     ; preds = %933, %840
  %941 = phi float [ %939, %933 ], [ %843, %840 ]
  %942 = phi float [ %938, %933 ], [ %842, %840 ]
  %943 = phi float [ %937, %933 ], [ %841, %840 ]
  %944 = fmul fast float %943, %403
  %945 = call float @dx.op.dot3.f32(i32 55, float %943, float %942, float %941, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %946 = select i1 %102, float %945, float %943
  %947 = select i1 %102, float %945, float %942
  %948 = select i1 %102, float 1.000000e+00, float %941
  %949 = fmul fast float %946, %400
  %950 = fmul fast float %947, %401
  %951 = fmul fast float %948, %402
  %952 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %953 = extractvalue %dx.types.CBufRet.i32 %952, 0
  %954 = icmp eq i32 %953, 0
  br i1 %954, label %1280, label %955, !dx.controlflow.hints !99

; <label>:955                                     ; preds = %940
  %956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %957 = extractvalue %dx.types.CBufRet.f32 %956, 2
  %958 = extractvalue %dx.types.CBufRet.f32 %956, 3
  %959 = fmul fast float %957, %34
  %960 = fmul fast float %958, %35
  %961 = fmul fast float %959, 2.000000e+00
  %962 = fmul fast float %960, 2.000000e+00
  %963 = fsub fast float 1.000000e+00, %961
  %964 = fsub fast float 1.000000e+00, %962
  %965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %966 = extractvalue %dx.types.CBufRet.f32 %965, 0
  %967 = extractvalue %dx.types.CBufRet.f32 %965, 1
  %968 = extractvalue %dx.types.CBufRet.f32 %965, 2
  %969 = fmul fast float %963, %966
  %970 = fmul fast float %963, %967
  %971 = fmul fast float %963, %968
  %972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %973 = extractvalue %dx.types.CBufRet.f32 %972, 0
  %974 = extractvalue %dx.types.CBufRet.f32 %972, 1
  %975 = extractvalue %dx.types.CBufRet.f32 %972, 2
  %976 = fmul fast float %964, %973
  %977 = fmul fast float %964, %974
  %978 = fmul fast float %964, %975
  %979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %980 = extractvalue %dx.types.CBufRet.f32 %979, 0
  %981 = extractvalue %dx.types.CBufRet.f32 %979, 1
  %982 = extractvalue %dx.types.CBufRet.f32 %979, 2
  %983 = fadd fast float %976, %980
  %984 = fadd fast float %983, %969
  %985 = fadd fast float %977, %981
  %986 = fadd fast float %985, %970
  %987 = fadd fast float %978, %982
  %988 = fadd fast float %987, %971
  %989 = fmul fast float %984, %399
  %990 = fmul fast float %986, %399
  %991 = fmul fast float %988, %399
  %992 = fmul fast float %989, %989
  %993 = fmul fast float %990, %990
  %994 = fadd fast float %992, %993
  %995 = fmul fast float %991, %991
  %996 = fadd fast float %994, %995
  %997 = call float @dx.op.unary.f32(i32 24, float %996)  ; Sqrt(value)
  %998 = extractvalue %dx.types.CBufRet.f32 %265, 0
  %999 = fsub fast float %997, %998
  %1000 = extractvalue %dx.types.CBufRet.f32 %265, 2
  %1001 = fmul fast float %999, %1000
  %1002 = call float @dx.op.unary.f32(i32 7, float %1001)  ; Saturate(value)
  %1003 = fadd fast float %1002, -5.000000e-01
  %1004 = fmul fast float %1003, 2.000000e+00
  %1005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1006 = extractvalue %dx.types.CBufRet.f32 %1005, 2
  %1007 = call float @dx.op.binary.f32(i32 36, float %1006, float %1004)  ; FMin(a,b)
  %1008 = fsub fast float -0.000000e+00, %1006
  %1009 = fcmp fast ogt float %1007, %1008
  br i1 %1009, label %1010, label %1280, !dx.controlflow.hints !100

; <label>:1010                                    ; preds = %955
  %1011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %1012 = extractvalue %dx.types.CBufRet.f32 %1011, 3
  %1013 = fcmp fast ogt float %1012, 0.000000e+00
  br i1 %1013, label %1014, label %1089, !dx.controlflow.hints !101

; <label>:1014                                    ; preds = %1010
  %1015 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %1016 = extractvalue %dx.types.Dimensions %1015, 0
  %1017 = sitofp i32 %1016 to float
  %1018 = extractvalue %dx.types.Dimensions %1015, 1
  %1019 = sitofp i32 %1018 to float
  %1020 = fmul fast float %959, %1017
  %1021 = fmul fast float %960, %1019
  %1022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1023 = extractvalue %dx.types.CBufRet.f32 %1022, 1
  %1024 = fsub fast float -0.000000e+00, %1023
  %1025 = fptoui float %1024 to i32
  %1026 = fptoui float %1020 to i32
  %1027 = fptoui float %1021 to i32
  %1028 = and i32 %1025, 31
  %1029 = lshr i32 %1026, %1028
  %1030 = lshr i32 %1027, %1028
  %1031 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 %1025, i32 %1029, i32 %1030, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1032 = extractvalue %dx.types.ResRet.f32 %1031, 0
  %1033 = fcmp fast olt float %1032, -1.000000e+00
  %1034 = fcmp fast ogt float %1032, -1.000000e+00
  %1035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1036 = extractvalue %dx.types.CBufRet.f32 %1035, 1
  %1037 = select i1 %1034, float %1036, float 1.000000e+00
  %1038 = fadd fast float %1032, 1.000000e+00
  %1039 = fmul fast float %1037, %1038
  %1040 = call float @dx.op.unary.f32(i32 6, float %1039)  ; FAbs(value)
  %1041 = extractvalue %dx.types.CBufRet.f32 %1035, 3
  %1042 = fcmp fast oge float %1040, %1041
  %1043 = select i1 %1042, float 0x4197782600000000, float %1040
  %1044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %1045 = extractvalue %dx.types.CBufRet.f32 %1044, 0
  %1046 = extractvalue %dx.types.CBufRet.f32 %1044, 1
  %1047 = extractvalue %dx.types.CBufRet.f32 %1044, 2
  %1048 = select i1 %1033, float %1045, float %966
  %1049 = select i1 %1033, float %1046, float %967
  %1050 = select i1 %1033, float %1047, float %968
  %1051 = fmul fast float %1048, %963
  %1052 = fmul fast float %1049, %963
  %1053 = fmul fast float %1050, %963
  %1054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %1055 = extractvalue %dx.types.CBufRet.f32 %1054, 0
  %1056 = extractvalue %dx.types.CBufRet.f32 %1054, 1
  %1057 = extractvalue %dx.types.CBufRet.f32 %1054, 2
  %1058 = select i1 %1033, float %1055, float %973
  %1059 = select i1 %1033, float %1056, float %974
  %1060 = select i1 %1033, float %1057, float %975
  %1061 = fmul fast float %1058, %964
  %1062 = fmul fast float %1059, %964
  %1063 = fmul fast float %1060, %964
  %1064 = fadd fast float %1061, %1051
  %1065 = fadd fast float %1062, %1052
  %1066 = fadd fast float %1063, %1053
  %1067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %1068 = extractvalue %dx.types.CBufRet.f32 %1067, 0
  %1069 = extractvalue %dx.types.CBufRet.f32 %1067, 1
  %1070 = extractvalue %dx.types.CBufRet.f32 %1067, 2
  %1071 = select i1 %1033, float %1068, float %980
  %1072 = select i1 %1033, float %1069, float %981
  %1073 = select i1 %1033, float %1070, float %982
  %1074 = fadd fast float %1064, %1071
  %1075 = fadd fast float %1065, %1072
  %1076 = fadd fast float %1066, %1073
  %1077 = fmul fast float %1074, %1043
  %1078 = fmul fast float %1075, %1043
  %1079 = fmul fast float %1076, %1043
  %1080 = fmul fast float %1077, %1077
  %1081 = fmul fast float %1078, %1078
  %1082 = fadd fast float %1080, %1081
  %1083 = fmul fast float %1079, %1079
  %1084 = fadd fast float %1082, %1083
  %1085 = call float @dx.op.unary.f32(i32 24, float %1084)  ; Sqrt(value)
  %1086 = fsub fast float %1085, %998
  %1087 = fmul fast float %1086, %1000
  %1088 = call float @dx.op.unary.f32(i32 7, float %1087)  ; Saturate(value)
  br label %1089

; <label>:1089                                    ; preds = %1014, %1010
  %1090 = phi float [ %1088, %1014 ], [ 1.000000e+00, %1010 ]
  %1091 = fmul fast float %1007, 5.000000e-01
  %1092 = fadd fast float %1091, 5.000000e-01
  %1093 = call float @dx.op.unary.f32(i32 22, float %1092)  ; Frc(value)
  %1094 = call float @dx.op.unary.f32(i32 27, float %1093)  ; Round_ni(value)
  %1095 = call float @dx.op.unary.f32(i32 22, float %1093)  ; Frc(value)
  %1096 = fmul fast float %1095, 2.000000e+00
  %1097 = fadd fast float %1096, -1.000000e+00
  %1098 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %16, float %959, float %960, float %1094, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1099 = extractvalue %dx.types.ResRet.f32 %1098, 0
  %1100 = extractvalue %dx.types.ResRet.f32 %1098, 1
  %1101 = extractvalue %dx.types.ResRet.f32 %1098, 2
  %1102 = extractvalue %dx.types.ResRet.f32 %1098, 3
  %1103 = fadd fast float %1099, -5.000000e-01
  %1104 = fadd fast float %1101, -5.000000e-01
  %1105 = fmul fast float %1103, 0xBFD5555560000000
  %1106 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1104, float %1105)  ; FMad(a,b,c)
  %1107 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1100, float 0.000000e+00)  ; FMad(a,b,c)
  %1108 = fadd fast float %1107, %1102
  %1109 = fmul fast float %1103, -7.500000e-01
  %1110 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1104, float %1109)  ; FMad(a,b,c)
  %1111 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1100, float 0.000000e+00)  ; FMad(a,b,c)
  %1112 = fadd fast float %1111, %1102
  %1113 = call float @dx.op.binary.f32(i32 35, float %1106, float -1.000000e+00)  ; FMax(a,b)
  %1114 = call float @dx.op.binary.f32(i32 35, float %1108, float -1.000000e+00)  ; FMax(a,b)
  %1115 = call float @dx.op.binary.f32(i32 35, float %1110, float -1.000000e+00)  ; FMax(a,b)
  %1116 = call float @dx.op.binary.f32(i32 35, float %1112, float -1.000000e+00)  ; FMax(a,b)
  %1117 = call float @dx.op.binary.f32(i32 36, float %1113, float 1.000000e+00)  ; FMin(a,b)
  %1118 = call float @dx.op.binary.f32(i32 36, float %1114, float 1.000000e+00)  ; FMin(a,b)
  %1119 = call float @dx.op.binary.f32(i32 36, float %1115, float 1.000000e+00)  ; FMin(a,b)
  %1120 = call float @dx.op.binary.f32(i32 36, float %1116, float 1.000000e+00)  ; FMin(a,b)
  %1121 = fcmp fast olt float %1117, 0x3FEFFF8020000000
  br i1 %1121, label %1122, label %1237, !dx.controlflow.hints !102

; <label>:1122                                    ; preds = %1089
  %1123 = extractvalue %dx.types.CBufRet.f32 %1005, 3
  %1124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1125 = extractvalue %dx.types.CBufRet.f32 %1124, 0
  %1126 = extractvalue %dx.types.CBufRet.f32 %1124, 1
  %1127 = extractvalue %dx.types.CBufRet.f32 %1124, 2
  %1128 = extractvalue %dx.types.CBufRet.f32 %1124, 3
  %1129 = fsub fast float %1125, %1117
  %1130 = fsub fast float %1126, %1118
  %1131 = fsub fast float %1127, %1119
  %1132 = fsub fast float %1128, %1120
  %1133 = fmul fast float %1129, %1123
  %1134 = fmul fast float %1130, %1123
  %1135 = fmul fast float %1131, %1123
  %1136 = fmul fast float %1132, %1123
  %1137 = fadd fast float %1133, %1117
  %1138 = fadd fast float %1134, %1118
  %1139 = fsub fast float -0.000000e+00, %1138
  %1140 = fadd fast float %1135, %1119
  %1141 = fadd fast float %1136, %1120
  %1142 = fmul fast float %1137, %1137
  %1143 = fsub fast float %1138, %1142
  %1144 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1143)  ; FMax(a,b)
  %1145 = fdiv fast float 1.000000e+00, %1144
  %1146 = fmul fast float %1138, %1137
  %1147 = fsub fast float %1140, %1146
  %1148 = fsub fast float %1097, %1137
  %1149 = fmul fast float %1097, %1097
  %1150 = fsub fast float %1149, %1138
  %1151 = fmul fast float %1148, %1145
  %1152 = fmul fast float %1151, %1147
  %1153 = fsub fast float %1150, %1152
  %1154 = fmul fast float %1138, %1138
  %1155 = fsub fast float %1141, %1154
  %1156 = fmul fast float %1147, %1147
  %1157 = fmul fast float %1156, %1145
  %1158 = fsub fast float %1155, %1157
  %1159 = fdiv fast float %1153, %1158
  %1160 = fmul fast float %1147, %1159
  %1161 = fsub fast float %1148, %1160
  %1162 = fmul fast float %1161, %1145
  %1163 = fmul fast float %1162, %1137
  %1164 = fsub fast float 1.000000e+00, %1163
  %1165 = fmul fast float %1138, %1159
  %1166 = fsub fast float %1164, %1165
  %1167 = fmul fast float %1162, %1162
  %1168 = fmul fast float %1159, 4.000000e+00
  %1169 = fmul fast float %1168, %1166
  %1170 = fsub fast float %1167, %1169
  %1171 = call float @dx.op.unary.f32(i32 24, float %1170)  ; Sqrt(value)
  %1172 = fcmp fast oge float %1162, 0.000000e+00
  %1173 = fsub fast float -0.000000e+00, %1171
  %1174 = select i1 %1172, float %1173, float %1171
  %1175 = fsub fast float %1174, %1162
  %1176 = fdiv fast float %1175, %1159
  %1177 = fdiv fast float %1166, %1175
  %1178 = fmul fast float %1176, 5.000000e-01
  %1179 = fmul fast float %1177, 2.000000e+00
  %1180 = select i1 %1172, float %1178, float %1179
  %1181 = select i1 %1172, float %1179, float %1178
  %1182 = call float @dx.op.binary.f32(i32 35, float %1180, float %1181)  ; FMax(a,b)
  %1183 = call float @dx.op.binary.f32(i32 36, float %1180, float %1181)  ; FMin(a,b)
  %1184 = fcmp fast ogt float %1097, %1183
  br i1 %1184, label %1185, label %1195

; <label>:1185                                    ; preds = %1122
  %1186 = fsub fast float %1097, %1183
  %1187 = fsub fast float %1182, %1183
  %1188 = fmul fast float %1186, %1187
  %1189 = fmul fast float %1182, %1097
  %1190 = fadd fast float %1182, %1097
  %1191 = fmul fast float %1190, %1137
  %1192 = fadd fast float %1189, %1138
  %1193 = fsub fast float %1192, %1191
  %1194 = fdiv fast float %1193, %1188
  br label %1195

; <label>:1195                                    ; preds = %1185, %1122
  %1196 = phi float [ %1194, %1185 ], [ 0.000000e+00, %1122 ]
  %1197 = fcmp fast ogt float %1097, %1182
  %1198 = fsub fast float %1097, %1182
  br i1 %1197, label %1199, label %1209

; <label>:1199                                    ; preds = %1195
  %1200 = fsub fast float %1182, %1183
  %1201 = fmul fast float %1200, %1198
  %1202 = fmul fast float %1183, %1097
  %1203 = fadd fast float %1183, %1097
  %1204 = fmul fast float %1203, %1137
  %1205 = fsub fast float %1139, %1202
  %1206 = fadd fast float %1205, %1204
  %1207 = fdiv fast float %1206, %1201
  %1208 = fadd fast float %1207, %1196
  br label %1209

; <label>:1209                                    ; preds = %1199, %1195
  %1210 = phi float [ %1208, %1199 ], [ %1196, %1195 ]
  %1211 = fsub fast float %1097, %1183
  %1212 = fmul fast float %1211, %1198
  %1213 = fmul fast float %1183, %1182
  %1214 = fadd fast float %1183, %1182
  %1215 = fmul fast float %1214, %1137
  %1216 = fadd fast float %1213, %1138
  %1217 = fsub fast float %1216, %1215
  %1218 = fdiv fast float %1217, %1212
  %1219 = call float @dx.op.unary.f32(i32 7, float %1210)  ; Saturate(value)
  %1220 = fcmp fast oeq float %266, 0.000000e+00
  %1221 = extractvalue %dx.types.CBufRet.f32 %1005, 0
  %1222 = fcmp fast oeq float %1221, 0.000000e+00
  %1223 = or i1 %1220, %1222
  %1224 = fmul fast float %1221, 2.000000e+00
  %1225 = fadd fast float %1006, %1007
  %1226 = fdiv fast float %1225, %1224
  %1227 = call float @dx.op.unary.f32(i32 7, float %1226)  ; Saturate(value)
  %1228 = fmul fast float %1227, 2.000000e+00
  %1229 = fsub fast float 3.000000e+00, %1228
  %1230 = fmul fast float %1227, %1227
  %1231 = fmul fast float %1230, %1229
  %1232 = select i1 %1223, float 1.000000e+00, float %1231
  %1233 = fmul fast float %1218, %266
  %1234 = fadd fast float %1219, %1233
  %1235 = call float @dx.op.unary.f32(i32 7, float %1234)  ; Saturate(value)
  %1236 = fmul fast float %1232, %1235
  br label %1237

; <label>:1237                                    ; preds = %1209, %1089
  %1238 = phi float [ %1236, %1209 ], [ 0.000000e+00, %1089 ]
  %1239 = fsub fast float 1.000000e+00, %1238
  %1240 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %16, float %959, float %960, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1241 = extractvalue %dx.types.ResRet.f32 %1240, 0
  %1242 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1243 = extractvalue %dx.types.CBufRet.i32 %1242, 2
  %1244 = icmp eq i32 %1243, 0
  br i1 %1244, label %1250, label %1245

; <label>:1245                                    ; preds = %1237
  %1246 = call float @dx.op.unary.f32(i32 7, float %1238)  ; Saturate(value)
  %1247 = fadd fast float %1241, -1.000000e+00
  %1248 = fmul fast float %1246, %1247
  %1249 = fadd fast float %1248, 1.000000e+00
  br label %1250

; <label>:1250                                    ; preds = %1245, %1237
  %1251 = phi float [ %1249, %1245 ], [ %1239, %1237 ]
  br i1 %1013, label %1252, label %1270

; <label>:1252                                    ; preds = %1250
  %1253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1254 = extractvalue %dx.types.CBufRet.f32 %1253, 1
  %1255 = fsub fast float %1090, %1254
  %1256 = call float @dx.op.unary.f32(i32 7, float %1255)  ; Saturate(value)
  %1257 = fsub fast float %1090, %1012
  %1258 = call float @dx.op.unary.f32(i32 7, float %1257)  ; Saturate(value)
  %1259 = fsub fast float %1256, %1258
  %1260 = fsub fast float %1092, %1258
  %1261 = fdiv fast float %1260, %1259
  %1262 = call float @dx.op.unary.f32(i32 7, float %1261)  ; Saturate(value)
  %1263 = fmul fast float %1262, 2.000000e+00
  %1264 = fsub fast float 3.000000e+00, %1263
  %1265 = fsub fast float %1241, %1251
  %1266 = fmul fast float %1262, %1262
  %1267 = fmul fast float %1266, %1265
  %1268 = fmul fast float %1267, %1264
  %1269 = fadd fast float %1268, %1251
  br label %1270

; <label>:1270                                    ; preds = %1252, %1250
  %1271 = phi float [ %1269, %1252 ], [ %1251, %1250 ]
  %1272 = call float @dx.op.binary.f32(i32 35, float %1241, float %1271)  ; FMax(a,b)
  %1273 = fmul fast float %1272, %944
  %1274 = call float @dx.op.dot3.f32(i32 55, float %1272, float %1272, float %1272, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1275 = select i1 %102, float %1274, float %1272
  %1276 = select i1 %102, float 1.000000e+00, float %1272
  %1277 = fmul fast float %1275, %949
  %1278 = fmul fast float %1275, %950
  %1279 = fmul fast float %1276, %951
  br label %1280

; <label>:1280                                    ; preds = %1270, %955, %940, %395
  %1281 = phi float [ %400, %395 ], [ %949, %940 ], [ %1277, %1270 ], [ %949, %955 ]
  %1282 = phi float [ %401, %395 ], [ %950, %940 ], [ %1278, %1270 ], [ %950, %955 ]
  %1283 = phi float [ %402, %395 ], [ %951, %940 ], [ %1279, %1270 ], [ %951, %955 ]
  %1284 = phi float [ %403, %395 ], [ %944, %940 ], [ %1273, %1270 ], [ %944, %955 ]
  %1285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1286 = extractvalue %dx.types.CBufRet.f32 %1285, 2
  %1287 = extractvalue %dx.types.CBufRet.f32 %1285, 3
  %1288 = fmul fast float %1286, %34
  %1289 = fmul fast float %1287, %35
  %1290 = call float @dx.op.unary.f32(i32 7, float %1288)  ; Saturate(value)
  %1291 = call float @dx.op.unary.f32(i32 7, float %1289)  ; Saturate(value)
  %1292 = select i1 %277, i32 2, i32 0
  %1293 = or i32 %1292, 1
  %1294 = uitofp i32 %1293 to float
  %1295 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %16, float %1290, float %1291, float %1294, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1296 = extractvalue %dx.types.ResRet.f32 %1295, 0
  %1297 = extractvalue %dx.types.ResRet.f32 %1295, 1
  %1298 = extractvalue %dx.types.ResRet.f32 %1295, 2
  %1299 = extractvalue %dx.types.ResRet.f32 %1295, 3
  %1300 = add nuw nsw i32 %1292, 2
  %1301 = uitofp i32 %1300 to float
  %1302 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %16, float %1290, float %1291, float %1301, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1303 = extractvalue %dx.types.ResRet.f32 %1302, 0
  %1304 = extractvalue %dx.types.ResRet.f32 %1302, 1
  %1305 = extractvalue %dx.types.ResRet.f32 %1302, 2
  %1306 = extractvalue %dx.types.ResRet.f32 %1302, 3
  %1307 = call float @dx.op.binary.f32(i32 35, float %1297, float %1298)  ; FMax(a,b)
  %1308 = call float @dx.op.binary.f32(i32 35, float %1296, float %1307)  ; FMax(a,b)
  %1309 = call float @dx.op.binary.f32(i32 35, float %1308, float %1299)  ; FMax(a,b)
  %1310 = call float @dx.op.binary.f32(i32 36, float %1304, float %1305)  ; FMin(a,b)
  %1311 = call float @dx.op.binary.f32(i32 36, float %1303, float %1310)  ; FMin(a,b)
  %1312 = call float @dx.op.binary.f32(i32 36, float %1311, float %1306)  ; FMin(a,b)
  %1313 = fmul fast float %1309, 2.550000e+02
  %1314 = fadd fast float %1313, 0x3F70101020000000
  %1315 = fptoui float %1314 to i32
  %1316 = fmul fast float %1312, 2.550000e+02
  %1317 = fadd fast float %1316, 0x3F70101020000000
  %1318 = fptoui float %1317 to i32
  %1319 = icmp ult i32 %1315, %1318
  br i1 %1319, label %1320, label %1363

; <label>:1320                                    ; preds = %1280
  %1321 = fcmp fast ogt float %27, 9.843750e-01
  %1322 = fadd fast float %399, -4.000000e+00
  %1323 = select i1 %1321, float -4.000000e+00, float %1322
  %1324 = call float @dx.op.binary.f32(i32 35, float %1323, float 0.000000e+00)  ; FMax(a,b)
  %1325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1326 = extractvalue %dx.types.CBufRet.f32 %1325, 0
  %1327 = fadd fast float %1326, %1324
  %1328 = extractvalue %dx.types.CBufRet.f32 %1325, 2
  %1329 = fmul fast float %1327, %1328
  %1330 = call float @dx.op.unary.f32(i32 23, float %1329)  ; Log(value)
  %1331 = extractvalue %dx.types.CBufRet.f32 %1325, 3
  %1332 = fmul fast float %1331, %1330
  %1333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1334 = extractvalue %dx.types.CBufRet.f32 %1333, 2
  %1335 = fmul fast float %1332, %1334
  %1336 = call float @dx.op.unary.f32(i32 7, float %1335)  ; Saturate(value)
  %1337 = uitofp i32 %1315 to float
  %1338 = uitofp i32 %1318 to float
  %1339 = fadd fast float %1337, 5.000000e-01
  %1340 = fadd fast float %1338, 5.000000e-01
  %1341 = fmul fast float %1334, %1339
  %1342 = fmul fast float %1334, %1340
  %1343 = fadd fast float %1341, 0x3F0FFB4800000000
  %1344 = fadd fast float %1342, 0xBF0FFB4800000000
  %1345 = call float @dx.op.binary.f32(i32 35, float %1336, float %1343)  ; FMax(a,b)
  %1346 = call float @dx.op.binary.f32(i32 36, float %1345, float %1344)  ; FMin(a,b)
  %1347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1348 = extractvalue %dx.types.CBufRet.f32 %1347, 1
  %1349 = extractvalue %dx.types.CBufRet.f32 %1347, 2
  %1350 = extractvalue %dx.types.CBufRet.f32 %1347, 0
  %1351 = select i1 %277, float %1350, float 0.000000e+00
  %1352 = fmul fast float %1348, %1346
  %1353 = fadd fast float %1351, %1352
  %1354 = fadd fast float %1351, %1349
  %1355 = fsub fast float %1348, %1349
  %1356 = fadd fast float %1355, %1351
  %1357 = call float @dx.op.binary.f32(i32 35, float %1353, float %1354)  ; FMax(a,b)
  %1358 = call float @dx.op.binary.f32(i32 36, float %1357, float %1356)  ; FMin(a,b)
  %1359 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %15, float %1290, float %1291, float %1358, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1360 = extractvalue %dx.types.ResRet.f32 %1359, 0
  %1361 = extractvalue %dx.types.ResRet.f32 %1359, 1
  %1362 = extractvalue %dx.types.ResRet.f32 %1359, 2
  br label %1363

; <label>:1363                                    ; preds = %1320, %1280
  %1364 = phi float [ %1360, %1320 ], [ 1.000000e+00, %1280 ]
  %1365 = phi float [ %1361, %1320 ], [ 1.000000e+00, %1280 ]
  %1366 = phi float [ %1362, %1320 ], [ 1.000000e+00, %1280 ]
  %1367 = fmul fast float %1364, %1284
  %1368 = call float @dx.op.dot3.f32(i32 55, float %1364, float %1365, float %1366, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1369 = select i1 %102, float %1368, float %1364
  %1370 = select i1 %102, float %1368, float %1365
  %1371 = select i1 %102, float 1.000000e+00, float %1366
  %1372 = fmul fast float %1369, %1281
  %1373 = fmul fast float %1370, %1282
  %1374 = fmul fast float %1371, %1283
  %1375 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1376 = extractvalue %dx.types.CBufRet.i32 %1375, 3
  %1377 = and i32 %1376, 3
  %1378 = icmp ne i32 %1377, 0
  %1379 = and i32 %1376, 4
  %1380 = icmp ne i32 %1379, 0
  %1381 = and i1 %1378, %1380
  %1382 = and i1 %102, %1381
  br i1 %1382, label %1383, label %1389

; <label>:1383                                    ; preds = %1363
  %1384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1385 = extractvalue %dx.types.CBufRet.f32 %1384, 1
  %1386 = fadd fast float %1367, -1.000000e+00
  %1387 = fmul fast float %1385, %1386
  %1388 = fadd fast float %1387, 1.000000e+00
  br label %1389

; <label>:1389                                    ; preds = %1383, %1363
  %1390 = phi float [ %1388, %1383 ], [ %1367, %1363 ]
  %1391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1392 = extractvalue %dx.types.CBufRet.f32 %1391, 0
  br i1 %102, label %1393, label %1412

; <label>:1393                                    ; preds = %1389
  %1394 = fadd fast float %1372, %1373
  %1395 = fmul fast float %1392, %1394
  %1396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1397 = extractvalue %dx.types.CBufRet.f32 %1396, 3
  %1398 = extractvalue %dx.types.CBufRet.f32 %261, 1
  %1399 = fsub fast float %264, %1398
  %1400 = extractvalue %dx.types.CBufRet.f32 %261, 2
  %1401 = fmul fast float %1399, %1400
  %1402 = call float @dx.op.unary.f32(i32 7, float %1401)  ; Saturate(value)
  %1403 = fsub fast float %1402, %1397
  %1404 = fmul fast float %1403, %1390
  %1405 = fadd fast float %1404, %1397
  %1406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1407 = extractvalue %dx.types.CBufRet.f32 %1406, 0
  %1408 = fsub fast float %1405, %1407
  %1409 = fmul fast float %1408, 1.000000e+01
  %1410 = call float @dx.op.unary.f32(i32 7, float %1409)  ; Saturate(value)
  %1411 = fmul fast float %1405, %1410
  br label %1421

; <label>:1412                                    ; preds = %1389
  %1413 = fmul fast float %1392, %1372
  %1414 = fmul fast float %1392, %1373
  %1415 = fmul fast float %1374, %1392
  %1416 = call float @dx.op.binary.f32(i32 35, float %1414, float %1415)  ; FMax(a,b)
  %1417 = call float @dx.op.binary.f32(i32 35, float %1413, float %1416)  ; FMax(a,b)
  %1418 = call float @dx.op.binary.f32(i32 35, float %1417, float 0.000000e+00)  ; FMax(a,b)
  %1419 = fcmp fast ugt float %1418, 0x3F10000000000000
  br i1 %1419, label %1421, label %1420

; <label>:1420                                    ; preds = %1412
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1421

; <label>:1421                                    ; preds = %1420, %1412, %1393
  %1422 = phi float [ %1395, %1393 ], [ %1413, %1420 ], [ %1413, %1412 ]
  %1423 = phi float [ %1411, %1393 ], [ %1414, %1420 ], [ %1414, %1412 ]
  %1424 = phi float [ %1410, %1393 ], [ %1415, %1420 ], [ %1415, %1412 ]
  %1425 = phi float [ %1410, %1393 ], [ 0.000000e+00, %1420 ], [ 0.000000e+00, %1412 ]
  %1426 = fadd fast float %189, 0x3FE3C6EF40000000
  %1427 = call float @dx.op.unary.f32(i32 22, float %1426)  ; Frc(value)
  %1428 = call float @dx.op.unary.f32(i32 23, float %1422)  ; Log(value)
  %1429 = fadd fast float %1428, -7.000000e+00
  %1430 = call float @dx.op.unary.f32(i32 21, float %1429)  ; Exp(value)
  %1431 = fmul fast float %1427, 2.000000e+00
  %1432 = fadd fast float %1431, -1.000000e+00
  %1433 = fmul fast float %1430, %1432
  %1434 = fcmp fast ogt float %1422, 0.000000e+00
  %1435 = select i1 %1434, float %1433, float 0.000000e+00
  %1436 = fadd fast float %1435, %1422
  %1437 = fadd fast float %189, 0x3FF3C6EF40000000
  %1438 = call float @dx.op.unary.f32(i32 22, float %1437)  ; Frc(value)
  %1439 = call float @dx.op.unary.f32(i32 23, float %1423)  ; Log(value)
  %1440 = fadd fast float %1439, -7.000000e+00
  %1441 = call float @dx.op.unary.f32(i32 21, float %1440)  ; Exp(value)
  %1442 = fmul fast float %1438, 2.000000e+00
  %1443 = fadd fast float %1442, -1.000000e+00
  %1444 = fmul fast float %1441, %1443
  %1445 = fcmp fast ogt float %1423, 0.000000e+00
  %1446 = select i1 %1445, float %1444, float 0.000000e+00
  %1447 = fadd fast float %1446, %1423
  %1448 = fadd fast float %189, 0x3FFDAA66E0000000
  %1449 = call float @dx.op.unary.f32(i32 22, float %1448)  ; Frc(value)
  %1450 = call float @dx.op.unary.f32(i32 23, float %1424)  ; Log(value)
  %1451 = fadd fast float %1450, -6.000000e+00
  %1452 = call float @dx.op.unary.f32(i32 21, float %1451)  ; Exp(value)
  %1453 = fmul fast float %1449, 2.000000e+00
  %1454 = fadd fast float %1453, -1.000000e+00
  %1455 = fmul fast float %1452, %1454
  %1456 = fcmp fast ogt float %1424, 0.000000e+00
  %1457 = select i1 %1456, float %1455, float 0.000000e+00
  %1458 = fadd fast float %1457, %1424
  %1459 = select i1 %102, float %1423, float %1447
  %1460 = select i1 %102, float %1424, float %1458
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1461 = call float @dx.op.binary.f32(i32 36, float %1436, float 3.225500e+04)  ; FMin(a,b)
  %1462 = call float @dx.op.binary.f32(i32 36, float %1459, float 3.225500e+04)  ; FMin(a,b)
  %1463 = call float @dx.op.binary.f32(i32 36, float %1460, float 3.225500e+04)  ; FMin(a,b)
  %1464 = call float @dx.op.binary.f32(i32 36, float %1425, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1461)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1462)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1463)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1464)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1425)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1425)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1425)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1425)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!32 = !{[22 x i32] [i32 20, i32 8, i32 255, i32 255, i32 255, i32 255, i32 7, i32 0, i32 0, i32 0, i32 255, i32 255, i32 0, i32 0, i32 255, i32 0, i32 0, i32 0, i32 255, i32 0, i32 0, i32 0]}
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

