;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy  
; TEXCOORD                 0   xy          1     NONE   float   xy  
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
; SV_Target                1   x           1   TARGET   float   x   
;
; shader hash: a804139ea51b6af8b9d7088feb784467
;
; Pipeline Runtime Information: 
;
; Pixel Shader
; DepthOutput=0
; SampleFrequency=0
;
;
; Input signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Position              0          noperspective       
; TEXCOORD                 0                 linear       
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
;   [224 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [64 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb1     1
;                                   cbuffer      NA          NA     CB2            cb4     1
;                                   sampler      NA          NA      S0             s1     1
;                                   sampler      NA          NA      S1             s2     1
;                                   texture     f32          2d      T0             t0     1
;                                   texture     f32          2d      T1             t1     1
;                                   texture     f32          3d      T2     t74,space2     1
;                                   texture     f32          2d      T3             t2     1
;                                   texture     f32          2d      T4             t3     1
;                                   texture     f32          2d      T5     t69,space2     1
;                                   texture     f32          2d      T6             t4     1
;                                   texture     f32          2d      T7             t5     1
;                                   texture    byte         r/o      T8     t15,space1     1
;
;
; ViewId state:
;
; Number of inputs: 6, outputs: 5
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 4, 5 }
;   output 1 depends on inputs: { 0, 1, 4, 5 }
;   output 2 depends on inputs: { 0, 1, 4, 5 }
;   output 4 depends on inputs: { 0, 1, 4, 5 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%perObject = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%tonemapping = type { i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.SamplerState = type { i32 }

@Gx.v.v = internal unnamed_addr constant [9 x float] [float -1.000000e+00, float -2.000000e+00, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 2.000000e+00, float 1.000000e+00]
@Gy.v.v = internal unnamed_addr constant [9 x float] [float -1.000000e+00, float 0.000000e+00, float 1.000000e+00, float -2.000000e+00, float 0.000000e+00, float 2.000000e+00, float -1.000000e+00, float 0.000000e+00, float 1.000000e+00]

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 74, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = alloca [3 x i32], align 4
  %20 = alloca [3 x i32], align 4
  %21 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %22 = extractvalue %dx.types.CBufRet.f32 %21, 0
  %23 = extractvalue %dx.types.CBufRet.f32 %21, 1
  %24 = extractvalue %dx.types.CBufRet.f32 %21, 2
  %25 = extractvalue %dx.types.CBufRet.f32 %21, 3
  %26 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %27 = extractvalue %dx.types.CBufRet.f32 %26, 0
  %28 = extractvalue %dx.types.CBufRet.f32 %26, 1
  %29 = extractvalue %dx.types.CBufRet.f32 %26, 2
  %30 = extractvalue %dx.types.CBufRet.f32 %26, 3
  %31 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %32 = extractvalue %dx.types.CBufRet.f32 %31, 0
  %33 = extractvalue %dx.types.CBufRet.f32 %31, 1
  %34 = extractvalue %dx.types.CBufRet.f32 %31, 2
  %35 = extractvalue %dx.types.CBufRet.f32 %31, 3
  %36 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %37 = extractvalue %dx.types.CBufRet.f32 %36, 0
  %38 = extractvalue %dx.types.CBufRet.f32 %36, 1
  %39 = fcmp fast une float %32, 0.000000e+00
  %40 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %10, float %15, float %16, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %41 = extractvalue %dx.types.ResRet.f32 %40, 0
  %42 = extractvalue %dx.types.ResRet.f32 %40, 1
  %43 = extractvalue %dx.types.ResRet.f32 %40, 2
  %44 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %10, float %15, float %16, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %45 = extractvalue %dx.types.ResRet.f32 %44, 0
  %46 = extractvalue %dx.types.ResRet.f32 %44, 1
  %47 = call float @dx.op.binary.f32(i32 35, float %45, float 0.000000e+00)  ; FMax(a,b)
  %48 = call float @dx.op.binary.f32(i32 35, float %46, float 0.000000e+00)  ; FMax(a,b)
  %49 = call float @dx.op.binary.f32(i32 36, float %47, float 3.225500e+04)  ; FMin(a,b)
  %50 = call float @dx.op.binary.f32(i32 36, float %48, float 3.225500e+04)  ; FMin(a,b)
  %51 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.i32 %51, 1
  %53 = and i32 %52, 4
  %54 = icmp eq i32 %53, 0
  %55 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %56 = extractvalue %dx.types.CBufRet.f32 %55, 0
  %57 = extractvalue %dx.types.CBufRet.f32 %55, 1
  %58 = fsub fast float %56, %17
  %59 = fsub fast float %57, %18
  %60 = call float @dx.op.unary.f32(i32 6, float %58)  ; FAbs(value)
  %61 = call float @dx.op.unary.f32(i32 6, float %59)  ; FAbs(value)
  %62 = extractvalue %dx.types.CBufRet.f32 %55, 2
  %63 = extractvalue %dx.types.CBufRet.f32 %55, 3
  %64 = fsub fast float %60, %62
  %65 = fsub fast float %61, %63
  %66 = fcmp fast ogt float %64, 0.000000e+00
  %67 = fcmp fast ogt float %65, 0.000000e+00
  %68 = or i1 %66, %67
  %69 = or i1 %54, %68
  %70 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %71 = extractvalue %dx.types.CBufRet.i32 %70, 3
  %72 = and i32 %71, 3
  %73 = icmp ne i32 %72, 0
  %74 = and i32 %71, 4
  %75 = icmp ne i32 %74, 0
  %76 = and i1 %73, %75
  br i1 %76, label %77, label %84

; <label>:77                                      ; preds = %0
  %78 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %10, float %15, float %16, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %79 = extractvalue %dx.types.ResRet.f32 %78, 0
  %80 = fsub fast float 1.000000e+00, %79
  %81 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %82 = extractvalue %dx.types.CBufRet.f32 %81, 0
  %83 = fcmp fast olt float %80, %82
  br label %87

; <label>:84                                      ; preds = %0
  %85 = icmp eq i32 %74, 0
  %86 = and i1 %73, %85
  br label %87

; <label>:87                                      ; preds = %84, %77
  %88 = phi i1 [ %83, %77 ], [ %86, %84 ]
  %89 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.f32 %89, 0
  %91 = fcmp fast oge float %42, %90
  %92 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.i32 %92, 3
  %94 = and i32 %93, 3
  %95 = icmp ne i32 %94, 0
  %96 = and i32 %93, 4
  %97 = icmp eq i32 %96, 0
  %98 = and i1 %95, %97
  %99 = and i1 %91, %98
  br i1 %98, label %100, label %137

; <label>:100                                     ; preds = %87
  br i1 %69, label %101, label %111, !dx.controlflow.hints !38

; <label>:101                                     ; preds = %100
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 1
  %104 = fmul fast float %103, %41
  %105 = fmul fast float %103, %42
  %106 = extractvalue %dx.types.CBufRet.f32 %102, 0
  %107 = fmul fast float %106, %49
  %108 = fmul fast float %106, %50
  %109 = fadd fast float %107, %104
  %110 = fadd fast float %108, %105
  br label %111

; <label>:111                                     ; preds = %101, %100
  %112 = phi float [ %109, %101 ], [ %41, %100 ]
  %113 = phi float [ %110, %101 ], [ %42, %100 ]
  br i1 %99, label %114, label %137

; <label>:114                                     ; preds = %111
  %115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.f32 %115, 3
  %117 = call float @dx.op.unary.f32(i32 7, float %113)  ; Saturate(value)
  %118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 238)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = extractvalue %dx.types.CBufRet.f32 %118, 0
  %120 = extractvalue %dx.types.CBufRet.f32 %118, 1
  %121 = extractvalue %dx.types.CBufRet.f32 %118, 2
  %122 = extractvalue %dx.types.CBufRet.f32 %115, 0
  %123 = extractvalue %dx.types.CBufRet.f32 %115, 1
  %124 = extractvalue %dx.types.CBufRet.f32 %115, 2
  %125 = fsub fast float %119, %122
  %126 = fsub fast float %120, %123
  %127 = fsub fast float %121, %124
  %128 = fmul fast float %125, %117
  %129 = fmul fast float %126, %117
  %130 = fmul fast float %127, %117
  %131 = fadd fast float %128, %122
  %132 = fadd fast float %129, %123
  %133 = fadd fast float %130, %124
  %134 = fmul fast float %131, %116
  %135 = fmul fast float %132, %116
  %136 = fmul fast float %133, %116
  br label %137

; <label>:137                                     ; preds = %114, %111, %87
  %138 = phi float [ %134, %114 ], [ %41, %87 ], [ %112, %111 ]
  %139 = phi float [ %135, %114 ], [ %42, %87 ], [ %112, %111 ]
  %140 = phi float [ %136, %114 ], [ %43, %87 ], [ %112, %111 ]
  br i1 %39, label %141, label %511

; <label>:141                                     ; preds = %137
  br i1 %99, label %142, label %330

; <label>:142                                     ; preds = %141
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 219)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 0
  %145 = bitcast float %144 to i32
  %146 = icmp eq i32 %145, 3
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %149 = fsub fast float 1.000000e+00, %148
  br i1 %146, label %150, label %226

; <label>:150                                     ; preds = %142
  %151 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %152 = fmul fast float %151, 0x3FDAAAAAA0000000
  %153 = call float @dx.op.unary.f32(i32 21, float %152)  ; Exp(value)
  %154 = fsub fast float 1.000000e+00, %153
  %155 = call float @dx.op.unary.f32(i32 23, float %154)  ; Log(value)
  %156 = fmul fast float %155, 0x4003333340000000
  %157 = call float @dx.op.unary.f32(i32 21, float %156)  ; Exp(value)
  %158 = fdiv fast float %153, %154
  %159 = fadd fast float %158, %138
  %160 = fadd fast float %158, %139
  %161 = fadd fast float %158, %140
  %162 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %159)  ; FMax(a,b)
  %163 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %160)  ; FMax(a,b)
  %164 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %161)  ; FMax(a,b)
  %165 = call float @dx.op.unary.f32(i32 23, float %162)  ; Log(value)
  %166 = call float @dx.op.unary.f32(i32 23, float %163)  ; Log(value)
  %167 = call float @dx.op.unary.f32(i32 23, float %164)  ; Log(value)
  %168 = fmul fast float %165, 0x4003333340000000
  %169 = fmul fast float %166, 0x4003333340000000
  %170 = fmul fast float %167, 0x4003333340000000
  %171 = call float @dx.op.unary.f32(i32 21, float %168)  ; Exp(value)
  %172 = call float @dx.op.unary.f32(i32 21, float %169)  ; Exp(value)
  %173 = call float @dx.op.unary.f32(i32 21, float %170)  ; Exp(value)
  %174 = fmul fast float %171, %157
  %175 = fmul fast float %172, %157
  %176 = fmul fast float %173, %157
  %177 = extractvalue %dx.types.CBufRet.f32 %143, 1
  %178 = fmul fast float %174, %177
  %179 = fmul fast float %175, %177
  %180 = fmul fast float %176, %177
  %181 = fmul fast float %178, 0x3FE413A920000000
  %182 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %179, float %181)  ; FMad(a,b,c)
  %183 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %180, float %182)  ; FMad(a,b,c)
  %184 = fmul fast float %178, 0x3FB1B089A0000000
  %185 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %179, float %184)  ; FMad(a,b,c)
  %186 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %180, float %185)  ; FMad(a,b,c)
  %187 = fmul fast float %178, 0x3F90CB2960000000
  %188 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %179, float %187)  ; FMad(a,b,c)
  %189 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %180, float %188)  ; FMad(a,b,c)
  %190 = fmul fast float %183, 0x3F1A36E2E0000000
  %191 = fmul fast float %186, 0x3F1A36E2E0000000
  %192 = fmul fast float %189, 0x3F1A36E2E0000000
  %193 = call float @dx.op.unary.f32(i32 23, float %190)  ; Log(value)
  %194 = call float @dx.op.unary.f32(i32 23, float %191)  ; Log(value)
  %195 = call float @dx.op.unary.f32(i32 23, float %192)  ; Log(value)
  %196 = fmul fast float %193, 0x3FC4640000000000
  %197 = fmul fast float %194, 0x3FC4640000000000
  %198 = fmul fast float %195, 0x3FC4640000000000
  %199 = call float @dx.op.unary.f32(i32 21, float %196)  ; Exp(value)
  %200 = call float @dx.op.unary.f32(i32 21, float %197)  ; Exp(value)
  %201 = call float @dx.op.unary.f32(i32 21, float %198)  ; Exp(value)
  %202 = fmul fast float %199, 0x4032DA0000000000
  %203 = fmul fast float %200, 0x4032DA0000000000
  %204 = fmul fast float %201, 0x4032DA0000000000
  %205 = fadd fast float %202, 8.359375e-01
  %206 = fadd fast float %203, 8.359375e-01
  %207 = fadd fast float %204, 8.359375e-01
  %208 = fmul fast float %199, 1.868750e+01
  %209 = fmul fast float %200, 1.868750e+01
  %210 = fmul fast float %201, 1.868750e+01
  %211 = fadd fast float %208, 1.000000e+00
  %212 = fadd fast float %209, 1.000000e+00
  %213 = fadd fast float %210, 1.000000e+00
  %214 = fdiv fast float %205, %211
  %215 = fdiv fast float %206, %212
  %216 = fdiv fast float %207, %213
  %217 = call float @dx.op.unary.f32(i32 23, float %214)  ; Log(value)
  %218 = call float @dx.op.unary.f32(i32 23, float %215)  ; Log(value)
  %219 = call float @dx.op.unary.f32(i32 23, float %216)  ; Log(value)
  %220 = fmul fast float %217, 7.884375e+01
  %221 = fmul fast float %218, 7.884375e+01
  %222 = fmul fast float %219, 7.884375e+01
  %223 = call float @dx.op.unary.f32(i32 21, float %220)  ; Exp(value)
  %224 = call float @dx.op.unary.f32(i32 21, float %221)  ; Exp(value)
  %225 = call float @dx.op.unary.f32(i32 21, float %222)  ; Exp(value)
  br label %317

