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
;
; shader hash: 6f7f3b86c09866beb31b2e843b18f20f
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
;                                   texture     f32          2d      T2             t2     1
;                                   texture     f32          2d      T3     t69,space2     1
;                                   texture     f32          2d      T4             t3     1
;                                   texture     f32          2d      T5             t4     1
;                                   texture    byte         r/o      T6     t15,space1     1
;
;
; ViewId state:
;
; Number of inputs: 6, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 4, 5 }
;   output 1 depends on inputs: { 0, 1, 4, 5 }
;   output 2 depends on inputs: { 0, 1, 4, 5 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = alloca [3 x i32], align 4
  %18 = alloca [3 x i32], align 4
  %19 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %20 = extractvalue %dx.types.CBufRet.f32 %19, 0
  %21 = extractvalue %dx.types.CBufRet.f32 %19, 1
  %22 = extractvalue %dx.types.CBufRet.f32 %19, 2
  %23 = extractvalue %dx.types.CBufRet.f32 %19, 3
  %24 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.f32 %24, 0
  %26 = extractvalue %dx.types.CBufRet.f32 %24, 1
  %27 = extractvalue %dx.types.CBufRet.f32 %24, 2
  %28 = extractvalue %dx.types.CBufRet.f32 %24, 3
  %29 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %30 = extractvalue %dx.types.CBufRet.f32 %29, 0
  %31 = extractvalue %dx.types.CBufRet.f32 %29, 1
  %32 = extractvalue %dx.types.CBufRet.f32 %29, 2
  %33 = extractvalue %dx.types.CBufRet.f32 %29, 3
  %34 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %35 = extractvalue %dx.types.CBufRet.f32 %34, 0
  %36 = extractvalue %dx.types.CBufRet.f32 %34, 1
  %37 = fcmp fast une float %30, 0.000000e+00
  %38 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %8, float %13, float %14, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %39 = extractvalue %dx.types.ResRet.f32 %38, 0
  %40 = extractvalue %dx.types.ResRet.f32 %38, 1
  %41 = extractvalue %dx.types.ResRet.f32 %38, 2
  %42 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %8, float %13, float %14, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %43 = extractvalue %dx.types.ResRet.f32 %42, 0
  %44 = extractvalue %dx.types.ResRet.f32 %42, 1
  %45 = call float @dx.op.binary.f32(i32 35, float %43, float 0.000000e+00)  ; FMax(a,b)
  %46 = call float @dx.op.binary.f32(i32 35, float %44, float 0.000000e+00)  ; FMax(a,b)
  %47 = call float @dx.op.binary.f32(i32 36, float %45, float 3.225500e+04)  ; FMin(a,b)
  %48 = call float @dx.op.binary.f32(i32 36, float %46, float 3.225500e+04)  ; FMin(a,b)
  %49 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.i32 %49, 1
  %51 = and i32 %50, 4
  %52 = icmp eq i32 %51, 0
  %53 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.f32 %53, 0
  %55 = extractvalue %dx.types.CBufRet.f32 %53, 1
  %56 = fsub fast float %54, %15
  %57 = fsub fast float %55, %16
  %58 = call float @dx.op.unary.f32(i32 6, float %56)  ; FAbs(value)
  %59 = call float @dx.op.unary.f32(i32 6, float %57)  ; FAbs(value)
  %60 = extractvalue %dx.types.CBufRet.f32 %53, 2
  %61 = extractvalue %dx.types.CBufRet.f32 %53, 3
  %62 = fsub fast float %58, %60
  %63 = fsub fast float %59, %61
  %64 = fcmp fast ogt float %62, 0.000000e+00
  %65 = fcmp fast ogt float %63, 0.000000e+00
  %66 = or i1 %64, %65
  %67 = or i1 %52, %66
  %68 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.i32 %68, 3
  %70 = and i32 %69, 3
  %71 = icmp ne i32 %70, 0
  %72 = and i32 %69, 4
  %73 = icmp ne i32 %72, 0
  %74 = and i1 %71, %73
  br i1 %74, label %75, label %82

; <label>:75                                      ; preds = %0
  %76 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %8, float %13, float %14, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %77 = extractvalue %dx.types.ResRet.f32 %76, 0
  %78 = fsub fast float 1.000000e+00, %77
  %79 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %80 = extractvalue %dx.types.CBufRet.f32 %79, 0
  %81 = fcmp fast olt float %78, %80
  br label %85

; <label>:82                                      ; preds = %0
  %83 = icmp eq i32 %72, 0
  %84 = and i1 %71, %83
  br label %85

; <label>:85                                      ; preds = %82, %75
  %86 = phi i1 [ %81, %75 ], [ %84, %82 ]
  %87 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %88 = extractvalue %dx.types.CBufRet.f32 %87, 0
  %89 = fcmp fast oge float %40, %88
  %90 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.i32 %90, 3
  %92 = and i32 %91, 3
  %93 = icmp ne i32 %92, 0
  %94 = and i32 %91, 4
  %95 = icmp eq i32 %94, 0
  %96 = and i1 %93, %95
  %97 = and i1 %89, %96
  br i1 %96, label %98, label %135

; <label>:98                                      ; preds = %85
  br i1 %67, label %99, label %109, !dx.controlflow.hints !33

; <label>:99                                      ; preds = %98
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 1
  %102 = fmul fast float %101, %39
  %103 = fmul fast float %101, %40
  %104 = extractvalue %dx.types.CBufRet.f32 %100, 0
  %105 = fmul fast float %104, %47
  %106 = fmul fast float %104, %48
  %107 = fadd fast float %105, %102
  %108 = fadd fast float %106, %103
  br label %109

; <label>:109                                     ; preds = %99, %98
  %110 = phi float [ %107, %99 ], [ %39, %98 ]
  %111 = phi float [ %108, %99 ], [ %40, %98 ]
  br i1 %97, label %112, label %135

; <label>:112                                     ; preds = %109
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 3
  %115 = call float @dx.op.unary.f32(i32 7, float %111)  ; Saturate(value)
  %116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 238)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = extractvalue %dx.types.CBufRet.f32 %116, 0
  %118 = extractvalue %dx.types.CBufRet.f32 %116, 1
  %119 = extractvalue %dx.types.CBufRet.f32 %116, 2
  %120 = extractvalue %dx.types.CBufRet.f32 %113, 0
  %121 = extractvalue %dx.types.CBufRet.f32 %113, 1
  %122 = extractvalue %dx.types.CBufRet.f32 %113, 2
  %123 = fsub fast float %117, %120
  %124 = fsub fast float %118, %121
  %125 = fsub fast float %119, %122
  %126 = fmul fast float %123, %115
  %127 = fmul fast float %124, %115
  %128 = fmul fast float %125, %115
  %129 = fadd fast float %126, %120
  %130 = fadd fast float %127, %121
  %131 = fadd fast float %128, %122
  %132 = fmul fast float %129, %114
  %133 = fmul fast float %130, %114
  %134 = fmul fast float %131, %114
  br label %135