; <label>:226                                     ; preds = %142
  %227 = icmp eq i32 %145, 4
  br i1 %227, label %228, label %317

; <label>:228                                     ; preds = %226
  %229 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %230 = fmul fast float %229, 0x3FDAAAAAA0000000
  %231 = call float @dx.op.unary.f32(i32 21, float %230)  ; Exp(value)
  %232 = fsub fast float 1.000000e+00, %231
  %233 = call float @dx.op.unary.f32(i32 23, float %232)  ; Log(value)
  %234 = fmul fast float %233, 0x4003333340000000
  %235 = call float @dx.op.unary.f32(i32 21, float %234)  ; Exp(value)
  %236 = fdiv fast float %231, %232
  %237 = fadd fast float %236, %138
  %238 = fadd fast float %236, %139
  %239 = fadd fast float %236, %140
  %240 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %237)  ; FMax(a,b)
  %241 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %238)  ; FMax(a,b)
  %242 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %239)  ; FMax(a,b)
  %243 = call float @dx.op.unary.f32(i32 23, float %240)  ; Log(value)
  %244 = call float @dx.op.unary.f32(i32 23, float %241)  ; Log(value)
  %245 = call float @dx.op.unary.f32(i32 23, float %242)  ; Log(value)
  %246 = fmul fast float %243, 0x4003333340000000
  %247 = fmul fast float %244, 0x4003333340000000
  %248 = fmul fast float %245, 0x4003333340000000
  %249 = call float @dx.op.unary.f32(i32 21, float %246)  ; Exp(value)
  %250 = call float @dx.op.unary.f32(i32 21, float %247)  ; Exp(value)
  %251 = call float @dx.op.unary.f32(i32 21, float %248)  ; Exp(value)
  %252 = fmul fast float %249, %235
  %253 = fmul fast float %250, %235
  %254 = fmul fast float %251, %235
  %255 = extractvalue %dx.types.CBufRet.f32 %143, 1
  %256 = fmul fast float %252, %255
  %257 = fmul fast float %253, %255
  %258 = fmul fast float %254, %255
  %259 = fmul fast float %256, 0x3FEA519BC0000000
  %260 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %257, float %259)  ; FMad(a,b,c)
  %261 = fmul fast float %256, 0x3FA0FED480000000
  %262 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %257, float %261)  ; FMad(a,b,c)
  %263 = fmul fast float %256, 0x3F917E1C00000000
  %264 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %257, float %263)  ; FMad(a,b,c)
  %265 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %258, float %264)  ; FMad(a,b,c)
  %266 = call float @dx.op.binary.f32(i32 35, float %256, float %257)  ; FMax(a,b)
  %267 = call float @dx.op.binary.f32(i32 35, float %266, float %258)  ; FMax(a,b)
  %268 = fadd fast float %267, -1.000000e+00
  %269 = fmul fast float %268, 2.500000e-01
  %270 = call float @dx.op.unary.f32(i32 7, float %269)  ; Saturate(value)
  %271 = fsub fast float 1.000000e+00, %270
  %272 = fmul fast float %271, %260
  %273 = fmul fast float %271, %262
  %274 = fmul fast float %271, %265
  %275 = fmul fast float %270, %256
  %276 = fmul fast float %270, %257
  %277 = fmul fast float %270, %258
  %278 = fadd fast float %272, %275
  %279 = fadd fast float %273, %276
  %280 = fadd fast float %274, %277
  %281 = fmul fast float %278, 0x3F1A36E2E0000000
  %282 = fmul fast float %279, 0x3F1A36E2E0000000
  %283 = fmul fast float %280, 0x3F1A36E2E0000000
  %284 = call float @dx.op.unary.f32(i32 23, float %281)  ; Log(value)
  %285 = call float @dx.op.unary.f32(i32 23, float %282)  ; Log(value)
  %286 = call float @dx.op.unary.f32(i32 23, float %283)  ; Log(value)
  %287 = fmul fast float %284, 0x3FC4640000000000
  %288 = fmul fast float %285, 0x3FC4640000000000
  %289 = fmul fast float %286, 0x3FC4640000000000
  %290 = call float @dx.op.unary.f32(i32 21, float %287)  ; Exp(value)
  %291 = call float @dx.op.unary.f32(i32 21, float %288)  ; Exp(value)
  %292 = call float @dx.op.unary.f32(i32 21, float %289)  ; Exp(value)
  %293 = fmul fast float %290, 0x4032DA0000000000
  %294 = fmul fast float %291, 0x4032DA0000000000
  %295 = fmul fast float %292, 0x4032DA0000000000
  %296 = fadd fast float %293, 8.359375e-01
  %297 = fadd fast float %294, 8.359375e-01
  %298 = fadd fast float %295, 8.359375e-01
  %299 = fmul fast float %290, 1.868750e+01
  %300 = fmul fast float %291, 1.868750e+01
  %301 = fmul fast float %292, 1.868750e+01
  %302 = fadd fast float %299, 1.000000e+00
  %303 = fadd fast float %300, 1.000000e+00
  %304 = fadd fast float %301, 1.000000e+00
  %305 = fdiv fast float %296, %302
  %306 = fdiv fast float %297, %303
  %307 = fdiv fast float %298, %304
  %308 = call float @dx.op.unary.f32(i32 23, float %305)  ; Log(value)
  %309 = call float @dx.op.unary.f32(i32 23, float %306)  ; Log(value)
  %310 = call float @dx.op.unary.f32(i32 23, float %307)  ; Log(value)
  %311 = fmul fast float %308, 7.884375e+01
  %312 = fmul fast float %309, 7.884375e+01
  %313 = fmul fast float %310, 7.884375e+01
  %314 = call float @dx.op.unary.f32(i32 21, float %311)  ; Exp(value)
  %315 = call float @dx.op.unary.f32(i32 21, float %312)  ; Exp(value)
  %316 = call float @dx.op.unary.f32(i32 21, float %313)  ; Exp(value)
  br label %317