; <label>:135                                     ; preds = %112, %109, %85
  %136 = phi float [ %132, %112 ], [ %39, %85 ], [ %110, %109 ]
  %137 = phi float [ %133, %112 ], [ %40, %85 ], [ %110, %109 ]
  %138 = phi float [ %134, %112 ], [ %41, %85 ], [ %110, %109 ]
  br i1 %37, label %139, label %302

; <label>:139                                     ; preds = %135
  br i1 %97, label %140, label %172

; <label>:140                                     ; preds = %139
  %141 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %142 = fmul fast float %141, 0x3FDAAAAAA0000000
  %143 = call float @dx.op.unary.f32(i32 21, float %142)  ; Exp(value)
  %144 = fsub fast float 1.000000e+00, %143
  %145 = call float @dx.op.unary.f32(i32 23, float %144)  ; Log(value)
  %146 = fmul fast float %145, 0x4003333340000000
  %147 = call float @dx.op.unary.f32(i32 21, float %146)  ; Exp(value)
  %148 = fdiv fast float %143, %144
  %149 = fadd fast float %148, %136
  %150 = fadd fast float %148, %137
  %151 = fadd fast float %148, %138
  %152 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %149)  ; FMax(a,b)
  %153 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %150)  ; FMax(a,b)
  %154 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %151)  ; FMax(a,b)
  %155 = call float @dx.op.unary.f32(i32 23, float %152)  ; Log(value)
  %156 = call float @dx.op.unary.f32(i32 23, float %153)  ; Log(value)
  %157 = call float @dx.op.unary.f32(i32 23, float %154)  ; Log(value)
  %158 = fmul fast float %155, 0x4003333340000000
  %159 = fmul fast float %156, 0x4003333340000000
  %160 = fmul fast float %157, 0x4003333340000000
  %161 = call float @dx.op.unary.f32(i32 21, float %158)  ; Exp(value)
  %162 = call float @dx.op.unary.f32(i32 21, float %159)  ; Exp(value)
  %163 = call float @dx.op.unary.f32(i32 21, float %160)  ; Exp(value)
  %164 = fmul fast float %161, %147
  %165 = fmul fast float %162, %147
  %166 = fmul fast float %163, %147
  %167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 219)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.f32 %167, 1
  %169 = fmul fast float %164, %168
  %170 = fmul fast float %165, %168
  %171 = fmul fast float %166, %168
  br label %261

; <label>:172                                     ; preds = %139
  %173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 304)  ; CBufferLoadLegacy(handle,regIndex)
  %174 = extractvalue %dx.types.CBufRet.f32 %173, 2
  %175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 305)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = extractvalue %dx.types.CBufRet.f32 %175, 2
  %177 = extractvalue %dx.types.CBufRet.f32 %175, 3
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 306)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.f32 %178, 0
  %180 = extractvalue %dx.types.CBufRet.f32 %178, 1
  %181 = fcmp fast ugt float %174, 0.000000e+00
  br i1 %181, label %182, label %232

; <label>:182                                     ; preds = %172
  %183 = extractvalue %dx.types.CBufRet.f32 %178, 2
  %184 = fcmp fast ogt float %183, 0.000000e+00
  %185 = extractvalue %dx.types.CBufRet.f32 %175, 1
  %186 = extractvalue %dx.types.CBufRet.f32 %175, 0
  %187 = extractvalue %dx.types.CBufRet.f32 %173, 1
  %188 = extractvalue %dx.types.CBufRet.f32 %173, 0
  %189 = fadd fast float %13, -5.000000e-01
  %190 = fadd fast float %14, -5.000000e-01
  %191 = fmul fast float %188, %189
  %192 = fmul fast float %187, %190
  %193 = fadd fast float %191, %186
  %194 = fadd fast float %192, %185
  br i1 %184, label %195, label %202

; <label>:195                                     ; preds = %182
  %196 = fmul fast float %193, 5.000000e-01
  %197 = fmul fast float %194, 5.000000e-01
  %198 = fadd fast float %196, 5.000000e-01
  %199 = fadd fast float %197, 5.000000e-01
  %200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %8, float %198, float %199, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %201 = extractvalue %dx.types.ResRet.f32 %200, 0
  br label %215

; <label>:202                                     ; preds = %182
  %203 = fsub fast float -0.000000e+00, %176
  %204 = fsub fast float -0.000000e+00, %177
  %205 = call float @dx.op.binary.f32(i32 35, float %193, float %203)  ; FMax(a,b)
  %206 = call float @dx.op.binary.f32(i32 35, float %194, float %204)  ; FMax(a,b)
  %207 = call float @dx.op.binary.f32(i32 36, float %205, float %176)  ; FMin(a,b)
  %208 = call float @dx.op.binary.f32(i32 36, float %206, float %177)  ; FMin(a,b)
  %209 = fsub fast float %193, %207
  %210 = fsub fast float %194, %208
  %211 = fmul fast float %209, %209
  %212 = fmul fast float %210, %210
  %213 = fadd fast float %212, %211
  %214 = call float @dx.op.unary.f32(i32 24, float %213)  ; Sqrt(value)
  br label %215

; <label>:215                                     ; preds = %202, %195
  %216 = phi float [ %201, %195 ], [ %214, %202 ]
  %217 = fmul fast float %216, %179
  %218 = fadd fast float %217, %180
  %219 = call float @dx.op.unary.f32(i32 7, float %218)  ; Saturate(value)
  %220 = fmul fast float %219, %219
  %221 = fmul fast float %219, 2.000000e+00
  %222 = fsub fast float 3.000000e+00, %221
  %223 = fmul fast float %220, %222
  %224 = fsub fast float %223, %219
  %225 = fmul fast float %224, 0x3FE3333340000000
  %226 = fadd fast float %225, %219
  %227 = fmul fast float %226, %174
  %228 = fsub fast float 1.000000e+00, %227
  %229 = fmul fast float %228, %136
  %230 = fmul fast float %228, %137
  %231 = fmul fast float %228, %138
  br label %232