; <label>:317                                     ; preds = %228, %226, %150
  %318 = phi float [ %223, %150 ], [ %314, %228 ], [ %138, %226 ]
  %319 = phi float [ %224, %150 ], [ %315, %228 ], [ %139, %226 ]
  %320 = phi float [ %225, %150 ], [ %316, %228 ], [ %140, %226 ]
  %321 = fmul float %149, %320
  %322 = fmul float %149, %319
  %323 = fmul float %149, %318
  %324 = fadd float %321, %148
  %325 = fadd float %322, %148
  %326 = fadd float %323, %148
  %327 = fmul fast float %326, %43
  %328 = fmul fast float %325, %43
  %329 = fmul fast float %324, %43
  br label %511

; <label>:330                                     ; preds = %141
  %331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %332 = extractvalue %dx.types.CBufRet.f32 %331, 0
  %333 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %10, float %15, float %16, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %334 = extractvalue %dx.types.ResRet.f32 %333, 0
  %335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %336 = extractvalue %dx.types.CBufRet.f32 %335, 3
  %337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %338 = extractvalue %dx.types.CBufRet.f32 %337, 1
  %339 = fsub fast float %338, %334
  %340 = fcmp fast ogt float %339, 0.000000e+00
  %341 = fcmp fast olt float %339, 0.000000e+00
  %342 = zext i1 %340 to i32
  %343 = zext i1 %341 to i32
  %344 = sub nsw i32 %342, %343
  %345 = sitofp i32 %344 to float
  %346 = call float @dx.op.unary.f32(i32 6, float %339)  ; FAbs(value)
  %347 = fsub fast float %346, %336
  %348 = call float @dx.op.binary.f32(i32 35, float %347, float 0.000000e+00)  ; FMax(a,b)
  %349 = fmul fast float %345, %348
  %350 = extractvalue %dx.types.CBufRet.f32 %337, 3
  %351 = fsub fast float %338, %349
  %352 = fmul fast float %351, 0xBFF7154760000000
  %353 = call float @dx.op.unary.f32(i32 21, float %352)  ; Exp(value)
  %354 = fmul fast float %353, %350
  %355 = extractvalue %dx.types.CBufRet.f32 %335, 2
  %356 = fadd fast float %354, -1.000000e+00
  %357 = fmul fast float %355, %356
  %358 = fadd fast float %357, 1.000000e+00
  %359 = fmul fast float %358, %138
  %360 = fmul fast float %358, %139
  %361 = fmul fast float %358, %140
  %362 = icmp eq i32 %94, 0
  %363 = icmp ne i32 %96, 0
  %364 = or i1 %362, %363
  %365 = and i1 %69, %364
  br i1 %365, label %366, label %388, !dx.controlflow.hints !39