; <label>:232                                     ; preds = %215, %172
  %233 = phi float [ %229, %215 ], [ %136, %172 ]
  %234 = phi float [ %230, %215 ], [ %137, %172 ]
  %235 = phi float [ %231, %215 ], [ %138, %172 ]
  %236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %237 = extractvalue %dx.types.CBufRet.f32 %236, 0
  %238 = extractvalue %dx.types.CBufRet.f32 %236, 1
  %239 = extractvalue %dx.types.CBufRet.f32 %236, 2
  %240 = call float @dx.op.dot3.f32(i32 55, float %233, float %234, float %235, float %237, float %238, float %239)  ; Dot3(ax,ay,az,bx,by,bz)
  %241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %242 = extractvalue %dx.types.CBufRet.f32 %241, 0
  %243 = extractvalue %dx.types.CBufRet.f32 %241, 1
  %244 = extractvalue %dx.types.CBufRet.f32 %241, 2
  %245 = call float @dx.op.dot3.f32(i32 55, float %233, float %234, float %235, float %242, float %243, float %244)  ; Dot3(ax,ay,az,bx,by,bz)
  %246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %247 = extractvalue %dx.types.CBufRet.f32 %246, 0
  %248 = extractvalue %dx.types.CBufRet.f32 %246, 1
  %249 = extractvalue %dx.types.CBufRet.f32 %246, 2
  %250 = call float @dx.op.dot3.f32(i32 55, float %233, float %234, float %235, float %247, float %248, float %249)  ; Dot3(ax,ay,az,bx,by,bz)
  %251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %252 = extractvalue %dx.types.CBufRet.f32 %251, 0
  %253 = fmul fast float %252, %240
  %254 = fmul fast float %252, %245
  %255 = fmul fast float %252, %250
  %256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %257 = extractvalue %dx.types.CBufRet.f32 %256, 2
  %258 = fmul fast float %253, %257
  %259 = fmul fast float %254, %257
  %260 = fmul fast float %255, %257
  br label %261

; <label>:261                                     ; preds = %232, %140
  %262 = phi float [ %169, %140 ], [ %258, %232 ]
  %263 = phi float [ %170, %140 ], [ %259, %232 ]
  %264 = phi float [ %171, %140 ], [ %260, %232 ]
  %265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 219)  ; CBufferLoadLegacy(handle,regIndex)
  %266 = extractvalue %dx.types.CBufRet.f32 %265, 0
  %267 = bitcast float %266 to i32
  %268 = icmp eq i32 %267, 4
  br i1 %268, label %269, label %292

; <label>:269                                     ; preds = %261
  %270 = fmul fast float %262, 0x3FEA519BC0000000
  %271 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %263, float %270)  ; FMad(a,b,c)
  %272 = fmul fast float %262, 0x3FA0FED480000000
  %273 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %263, float %272)  ; FMad(a,b,c)
  %274 = fmul fast float %262, 0x3F917E1C00000000
  %275 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %263, float %274)  ; FMad(a,b,c)
  %276 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %264, float %275)  ; FMad(a,b,c)
  %277 = call float @dx.op.binary.f32(i32 35, float %262, float %263)  ; FMax(a,b)
  %278 = call float @dx.op.binary.f32(i32 35, float %277, float %264)  ; FMax(a,b)
  %279 = fadd fast float %278, -1.000000e+00
  %280 = fmul fast float %279, 2.500000e-01
  %281 = call float @dx.op.unary.f32(i32 7, float %280)  ; Saturate(value)
  %282 = fsub fast float 1.000000e+00, %281
  %283 = fmul fast float %282, %271
  %284 = fmul fast float %282, %273
  %285 = fmul fast float %282, %276
  %286 = fmul fast float %281, %262
  %287 = fmul fast float %281, %263
  %288 = fmul fast float %281, %264
  %289 = fadd fast float %283, %286
  %290 = fadd fast float %284, %287
  %291 = fadd fast float %285, %288
  br label %302

; <label>:292                                     ; preds = %261
  %293 = fmul fast float %262, 0x3FE413A920000000
  %294 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %263, float %293)  ; FMad(a,b,c)
  %295 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %264, float %294)  ; FMad(a,b,c)
  %296 = fmul fast float %262, 0x3FB1B089A0000000
  %297 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %263, float %296)  ; FMad(a,b,c)
  %298 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %264, float %297)  ; FMad(a,b,c)
  %299 = fmul fast float %262, 0x3F90CB2960000000
  %300 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %263, float %299)  ; FMad(a,b,c)
  %301 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %264, float %300)  ; FMad(a,b,c)
  br label %302

; <label>:302                                     ; preds = %292, %269, %135
  %303 = phi float [ %289, %269 ], [ %295, %292 ], [ %136, %135 ]
  %304 = phi float [ %290, %269 ], [ %298, %292 ], [ %137, %135 ]
  %305 = phi float [ %291, %269 ], [ %301, %292 ], [ %138, %135 ]
  %306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %307 = extractvalue %dx.types.CBufRet.f32 %306, 0
  %308 = fcmp fast ogt float %307, 0.000000e+00
  br i1 %308, label %309, label %353

; <label>:309                                     ; preds = %302
  %310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %311 = extractvalue %dx.types.CBufRet.f32 %310, 0
  %312 = extractvalue %dx.types.CBufRet.f32 %310, 1
  %313 = fmul fast float %311, %13
  %314 = fmul fast float %312, %14
  %315 = fptoui float %313 to i32
  %316 = fptoui float %314 to i32
  %317 = lshr i32 %315, 3
  %318 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %319 = extractvalue %dx.types.CBufRet.i32 %318, 1
  %320 = shl i32 %319, 1
  %321 = lshr i32 %316, 5
  %322 = extractvalue %dx.types.CBufRet.i32 %318, 0
  %323 = mul i32 %321, %322
  %324 = lshr i32 %315, 6
  %325 = add i32 %324, %320
  %326 = add i32 %325, %323
  %327 = shl i32 %326, 2
  %328 = and i32 %316, 24
  %329 = and i32 %317, 7
  %330 = or i32 %329, %328
  %331 = shl i32 1, %330
  %332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %333 = extractvalue %dx.types.ResRet.i32 %332, 0
  %334 = and i32 %331, %333
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %353, label %336

; <label>:336                                     ; preds = %309
  %337 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %9, float %13, float %14, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %338 = extractvalue %dx.types.ResRet.f32 %337, 0
  %339 = fcmp fast oeq float %338, 0.000000e+00
  br i1 %339, label %340, label %353

; <label>:340                                     ; preds = %336
  %341 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %9, float %13, float %14, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %342 = extractvalue %dx.types.ResRet.f32 %341, 0
  %343 = extractvalue %dx.types.ResRet.f32 %341, 1
  %344 = extractvalue %dx.types.ResRet.f32 %341, 2
  %345 = extractvalue %dx.types.ResRet.f32 %341, 3
  %346 = fsub fast float 1.000000e+00, %345
  %347 = fmul fast float %346, %303
  %348 = fmul fast float %346, %304
  %349 = fmul fast float %346, %305
  %350 = fadd fast float %347, %342
  %351 = fadd fast float %348, %343
  %352 = fadd fast float %349, %344
  br label %353

; <label>:353                                     ; preds = %340, %336, %309, %302
  %354 = phi float [ %350, %340 ], [ %303, %336 ], [ %303, %309 ], [ %303, %302 ]
  %355 = phi float [ %351, %340 ], [ %304, %336 ], [ %304, %309 ], [ %304, %302 ]
  %356 = phi float [ %352, %340 ], [ %305, %336 ], [ %305, %309 ], [ %305, %302 ]
  %357 = and i32 %91, 8
  %358 = icmp ne i32 %357, 0
  %359 = or i1 %86, %358
  br i1 %359, label %360, label %561

; <label>:360                                     ; preds = %353
  %361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %362 = extractvalue %dx.types.CBufRet.f32 %361, 0
  %363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %364 = extractvalue %dx.types.CBufRet.f32 %363, 2
  %365 = extractvalue %dx.types.CBufRet.f32 %363, 3
  br label %366

; <label>:366                                     ; preds = %512, %360
  %367 = phi float [ 0.000000e+00, %360 ], [ %500, %512 ]
  %368 = phi float [ 0.000000e+00, %360 ], [ %509, %512 ]
  %369 = phi i32 [ 0, %360 ], [ %513, %512 ]
  br label %370