; <label>:366                                     ; preds = %330
  %367 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %10, float %15, float %16, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %368 = extractvalue %dx.types.ResRet.f32 %367, 0
  %369 = extractvalue %dx.types.ResRet.f32 %367, 1
  %370 = extractvalue %dx.types.ResRet.f32 %367, 2
  %371 = call float @dx.op.binary.f32(i32 35, float %368, float 0.000000e+00)  ; FMax(a,b)
  %372 = call float @dx.op.binary.f32(i32 35, float %369, float 0.000000e+00)  ; FMax(a,b)
  %373 = call float @dx.op.binary.f32(i32 35, float %370, float 0.000000e+00)  ; FMax(a,b)
  %374 = call float @dx.op.binary.f32(i32 36, float %371, float 3.225500e+04)  ; FMin(a,b)
  %375 = call float @dx.op.binary.f32(i32 36, float %372, float 3.225500e+04)  ; FMin(a,b)
  %376 = call float @dx.op.binary.f32(i32 36, float %373, float 3.225500e+04)  ; FMin(a,b)
  %377 = extractvalue %dx.types.CBufRet.f32 %335, 1
  %378 = fmul fast float %377, %359
  %379 = fmul fast float %377, %360
  %380 = fmul fast float %377, %361
  %381 = extractvalue %dx.types.CBufRet.f32 %335, 0
  %382 = fmul fast float %381, %374
  %383 = fmul fast float %381, %375
  %384 = fmul fast float %381, %376
  %385 = fadd fast float %382, %378
  %386 = fadd fast float %383, %379
  %387 = fadd fast float %384, %380
  br label %388

; <label>:388                                     ; preds = %366, %330
  %389 = phi float [ %385, %366 ], [ %359, %330 ]
  %390 = phi float [ %386, %366 ], [ %360, %330 ]
  %391 = phi float [ %387, %366 ], [ %361, %330 ]
  %392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 304)  ; CBufferLoadLegacy(handle,regIndex)
  %393 = extractvalue %dx.types.CBufRet.f32 %392, 2
  %394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 305)  ; CBufferLoadLegacy(handle,regIndex)
  %395 = extractvalue %dx.types.CBufRet.f32 %394, 2
  %396 = extractvalue %dx.types.CBufRet.f32 %394, 3
  %397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 306)  ; CBufferLoadLegacy(handle,regIndex)
  %398 = extractvalue %dx.types.CBufRet.f32 %397, 0
  %399 = extractvalue %dx.types.CBufRet.f32 %397, 1
  %400 = fcmp fast ugt float %393, 0.000000e+00
  br i1 %400, label %401, label %451