; <label>:370                                     ; preds = %488, %366
  %371 = phi float [ %367, %366 ], [ %500, %488 ]
  %372 = phi float [ %368, %366 ], [ %509, %488 ]
  %373 = phi i32 [ 0, %366 ], [ %510, %488 ]
  %374 = add nsw i32 %369, -1
  %375 = sitofp i32 %374 to float
  %376 = add nsw i32 %373, -1
  %377 = sitofp i32 %376 to float
  %378 = fmul fast float %375, %364
  %379 = fmul fast float %377, %365
  %380 = fadd fast float %378, %13
  %381 = fadd fast float %379, %14
  %382 = icmp eq i32 %369, 1
  %383 = icmp eq i32 %373, 1
  %384 = and i1 %382, %383
  %385 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %8, float %380, float %381, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %386 = extractvalue %dx.types.ResRet.f32 %385, 0
  %387 = extractvalue %dx.types.ResRet.f32 %385, 1
  %388 = select i1 %384, float %39, float %386
  %389 = select i1 %384, float %40, float %387
  %390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %391 = extractvalue %dx.types.CBufRet.f32 %390, 0
  %392 = fcmp fast ult float %389, %391
  br i1 %392, label %418, label %393

; <label>:393                                     ; preds = %370
  %394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %395 = extractvalue %dx.types.CBufRet.f32 %394, 3
  %396 = call float @dx.op.unary.f32(i32 7, float %389)  ; Saturate(value)
  %397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 238)  ; CBufferLoadLegacy(handle,regIndex)
  %398 = extractvalue %dx.types.CBufRet.f32 %397, 0
  %399 = extractvalue %dx.types.CBufRet.f32 %397, 1
  %400 = extractvalue %dx.types.CBufRet.f32 %397, 2
  %401 = extractvalue %dx.types.CBufRet.f32 %394, 0
  %402 = extractvalue %dx.types.CBufRet.f32 %394, 1
  %403 = extractvalue %dx.types.CBufRet.f32 %394, 2
  %404 = fsub fast float %398, %401
  %405 = fsub fast float %399, %402
  %406 = fsub fast float %400, %403
  %407 = fmul fast float %404, %396
  %408 = fmul fast float %405, %396
  %409 = fmul fast float %406, %396
  %410 = fadd fast float %407, %401
  %411 = fadd fast float %408, %402
  %412 = fadd fast float %409, %403
  %413 = fmul fast float %395, %32
  %414 = fmul fast float %413, %410
  %415 = fmul fast float %413, %411
  %416 = fmul fast float %413, %412
  %417 = call float @dx.op.dot3.f32(i32 55, float %414, float %415, float %416, float 0x3FD5554760000000, float 0x3FD5554760000000, float 0x3FD5554760000000)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %488

; <label>:418                                     ; preds = %370
  %419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 304)  ; CBufferLoadLegacy(handle,regIndex)
  %420 = extractvalue %dx.types.CBufRet.f32 %419, 2
  %421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 305)  ; CBufferLoadLegacy(handle,regIndex)
  %422 = extractvalue %dx.types.CBufRet.f32 %421, 2
  %423 = extractvalue %dx.types.CBufRet.f32 %421, 3
  %424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 306)  ; CBufferLoadLegacy(handle,regIndex)
  %425 = extractvalue %dx.types.CBufRet.f32 %424, 0
  %426 = extractvalue %dx.types.CBufRet.f32 %424, 1
  %427 = fcmp fast ugt float %420, 0.000000e+00
  br i1 %427, label %428, label %476

; <label>:428                                     ; preds = %418
  %429 = extractvalue %dx.types.CBufRet.f32 %424, 2
  %430 = fcmp fast ogt float %429, 0.000000e+00
  %431 = extractvalue %dx.types.CBufRet.f32 %421, 1
  %432 = extractvalue %dx.types.CBufRet.f32 %421, 0
  %433 = extractvalue %dx.types.CBufRet.f32 %419, 1
  %434 = extractvalue %dx.types.CBufRet.f32 %419, 0
  %435 = fadd fast float %380, -5.000000e-01
  %436 = fadd fast float %381, -5.000000e-01
  %437 = fmul fast float %434, %435
  %438 = fmul fast float %433, %436
  %439 = fadd fast float %437, %432
  %440 = fadd fast float %438, %431
  br i1 %430, label %441, label %448

; <label>:441                                     ; preds = %428
  %442 = fmul fast float %439, 5.000000e-01
  %443 = fmul fast float %440, 5.000000e-01
  %444 = fadd fast float %442, 5.000000e-01
  %445 = fadd fast float %443, 5.000000e-01
  %446 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %8, float %444, float %445, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %447 = extractvalue %dx.types.ResRet.f32 %446, 0
  br label %461

; <label>:448                                     ; preds = %428
  %449 = fsub fast float -0.000000e+00, %422
  %450 = fsub fast float -0.000000e+00, %423
  %451 = call float @dx.op.binary.f32(i32 35, float %439, float %449)  ; FMax(a,b)
  %452 = call float @dx.op.binary.f32(i32 35, float %440, float %450)  ; FMax(a,b)
  %453 = call float @dx.op.binary.f32(i32 36, float %451, float %422)  ; FMin(a,b)
  %454 = call float @dx.op.binary.f32(i32 36, float %452, float %423)  ; FMin(a,b)
  %455 = fsub fast float %439, %453
  %456 = fsub fast float %440, %454
  %457 = fmul fast float %455, %455
  %458 = fmul fast float %456, %456
  %459 = fadd fast float %458, %457
  %460 = call float @dx.op.unary.f32(i32 24, float %459)  ; Sqrt(value)
  br label %461

; <label>:461                                     ; preds = %448, %441
  %462 = phi float [ %447, %441 ], [ %460, %448 ]
  %463 = fmul fast float %462, %425
  %464 = fadd fast float %463, %426
  %465 = call float @dx.op.unary.f32(i32 7, float %464)  ; Saturate(value)
  %466 = fmul fast float %465, %465
  %467 = fmul fast float %465, 2.000000e+00
  %468 = fsub fast float 3.000000e+00, %467
  %469 = fmul fast float %466, %468
  %470 = fsub fast float %469, %465
  %471 = fmul fast float %470, 0x3FE3333340000000
  %472 = fadd fast float %471, %465
  %473 = fmul fast float %472, %420
  %474 = fsub fast float 1.000000e+00, %473
  %475 = fmul fast float %474, %388
  br label %476

; <label>:476                                     ; preds = %461, %418
  %477 = phi float [ %475, %461 ], [ %388, %418 ]
  %478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %479 = extractvalue %dx.types.CBufRet.f32 %478, 0
  %480 = extractvalue %dx.types.CBufRet.f32 %478, 1
  %481 = extractvalue %dx.types.CBufRet.f32 %478, 2
  %482 = call float @dx.op.dot3.f32(i32 55, float %477, float %477, float %477, float %479, float %480, float %481)  ; Dot3(ax,ay,az,bx,by,bz)
  %483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %484 = extractvalue %dx.types.CBufRet.f32 %483, 1
  %485 = fmul fast float %362, %31
  %486 = fmul fast float %485, %482
  %487 = fmul fast float %486, %484
  br label %488

; <label>:488                                     ; preds = %476, %393
  %489 = phi float [ %417, %393 ], [ %487, %476 ]
  %490 = add nuw nsw i32 %369, 3
  %491 = add nuw nsw i32 %369, 6
  %492 = getelementptr [3 x i32], [3 x i32]* %18, i32 0, i32 0
  store i32 %369, i32* %492, align 4
  %493 = getelementptr [3 x i32], [3 x i32]* %18, i32 0, i32 1
  store i32 %490, i32* %493, align 4
  %494 = getelementptr [3 x i32], [3 x i32]* %18, i32 0, i32 2
  store i32 %491, i32* %494, align 4
  %495 = getelementptr [3 x i32], [3 x i32]* %18, i32 0, i32 %373
  %496 = load i32, i32* %495, align 4
  %497 = getelementptr [9 x float], [9 x float]* @Gx.v.v, i32 0, i32 %496
  %498 = load float, float* %497, align 4, !tbaa !34
  %499 = fmul fast float %498, %489
  %500 = fadd fast float %499, %371
  %501 = getelementptr [3 x i32], [3 x i32]* %17, i32 0, i32 0
  store i32 %369, i32* %501, align 4
  %502 = getelementptr [3 x i32], [3 x i32]* %17, i32 0, i32 1
  store i32 %490, i32* %502, align 4
  %503 = getelementptr [3 x i32], [3 x i32]* %17, i32 0, i32 2
  store i32 %491, i32* %503, align 4
  %504 = getelementptr [3 x i32], [3 x i32]* %17, i32 0, i32 %373
  %505 = load i32, i32* %504, align 4
  %506 = getelementptr [9 x float], [9 x float]* @Gy.v.v, i32 0, i32 %505
  %507 = load float, float* %506, align 4, !tbaa !34
  %508 = fmul fast float %507, %489
  %509 = fadd fast float %508, %372
  %510 = add nuw nsw i32 %373, 1
  %511 = icmp eq i32 %510, 3
  br i1 %511, label %512, label %370