; <label>:401                                     ; preds = %388
  %402 = extractvalue %dx.types.CBufRet.f32 %397, 2
  %403 = fcmp fast ogt float %402, 0.000000e+00
  %404 = extractvalue %dx.types.CBufRet.f32 %394, 1
  %405 = extractvalue %dx.types.CBufRet.f32 %394, 0
  %406 = extractvalue %dx.types.CBufRet.f32 %392, 1
  %407 = extractvalue %dx.types.CBufRet.f32 %392, 0
  %408 = fadd fast float %15, -5.000000e-01
  %409 = fadd fast float %16, -5.000000e-01
  %410 = fmul fast float %407, %408
  %411 = fmul fast float %406, %409
  %412 = fadd fast float %410, %405
  %413 = fadd fast float %411, %404
  br i1 %403, label %414, label %421

; <label>:414                                     ; preds = %401
  %415 = fmul fast float %412, 5.000000e-01
  %416 = fmul fast float %413, 5.000000e-01
  %417 = fadd fast float %415, 5.000000e-01
  %418 = fadd fast float %416, 5.000000e-01
  %419 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %10, float %417, float %418, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %420 = extractvalue %dx.types.ResRet.f32 %419, 0
  br label %434

; <label>:421                                     ; preds = %401
  %422 = fsub fast float -0.000000e+00, %395
  %423 = fsub fast float -0.000000e+00, %396
  %424 = call float @dx.op.binary.f32(i32 35, float %412, float %422)  ; FMax(a,b)
  %425 = call float @dx.op.binary.f32(i32 35, float %413, float %423)  ; FMax(a,b)
  %426 = call float @dx.op.binary.f32(i32 36, float %424, float %395)  ; FMin(a,b)
  %427 = call float @dx.op.binary.f32(i32 36, float %425, float %396)  ; FMin(a,b)
  %428 = fsub fast float %412, %426
  %429 = fsub fast float %413, %427
  %430 = fmul fast float %428, %428
  %431 = fmul fast float %429, %429
  %432 = fadd fast float %431, %430
  %433 = call float @dx.op.unary.f32(i32 24, float %432)  ; Sqrt(value)
  br label %434

; <label>:434                                     ; preds = %421, %414
  %435 = phi float [ %420, %414 ], [ %433, %421 ]
  %436 = fmul fast float %435, %398
  %437 = fadd fast float %436, %399
  %438 = call float @dx.op.unary.f32(i32 7, float %437)  ; Saturate(value)
  %439 = fmul fast float %438, %438
  %440 = fmul fast float %438, 2.000000e+00
  %441 = fsub fast float 3.000000e+00, %440
  %442 = fmul fast float %439, %441
  %443 = fsub fast float %442, %438
  %444 = fmul fast float %443, 0x3FE3333340000000
  %445 = fadd fast float %444, %438
  %446 = fmul fast float %445, %393
  %447 = fsub fast float 1.000000e+00, %446
  %448 = fmul fast float %447, %389
  %449 = fmul fast float %447, %390
  %450 = fmul fast float %447, %391
  br label %451

; <label>:451                                     ; preds = %434, %388
  %452 = phi float [ %448, %434 ], [ %389, %388 ]
  %453 = phi float [ %449, %434 ], [ %390, %388 ]
  %454 = phi float [ %450, %434 ], [ %391, %388 ]
  %455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %456 = extractvalue %dx.types.CBufRet.f32 %455, 0
  %457 = extractvalue %dx.types.CBufRet.f32 %455, 1
  %458 = extractvalue %dx.types.CBufRet.f32 %455, 2
  %459 = call float @dx.op.dot3.f32(i32 55, float %452, float %453, float %454, float %456, float %457, float %458)  ; Dot3(ax,ay,az,bx,by,bz)
  %460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %461 = extractvalue %dx.types.CBufRet.f32 %460, 0
  %462 = extractvalue %dx.types.CBufRet.f32 %460, 1
  %463 = extractvalue %dx.types.CBufRet.f32 %460, 2
  %464 = call float @dx.op.dot3.f32(i32 55, float %452, float %453, float %454, float %461, float %462, float %463)  ; Dot3(ax,ay,az,bx,by,bz)
  %465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %466 = extractvalue %dx.types.CBufRet.f32 %465, 0
  %467 = extractvalue %dx.types.CBufRet.f32 %465, 1
  %468 = extractvalue %dx.types.CBufRet.f32 %465, 2
  %469 = call float @dx.op.dot3.f32(i32 55, float %452, float %453, float %454, float %466, float %467, float %468)  ; Dot3(ax,ay,az,bx,by,bz)
  %470 = fmul fast float %459, %332
  %471 = fmul fast float %464, %332
  %472 = fmul fast float %469, %332
  %473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %474 = extractvalue %dx.types.CBufRet.f32 %473, 2
  %475 = fmul fast float %470, %474
  %476 = fmul fast float %471, %474
  %477 = fmul fast float %472, %474
  %478 = fadd fast float %475, 9.765625e-04
  %479 = fadd fast float %476, 9.765625e-04
  %480 = fadd fast float %477, 9.765625e-04
  %481 = call float @dx.op.unary.f32(i32 23, float %478)  ; Log(value)
  %482 = call float @dx.op.unary.f32(i32 23, float %479)  ; Log(value)
  %483 = call float @dx.op.unary.f32(i32 23, float %480)  ; Log(value)
  %484 = fadd fast float %481, 1.000000e+01
  %485 = fadd fast float %482, 1.000000e+01
  %486 = fadd fast float %483, 1.000000e+01
  %487 = fmul fast float %484, 0x3FA99999A0000000
  %488 = fmul fast float %485, 0x3FA99999A0000000
  %489 = fmul fast float %486, 0x3FA99999A0000000
  %490 = call float @dx.op.unary.f32(i32 7, float %487)  ; Saturate(value)
  %491 = call float @dx.op.unary.f32(i32 7, float %488)  ; Saturate(value)
  %492 = call float @dx.op.unary.f32(i32 7, float %489)  ; Saturate(value)
  %493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %494 = extractvalue %dx.types.CBufRet.f32 %493, 0
  %495 = extractvalue %dx.types.CBufRet.f32 %493, 1
  %496 = extractvalue %dx.types.CBufRet.f32 %493, 2
  %497 = fmul fast float %494, %490
  %498 = fmul fast float %495, %491
  %499 = fmul fast float %496, %492
  %500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %501 = extractvalue %dx.types.CBufRet.f32 %500, 0
  %502 = extractvalue %dx.types.CBufRet.f32 %500, 1
  %503 = extractvalue %dx.types.CBufRet.f32 %500, 2
  %504 = fadd fast float %497, %501
  %505 = fadd fast float %498, %502
  %506 = fadd fast float %499, %503
  %507 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %10, float %504, float %505, float %506, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %508 = extractvalue %dx.types.ResRet.f32 %507, 0
  %509 = extractvalue %dx.types.ResRet.f32 %507, 1
  %510 = extractvalue %dx.types.ResRet.f32 %507, 2
  br label %511