; <label>:512                                     ; preds = %488
  %513 = add nuw nsw i32 %369, 1
  %514 = icmp eq i32 %513, 3
  br i1 %514, label %515, label %366

; <label>:515                                     ; preds = %512
  %516 = call float @dx.op.unary.f32(i32 7, float %39)  ; Saturate(value)
  %517 = fmul fast float %500, %500
  %518 = fmul fast float %509, %509
  %519 = fadd fast float %518, %517
  %520 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %519)  ; FMax(a,b)
  %521 = call float @dx.op.unary.f32(i32 24, float %520)  ; Sqrt(value)
  %522 = fmul fast float %516, %28
  %523 = call float @dx.op.unary.f32(i32 7, float %522)  ; Saturate(value)
  %524 = fmul fast float %354, %30
  %525 = fmul fast float %355, %30
  %526 = fmul fast float %356, %30
  %527 = select i1 %37, float %524, float %523
  %528 = select i1 %37, float %525, float %523
  %529 = select i1 %37, float %526, float %523
  %530 = fsub fast float %25, %527
  %531 = fsub fast float %26, %528
  %532 = fsub fast float %27, %529
  %533 = fmul fast float %530, %523
  %534 = fmul fast float %531, %523
  %535 = fmul fast float %532, %523
  %536 = fadd fast float %533, %527
  %537 = fadd fast float %534, %528
  %538 = fadd fast float %535, %529
  %539 = fmul fast float %516, %23
  %540 = fsub fast float 1.000000e+00, %539
  %541 = call float @dx.op.unary.f32(i32 7, float %540)  ; Saturate(value)
  br i1 %89, label %542, label %545

; <label>:542                                     ; preds = %515
  %543 = fmul fast float %521, %35
  %544 = fmul fast float %543, %541
  br label %549

; <label>:545                                     ; preds = %515
  %546 = fmul fast float %521, %33
  %547 = fmul fast float %546, %541
  %548 = call float @dx.op.unary.f32(i32 7, float %547)  ; Saturate(value)
  br label %549

; <label>:549                                     ; preds = %545, %542
  %550 = phi float [ %544, %542 ], [ %548, %545 ]
  %551 = fmul fast float %550, %36
  %552 = fsub fast float %20, %536
  %553 = fsub fast float %21, %537
  %554 = fsub fast float %22, %538
  %555 = fmul fast float %551, %552
  %556 = fmul fast float %551, %553
  %557 = fmul fast float %551, %554
  %558 = fadd fast float %555, %536
  %559 = fadd fast float %556, %537
  %560 = fadd fast float %557, %538
  br label %561

; <label>:561                                     ; preds = %549, %353
  %562 = phi float [ %558, %549 ], [ %354, %353 ]
  %563 = phi float [ %559, %549 ], [ %355, %353 ]
  %564 = phi float [ %560, %549 ], [ %356, %353 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %562)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %563)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %564)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

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
!dx.viewIdState = !{!21}
!dx.entryPoints = !{!22}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !14, !18}
!5 = !{!6, !8, !9, !10, !11, !12, !13}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 15, i32 1, i32 11, i32 0, null}
!14 = !{!15, !16, !17}
!15 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!16 = !{i32 1, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 224, null}
!17 = !{i32 2, %tonemapping* undef, !"", i32 0, i32 4, i32 1, i32 64, null}
!18 = !{!19, !20}
!19 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!20 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!21 = !{[8 x i32] [i32 6, i32 4, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7]}
!22 = !{void ()* @ps_main, !"ps_main", !23, !4, !32}
!23 = !{!24, !29, null}
!24 = !{!25, !28}
!25 = !{i32 0, !"SV_Position", i8 9, i8 3, !26, i8 4, i32 1, i8 4, i32 0, i8 0, !27}
!26 = !{i32 0}
!27 = !{i32 3, i32 3}
!28 = !{i32 1, !"TEXCOORD", i8 9, i8 0, !26, i8 2, i32 1, i8 2, i32 1, i8 0, !27}
!29 = !{!30}
!30 = !{i32 0, !"SV_Target", i8 9, i8 16, !26, i8 0, i32 1, i8 4, i32 0, i8 0, !31}
!31 = !{i32 3, i32 15}
!32 = !{i32 0, i64 16}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 1}
!34 = !{!35, !35, i64 0}
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}