; <label>:511                                     ; preds = %451, %317, %137
  %512 = phi float [ %327, %317 ], [ %508, %451 ], [ %138, %137 ]
  %513 = phi float [ %328, %317 ], [ %509, %451 ], [ %139, %137 ]
  %514 = phi float [ %329, %317 ], [ %510, %451 ], [ %140, %137 ]
  %515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %516 = extractvalue %dx.types.CBufRet.f32 %515, 0
  %517 = fcmp fast ogt float %516, 0.000000e+00
  br i1 %517, label %518, label %562

; <label>:518                                     ; preds = %511
  %519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %520 = extractvalue %dx.types.CBufRet.f32 %519, 0
  %521 = extractvalue %dx.types.CBufRet.f32 %519, 1
  %522 = fmul fast float %520, %15
  %523 = fmul fast float %521, %16
  %524 = fptoui float %522 to i32
  %525 = fptoui float %523 to i32
  %526 = lshr i32 %524, 3
  %527 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %528 = extractvalue %dx.types.CBufRet.i32 %527, 1
  %529 = shl i32 %528, 1
  %530 = lshr i32 %525, 5
  %531 = extractvalue %dx.types.CBufRet.i32 %527, 0
  %532 = mul i32 %530, %531
  %533 = lshr i32 %524, 6
  %534 = add i32 %533, %529
  %535 = add i32 %534, %532
  %536 = shl i32 %535, 2
  %537 = and i32 %525, 24
  %538 = and i32 %526, 7
  %539 = or i32 %538, %537
  %540 = shl i32 1, %539
  %541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %536, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.i32 %541, 0
  %543 = and i32 %540, %542
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %562, label %545

; <label>:545                                     ; preds = %518
  %546 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %11, float %15, float %16, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %547 = extractvalue %dx.types.ResRet.f32 %546, 0
  %548 = fcmp fast oeq float %547, 0.000000e+00
  br i1 %548, label %549, label %562

; <label>:549                                     ; preds = %545
  %550 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %11, float %15, float %16, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %551 = extractvalue %dx.types.ResRet.f32 %550, 0
  %552 = extractvalue %dx.types.ResRet.f32 %550, 1
  %553 = extractvalue %dx.types.ResRet.f32 %550, 2
  %554 = extractvalue %dx.types.ResRet.f32 %550, 3
  %555 = fsub fast float 1.000000e+00, %554
  %556 = fmul fast float %555, %512
  %557 = fmul fast float %555, %513
  %558 = fmul fast float %555, %514
  %559 = fadd fast float %556, %551
  %560 = fadd fast float %557, %552
  %561 = fadd fast float %558, %553
  br label %562

; <label>:562                                     ; preds = %549, %545, %518, %511
  %563 = phi float [ %559, %549 ], [ %512, %545 ], [ %512, %518 ], [ %512, %511 ]
  %564 = phi float [ %560, %549 ], [ %513, %545 ], [ %513, %518 ], [ %513, %511 ]
  %565 = phi float [ %561, %549 ], [ %514, %545 ], [ %514, %518 ], [ %514, %511 ]
  %566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %567 = extractvalue %dx.types.CBufRet.f32 %566, 0
  %568 = extractvalue %dx.types.CBufRet.f32 %566, 1
  %569 = extractvalue %dx.types.CBufRet.f32 %566, 2
  %570 = call float @dx.op.dot3.f32(i32 55, float %563, float %564, float %565, float %567, float %568, float %569)  ; Dot3(ax,ay,az,bx,by,bz)
  %571 = and i32 %93, 8
  %572 = icmp ne i32 %571, 0
  %573 = or i1 %88, %572
  br i1 %573, label %574, label %775

; <label>:574                                     ; preds = %562
  %575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %576 = extractvalue %dx.types.CBufRet.f32 %575, 0
  %577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %578 = extractvalue %dx.types.CBufRet.f32 %577, 2
  %579 = extractvalue %dx.types.CBufRet.f32 %577, 3
  br label %580

; <label>:580                                     ; preds = %726, %574
  %581 = phi float [ 0.000000e+00, %574 ], [ %714, %726 ]
  %582 = phi float [ 0.000000e+00, %574 ], [ %723, %726 ]
  %583 = phi i32 [ 0, %574 ], [ %727, %726 ]
  br label %584

; <label>:584                                     ; preds = %702, %580
  %585 = phi float [ %581, %580 ], [ %714, %702 ]
  %586 = phi float [ %582, %580 ], [ %723, %702 ]
  %587 = phi i32 [ 0, %580 ], [ %724, %702 ]
  %588 = add nsw i32 %583, -1
  %589 = sitofp i32 %588 to float
  %590 = add nsw i32 %587, -1
  %591 = sitofp i32 %590 to float
  %592 = fmul fast float %589, %578
  %593 = fmul fast float %591, %579
  %594 = fadd fast float %592, %15
  %595 = fadd fast float %593, %16
  %596 = icmp eq i32 %583, 1
  %597 = icmp eq i32 %587, 1
  %598 = and i1 %596, %597
  %599 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %10, float %594, float %595, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %600 = extractvalue %dx.types.ResRet.f32 %599, 0
  %601 = extractvalue %dx.types.ResRet.f32 %599, 1
  %602 = select i1 %598, float %41, float %600
  %603 = select i1 %598, float %42, float %601
  %604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %605 = extractvalue %dx.types.CBufRet.f32 %604, 0
  %606 = fcmp fast ult float %603, %605
  br i1 %606, label %632, label %607

; <label>:607                                     ; preds = %584
  %608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %609 = extractvalue %dx.types.CBufRet.f32 %608, 3
  %610 = call float @dx.op.unary.f32(i32 7, float %603)  ; Saturate(value)
  %611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 238)  ; CBufferLoadLegacy(handle,regIndex)
  %612 = extractvalue %dx.types.CBufRet.f32 %611, 0
  %613 = extractvalue %dx.types.CBufRet.f32 %611, 1
  %614 = extractvalue %dx.types.CBufRet.f32 %611, 2
  %615 = extractvalue %dx.types.CBufRet.f32 %608, 0
  %616 = extractvalue %dx.types.CBufRet.f32 %608, 1
  %617 = extractvalue %dx.types.CBufRet.f32 %608, 2
  %618 = fsub fast float %612, %615
  %619 = fsub fast float %613, %616
  %620 = fsub fast float %614, %617
  %621 = fmul fast float %618, %610
  %622 = fmul fast float %619, %610
  %623 = fmul fast float %620, %610
  %624 = fadd fast float %621, %615
  %625 = fadd fast float %622, %616
  %626 = fadd fast float %623, %617
  %627 = fmul fast float %609, %34
  %628 = fmul fast float %627, %624
  %629 = fmul fast float %627, %625
  %630 = fmul fast float %627, %626
  %631 = call float @dx.op.dot3.f32(i32 55, float %628, float %629, float %630, float 0x3FD5554760000000, float 0x3FD5554760000000, float 0x3FD5554760000000)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %702

; <label>:632                                     ; preds = %584
  %633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 304)  ; CBufferLoadLegacy(handle,regIndex)
  %634 = extractvalue %dx.types.CBufRet.f32 %633, 2
  %635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 305)  ; CBufferLoadLegacy(handle,regIndex)
  %636 = extractvalue %dx.types.CBufRet.f32 %635, 2
  %637 = extractvalue %dx.types.CBufRet.f32 %635, 3
  %638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 306)  ; CBufferLoadLegacy(handle,regIndex)
  %639 = extractvalue %dx.types.CBufRet.f32 %638, 0
  %640 = extractvalue %dx.types.CBufRet.f32 %638, 1
  %641 = fcmp fast ugt float %634, 0.000000e+00
  br i1 %641, label %642, label %690

; <label>:642                                     ; preds = %632
  %643 = extractvalue %dx.types.CBufRet.f32 %638, 2
  %644 = fcmp fast ogt float %643, 0.000000e+00
  %645 = extractvalue %dx.types.CBufRet.f32 %635, 1
  %646 = extractvalue %dx.types.CBufRet.f32 %635, 0
  %647 = extractvalue %dx.types.CBufRet.f32 %633, 1
  %648 = extractvalue %dx.types.CBufRet.f32 %633, 0
  %649 = fadd fast float %594, -5.000000e-01
  %650 = fadd fast float %595, -5.000000e-01
  %651 = fmul fast float %648, %649
  %652 = fmul fast float %647, %650
  %653 = fadd fast float %651, %646
  %654 = fadd fast float %652, %645
  br i1 %644, label %655, label %662

; <label>:655                                     ; preds = %642
  %656 = fmul fast float %653, 5.000000e-01
  %657 = fmul fast float %654, 5.000000e-01
  %658 = fadd fast float %656, 5.000000e-01
  %659 = fadd fast float %657, 5.000000e-01
  %660 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %10, float %658, float %659, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %661 = extractvalue %dx.types.ResRet.f32 %660, 0
  br label %675

; <label>:662                                     ; preds = %642
  %663 = fsub fast float -0.000000e+00, %636
  %664 = fsub fast float -0.000000e+00, %637
  %665 = call float @dx.op.binary.f32(i32 35, float %653, float %663)  ; FMax(a,b)
  %666 = call float @dx.op.binary.f32(i32 35, float %654, float %664)  ; FMax(a,b)
  %667 = call float @dx.op.binary.f32(i32 36, float %665, float %636)  ; FMin(a,b)
  %668 = call float @dx.op.binary.f32(i32 36, float %666, float %637)  ; FMin(a,b)
  %669 = fsub fast float %653, %667
  %670 = fsub fast float %654, %668
  %671 = fmul fast float %669, %669
  %672 = fmul fast float %670, %670
  %673 = fadd fast float %672, %671
  %674 = call float @dx.op.unary.f32(i32 24, float %673)  ; Sqrt(value)
  br label %675

; <label>:675                                     ; preds = %662, %655
  %676 = phi float [ %661, %655 ], [ %674, %662 ]
  %677 = fmul fast float %676, %639
  %678 = fadd fast float %677, %640
  %679 = call float @dx.op.unary.f32(i32 7, float %678)  ; Saturate(value)
  %680 = fmul fast float %679, %679
  %681 = fmul fast float %679, 2.000000e+00
  %682 = fsub fast float 3.000000e+00, %681
  %683 = fmul fast float %680, %682
  %684 = fsub fast float %683, %679
  %685 = fmul fast float %684, 0x3FE3333340000000
  %686 = fadd fast float %685, %679
  %687 = fmul fast float %686, %634
  %688 = fsub fast float 1.000000e+00, %687
  %689 = fmul fast float %688, %602
  br label %690

; <label>:690                                     ; preds = %675, %632
  %691 = phi float [ %689, %675 ], [ %602, %632 ]
  %692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %693 = extractvalue %dx.types.CBufRet.f32 %692, 0
  %694 = extractvalue %dx.types.CBufRet.f32 %692, 1
  %695 = extractvalue %dx.types.CBufRet.f32 %692, 2
  %696 = call float @dx.op.dot3.f32(i32 55, float %691, float %691, float %691, float %693, float %694, float %695)  ; Dot3(ax,ay,az,bx,by,bz)
  %697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %698 = extractvalue %dx.types.CBufRet.f32 %697, 1
  %699 = fmul fast float %576, %33
  %700 = fmul fast float %699, %696
  %701 = fmul fast float %700, %698
  br label %702

; <label>:702                                     ; preds = %690, %607
  %703 = phi float [ %631, %607 ], [ %701, %690 ]
  %704 = add nuw nsw i32 %583, 3
  %705 = add nuw nsw i32 %583, 6
  %706 = getelementptr [3 x i32], [3 x i32]* %20, i32 0, i32 0
  store i32 %583, i32* %706, align 4
  %707 = getelementptr [3 x i32], [3 x i32]* %20, i32 0, i32 1
  store i32 %704, i32* %707, align 4
  %708 = getelementptr [3 x i32], [3 x i32]* %20, i32 0, i32 2
  store i32 %705, i32* %708, align 4
  %709 = getelementptr [3 x i32], [3 x i32]* %20, i32 0, i32 %587
  %710 = load i32, i32* %709, align 4
  %711 = getelementptr [9 x float], [9 x float]* @Gx.v.v, i32 0, i32 %710
  %712 = load float, float* %711, align 4, !tbaa !40
  %713 = fmul fast float %712, %703
  %714 = fadd fast float %713, %585
  %715 = getelementptr [3 x i32], [3 x i32]* %19, i32 0, i32 0
  store i32 %583, i32* %715, align 4
  %716 = getelementptr [3 x i32], [3 x i32]* %19, i32 0, i32 1
  store i32 %704, i32* %716, align 4
  %717 = getelementptr [3 x i32], [3 x i32]* %19, i32 0, i32 2
  store i32 %705, i32* %717, align 4
  %718 = getelementptr [3 x i32], [3 x i32]* %19, i32 0, i32 %587
  %719 = load i32, i32* %718, align 4
  %720 = getelementptr [9 x float], [9 x float]* @Gy.v.v, i32 0, i32 %719
  %721 = load float, float* %720, align 4, !tbaa !40
  %722 = fmul fast float %721, %703
  %723 = fadd fast float %722, %586
  %724 = add nuw nsw i32 %587, 1
  %725 = icmp eq i32 %724, 3
  br i1 %725, label %726, label %584

; <label>:726                                     ; preds = %702
  %727 = add nuw nsw i32 %583, 1
  %728 = icmp eq i32 %727, 3
  br i1 %728, label %729, label %580

; <label>:729                                     ; preds = %726
  %730 = call float @dx.op.unary.f32(i32 7, float %41)  ; Saturate(value)
  %731 = fmul fast float %714, %714
  %732 = fmul fast float %723, %723
  %733 = fadd fast float %732, %731
  %734 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %733)  ; FMax(a,b)
  %735 = call float @dx.op.unary.f32(i32 24, float %734)  ; Sqrt(value)
  %736 = fmul fast float %730, %30
  %737 = call float @dx.op.unary.f32(i32 7, float %736)  ; Saturate(value)
  %738 = fmul fast float %563, %32
  %739 = fmul fast float %564, %32
  %740 = fmul fast float %565, %32
  %741 = select i1 %39, float %738, float %737
  %742 = select i1 %39, float %739, float %737
  %743 = select i1 %39, float %740, float %737
  %744 = fsub fast float %27, %741
  %745 = fsub fast float %28, %742
  %746 = fsub fast float %29, %743
  %747 = fmul fast float %744, %737
  %748 = fmul fast float %745, %737
  %749 = fmul fast float %746, %737
  %750 = fadd fast float %747, %741
  %751 = fadd fast float %748, %742
  %752 = fadd fast float %749, %743
  %753 = fmul fast float %730, %25
  %754 = fsub fast float 1.000000e+00, %753
  %755 = call float @dx.op.unary.f32(i32 7, float %754)  ; Saturate(value)
  br i1 %91, label %756, label %759

; <label>:756                                     ; preds = %729
  %757 = fmul fast float %735, %37
  %758 = fmul fast float %757, %755
  br label %763

; <label>:759                                     ; preds = %729
  %760 = fmul fast float %735, %35
  %761 = fmul fast float %760, %755
  %762 = call float @dx.op.unary.f32(i32 7, float %761)  ; Saturate(value)
  br label %763

; <label>:763                                     ; preds = %759, %756
  %764 = phi float [ %758, %756 ], [ %762, %759 ]
  %765 = fmul fast float %764, %38
  %766 = fsub fast float %22, %750
  %767 = fsub fast float %23, %751
  %768 = fsub fast float %24, %752
  %769 = fmul fast float %765, %766
  %770 = fmul fast float %765, %767
  %771 = fmul fast float %765, %768
  %772 = fadd fast float %769, %750
  %773 = fadd fast float %770, %751
  %774 = fadd fast float %771, %752
  br label %775

; <label>:775                                     ; preds = %763, %562
  %776 = phi float [ %772, %763 ], [ %563, %562 ]
  %777 = phi float [ %773, %763 ], [ %564, %562 ]
  %778 = phi float [ %774, %763 ], [ %565, %562 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %776)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %777)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %778)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %570)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

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
!dx.viewIdState = !{!23}
!dx.entryPoints = !{!24}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !16, !20}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 74, i32 1, i32 4, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 5, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 15, i32 1, i32 11, i32 0, null}
!16 = !{!17, !18, !19}
!17 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!18 = !{i32 1, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 224, null}
!19 = !{i32 2, %tonemapping* undef, !"", i32 0, i32 4, i32 1, i32 64, null}
!20 = !{!21, !22}
!21 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!22 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!23 = !{[8 x i32] [i32 6, i32 5, i32 23, i32 23, i32 0, i32 0, i32 23, i32 23]}
!24 = !{void ()* @ps_main, !"ps_main", !25, !4, !37}
!25 = !{!26, !31, null}
!26 = !{!27, !30}
!27 = !{i32 0, !"SV_Position", i8 9, i8 3, !28, i8 4, i32 1, i8 4, i32 0, i8 0, !29}
!28 = !{i32 0}
!29 = !{i32 3, i32 3}
!30 = !{i32 1, !"TEXCOORD", i8 9, i8 0, !28, i8 2, i32 1, i8 2, i32 1, i8 0, !29}
!31 = !{!32, !34}
!32 = !{i32 0, !"SV_Target", i8 9, i8 16, !28, i8 0, i32 1, i8 4, i32 0, i8 0, !33}
!33 = !{i32 3, i32 15}
!34 = !{i32 1, !"SV_Target", i8 9, i8 16, !35, i8 0, i32 1, i8 1, i32 1, i8 0, !36}
!35 = !{i32 1}
!36 = !{i32 3, i32 1}
!37 = !{i32 0, i64 16}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 1}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 1}
!40 = !{!41, !41, i64 0}
!41 = !{!"float", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}

