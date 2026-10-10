;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float       
; TEXCOORD                 0   xy          1     NONE   float   xy  
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 72a89cc59ff0678c2a9e25317d8364c2
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
;                                   texture    byte         r/o      T5     t15,space1     1
;
;
; ViewId state:
;
; Number of inputs: 6, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 4, 5 }
;   output 1 depends on inputs: { 4, 5 }
;   output 2 depends on inputs: { 4, 5 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = alloca [3 x i32], align 4
  %15 = alloca [3 x i32], align 4
  %16 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %17 = extractvalue %dx.types.CBufRet.f32 %16, 0
  %18 = extractvalue %dx.types.CBufRet.f32 %16, 1
  %19 = extractvalue %dx.types.CBufRet.f32 %16, 2
  %20 = extractvalue %dx.types.CBufRet.f32 %16, 3
  %21 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %22 = extractvalue %dx.types.CBufRet.f32 %21, 0
  %23 = extractvalue %dx.types.CBufRet.f32 %21, 1
  %24 = extractvalue %dx.types.CBufRet.f32 %21, 2
  %25 = extractvalue %dx.types.CBufRet.f32 %21, 3
  %26 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %27 = extractvalue %dx.types.CBufRet.f32 %26, 0
  %28 = extractvalue %dx.types.CBufRet.f32 %26, 1
  %29 = extractvalue %dx.types.CBufRet.f32 %26, 2
  %30 = extractvalue %dx.types.CBufRet.f32 %26, 3
  %31 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %32 = extractvalue %dx.types.CBufRet.f32 %31, 0
  %33 = extractvalue %dx.types.CBufRet.f32 %31, 1
  %34 = fcmp fast une float %27, 0.000000e+00
  %35 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %12, float %13, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %36 = extractvalue %dx.types.ResRet.f32 %35, 0
  %37 = extractvalue %dx.types.ResRet.f32 %35, 1
  %38 = extractvalue %dx.types.ResRet.f32 %35, 2
  %39 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %7, float %12, float %13, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %40 = extractvalue %dx.types.ResRet.f32 %39, 0
  %41 = fsub fast float 1.000000e+00, %40
  %42 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %43 = extractvalue %dx.types.CBufRet.f32 %42, 0
  %44 = fcmp fast olt float %41, %43
  %45 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %46 = extractvalue %dx.types.CBufRet.f32 %45, 0
  %47 = fcmp fast oge float %37, %46
  br i1 %34, label %48, label %226

; <label>:48                                      ; preds = %0
  %49 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.i32 %49, 3
  %51 = and i32 %50, 3
  %52 = icmp ne i32 %51, 0
  %53 = and i32 %50, 4
  %54 = icmp eq i32 %53, 0
  %55 = and i1 %52, %54
  %56 = and i1 %47, %55
  br i1 %56, label %57, label %89

; <label>:57                                      ; preds = %48
  %58 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %59 = fmul fast float %58, 0x3FDAAAAAA0000000
  %60 = call float @dx.op.unary.f32(i32 21, float %59)  ; Exp(value)
  %61 = fsub fast float 1.000000e+00, %60
  %62 = call float @dx.op.unary.f32(i32 23, float %61)  ; Log(value)
  %63 = fmul fast float %62, 0x4003333340000000
  %64 = call float @dx.op.unary.f32(i32 21, float %63)  ; Exp(value)
  %65 = fdiv fast float %60, %61
  %66 = fadd fast float %65, %36
  %67 = fadd fast float %65, %37
  %68 = fadd fast float %65, %38
  %69 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %66)  ; FMax(a,b)
  %70 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %67)  ; FMax(a,b)
  %71 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %68)  ; FMax(a,b)
  %72 = call float @dx.op.unary.f32(i32 23, float %69)  ; Log(value)
  %73 = call float @dx.op.unary.f32(i32 23, float %70)  ; Log(value)
  %74 = call float @dx.op.unary.f32(i32 23, float %71)  ; Log(value)
  %75 = fmul fast float %72, 0x4003333340000000
  %76 = fmul fast float %73, 0x4003333340000000
  %77 = fmul fast float %74, 0x4003333340000000
  %78 = call float @dx.op.unary.f32(i32 21, float %75)  ; Exp(value)
  %79 = call float @dx.op.unary.f32(i32 21, float %76)  ; Exp(value)
  %80 = call float @dx.op.unary.f32(i32 21, float %77)  ; Exp(value)
  %81 = fmul fast float %78, %64
  %82 = fmul fast float %79, %64
  %83 = fmul fast float %80, %64
  %84 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 219)  ; CBufferLoadLegacy(handle,regIndex)
  %85 = extractvalue %dx.types.CBufRet.f32 %84, 1
  %86 = fmul fast float %81, %85
  %87 = fmul fast float %82, %85
  %88 = fmul fast float %83, %85
  br label %185

; <label>:89                                      ; preds = %48
  %90 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 304)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.f32 %90, 2
  %92 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 305)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.f32 %92, 2
  %94 = extractvalue %dx.types.CBufRet.f32 %92, 3
  %95 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 306)  ; CBufferLoadLegacy(handle,regIndex)
  %96 = extractvalue %dx.types.CBufRet.f32 %95, 0
  %97 = extractvalue %dx.types.CBufRet.f32 %95, 1
  %98 = fcmp fast ugt float %91, 0.000000e+00
  br i1 %98, label %99, label %149

; <label>:99                                      ; preds = %89
  %100 = extractvalue %dx.types.CBufRet.f32 %95, 2
  %101 = fcmp fast ogt float %100, 0.000000e+00
  %102 = extractvalue %dx.types.CBufRet.f32 %92, 1
  %103 = extractvalue %dx.types.CBufRet.f32 %92, 0
  %104 = extractvalue %dx.types.CBufRet.f32 %90, 1
  %105 = extractvalue %dx.types.CBufRet.f32 %90, 0
  %106 = fadd fast float %12, -5.000000e-01
  %107 = fadd fast float %13, -5.000000e-01
  %108 = fmul fast float %105, %106
  %109 = fmul fast float %104, %107
  %110 = fadd fast float %108, %103
  %111 = fadd fast float %109, %102
  br i1 %101, label %112, label %119

; <label>:112                                     ; preds = %99
  %113 = fmul fast float %110, 5.000000e-01
  %114 = fmul fast float %111, 5.000000e-01
  %115 = fadd fast float %113, 5.000000e-01
  %116 = fadd fast float %114, 5.000000e-01
  %117 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %7, float %115, float %116, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %118 = extractvalue %dx.types.ResRet.f32 %117, 0
  br label %132

; <label>:119                                     ; preds = %99
  %120 = fsub fast float -0.000000e+00, %93
  %121 = fsub fast float -0.000000e+00, %94
  %122 = call float @dx.op.binary.f32(i32 35, float %110, float %120)  ; FMax(a,b)
  %123 = call float @dx.op.binary.f32(i32 35, float %111, float %121)  ; FMax(a,b)
  %124 = call float @dx.op.binary.f32(i32 36, float %122, float %93)  ; FMin(a,b)
  %125 = call float @dx.op.binary.f32(i32 36, float %123, float %94)  ; FMin(a,b)
  %126 = fsub fast float %110, %124
  %127 = fsub fast float %111, %125
  %128 = fmul fast float %126, %126
  %129 = fmul fast float %127, %127
  %130 = fadd fast float %129, %128
  %131 = call float @dx.op.unary.f32(i32 24, float %130)  ; Sqrt(value)
  br label %132

; <label>:132                                     ; preds = %119, %112
  %133 = phi float [ %118, %112 ], [ %131, %119 ]
  %134 = fmul fast float %133, %96
  %135 = fadd fast float %134, %97
  %136 = call float @dx.op.unary.f32(i32 7, float %135)  ; Saturate(value)
  %137 = fmul fast float %136, %136
  %138 = fmul fast float %136, 2.000000e+00
  %139 = fsub fast float 3.000000e+00, %138
  %140 = fmul fast float %137, %139
  %141 = fsub fast float %140, %136
  %142 = fmul fast float %141, 0x3FE3333340000000
  %143 = fadd fast float %142, %136
  %144 = fmul fast float %143, %91
  %145 = fsub fast float 1.000000e+00, %144
  %146 = fmul fast float %145, %36
  %147 = fmul fast float %145, %37
  %148 = fmul fast float %145, %38
  br label %149

; <label>:149                                     ; preds = %132, %89
  %150 = phi float [ %146, %132 ], [ %36, %89 ]
  %151 = phi float [ %147, %132 ], [ %37, %89 ]
  %152 = phi float [ %148, %132 ], [ %38, %89 ]
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 0
  %155 = extractvalue %dx.types.CBufRet.f32 %153, 1
  %156 = extractvalue %dx.types.CBufRet.f32 %153, 2
  %157 = call float @dx.op.dot3.f32(i32 55, float %150, float %151, float %152, float %154, float %155, float %156)  ; Dot3(ax,ay,az,bx,by,bz)
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.f32 %158, 0
  %160 = extractvalue %dx.types.CBufRet.f32 %158, 1
  %161 = extractvalue %dx.types.CBufRet.f32 %158, 2
  %162 = call float @dx.op.dot3.f32(i32 55, float %150, float %151, float %152, float %159, float %160, float %161)  ; Dot3(ax,ay,az,bx,by,bz)
  %163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.f32 %163, 0
  %165 = extractvalue %dx.types.CBufRet.f32 %163, 1
  %166 = extractvalue %dx.types.CBufRet.f32 %163, 2
  %167 = call float @dx.op.dot3.f32(i32 55, float %150, float %151, float %152, float %164, float %165, float %166)  ; Dot3(ax,ay,az,bx,by,bz)
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 0
  %170 = fmul fast float %169, %157
  %171 = fmul fast float %169, %162
  %172 = fmul fast float %169, %167
  br i1 %44, label %173, label %179

; <label>:173                                     ; preds = %149
  %174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.f32 %174, 1
  %176 = fmul fast float %170, %175
  %177 = fmul fast float %171, %175
  %178 = fmul fast float %172, %175
  br label %185

; <label>:179                                     ; preds = %149
  %180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = extractvalue %dx.types.CBufRet.f32 %180, 2
  %182 = fmul fast float %170, %181
  %183 = fmul fast float %171, %181
  %184 = fmul fast float %172, %181
  br label %185

; <label>:185                                     ; preds = %179, %173, %57
  %186 = phi float [ %86, %57 ], [ %176, %173 ], [ %182, %179 ]
  %187 = phi float [ %87, %57 ], [ %177, %173 ], [ %183, %179 ]
  %188 = phi float [ %88, %57 ], [ %178, %173 ], [ %184, %179 ]
  %189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 219)  ; CBufferLoadLegacy(handle,regIndex)
  %190 = extractvalue %dx.types.CBufRet.f32 %189, 0
  %191 = bitcast float %190 to i32
  %192 = icmp eq i32 %191, 4
  br i1 %192, label %193, label %216

; <label>:193                                     ; preds = %185
  %194 = fmul fast float %186, 0x3FEA519BC0000000
  %195 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %187, float %194)  ; FMad(a,b,c)
  %196 = fmul fast float %186, 0x3FA0FED480000000
  %197 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %187, float %196)  ; FMad(a,b,c)
  %198 = fmul fast float %186, 0x3F917E1C00000000
  %199 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %187, float %198)  ; FMad(a,b,c)
  %200 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %188, float %199)  ; FMad(a,b,c)
  %201 = call float @dx.op.binary.f32(i32 35, float %186, float %187)  ; FMax(a,b)
  %202 = call float @dx.op.binary.f32(i32 35, float %201, float %188)  ; FMax(a,b)
  %203 = fadd fast float %202, -1.000000e+00
  %204 = fmul fast float %203, 2.500000e-01
  %205 = call float @dx.op.unary.f32(i32 7, float %204)  ; Saturate(value)
  %206 = fsub fast float 1.000000e+00, %205
  %207 = fmul fast float %206, %195
  %208 = fmul fast float %206, %197
  %209 = fmul fast float %206, %200
  %210 = fmul fast float %205, %186
  %211 = fmul fast float %205, %187
  %212 = fmul fast float %205, %188
  %213 = fadd fast float %207, %210
  %214 = fadd fast float %208, %211
  %215 = fadd fast float %209, %212
  br label %226

; <label>:216                                     ; preds = %185
  %217 = fmul fast float %186, 0x3FE413A920000000
  %218 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %187, float %217)  ; FMad(a,b,c)
  %219 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %188, float %218)  ; FMad(a,b,c)
  %220 = fmul fast float %186, 0x3FB1B089A0000000
  %221 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %187, float %220)  ; FMad(a,b,c)
  %222 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %188, float %221)  ; FMad(a,b,c)
  %223 = fmul fast float %186, 0x3F90CB2960000000
  %224 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %187, float %223)  ; FMad(a,b,c)
  %225 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %188, float %224)  ; FMad(a,b,c)
  br label %226

; <label>:226                                     ; preds = %216, %193, %0
  %227 = phi float [ %213, %193 ], [ %219, %216 ], [ %36, %0 ]
  %228 = phi float [ %214, %193 ], [ %222, %216 ], [ %37, %0 ]
  %229 = phi float [ %215, %193 ], [ %225, %216 ], [ %38, %0 ]
  %230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %231 = extractvalue %dx.types.CBufRet.f32 %230, 0
  %232 = fcmp fast ogt float %231, 0.000000e+00
  br i1 %232, label %233, label %277

; <label>:233                                     ; preds = %226
  %234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %235 = extractvalue %dx.types.CBufRet.f32 %234, 0
  %236 = extractvalue %dx.types.CBufRet.f32 %234, 1
  %237 = fmul fast float %235, %12
  %238 = fmul fast float %236, %13
  %239 = fptoui float %237 to i32
  %240 = fptoui float %238 to i32
  %241 = lshr i32 %239, 3
  %242 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %243 = extractvalue %dx.types.CBufRet.i32 %242, 1
  %244 = shl i32 %243, 1
  %245 = lshr i32 %240, 5
  %246 = extractvalue %dx.types.CBufRet.i32 %242, 0
  %247 = mul i32 %245, %246
  %248 = lshr i32 %239, 6
  %249 = add i32 %248, %244
  %250 = add i32 %249, %247
  %251 = shl i32 %250, 2
  %252 = and i32 %240, 24
  %253 = and i32 %241, 7
  %254 = or i32 %253, %252
  %255 = shl i32 1, %254
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %251, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = and i32 %255, %257
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %277, label %260

; <label>:260                                     ; preds = %233
  %261 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %8, float %12, float %13, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %262 = extractvalue %dx.types.ResRet.f32 %261, 0
  %263 = fcmp fast oeq float %262, 0.000000e+00
  br i1 %263, label %264, label %277

; <label>:264                                     ; preds = %260
  %265 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %8, float %12, float %13, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %266 = extractvalue %dx.types.ResRet.f32 %265, 0
  %267 = extractvalue %dx.types.ResRet.f32 %265, 1
  %268 = extractvalue %dx.types.ResRet.f32 %265, 2
  %269 = extractvalue %dx.types.ResRet.f32 %265, 3
  %270 = fsub fast float 1.000000e+00, %269
  %271 = fmul fast float %270, %227
  %272 = fmul fast float %270, %228
  %273 = fmul fast float %270, %229
  %274 = fadd fast float %271, %266
  %275 = fadd fast float %272, %267
  %276 = fadd fast float %273, %268
  br label %277

; <label>:277                                     ; preds = %264, %260, %233, %226
  %278 = phi float [ %274, %264 ], [ %227, %260 ], [ %227, %233 ], [ %227, %226 ]
  %279 = phi float [ %275, %264 ], [ %228, %260 ], [ %228, %233 ], [ %228, %226 ]
  %280 = phi float [ %276, %264 ], [ %229, %260 ], [ %229, %233 ], [ %229, %226 ]
  %281 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %282 = extractvalue %dx.types.CBufRet.i32 %281, 3
  %283 = and i32 %282, 8
  %284 = icmp ne i32 %283, 0
  %285 = or i1 %44, %284
  br i1 %285, label %286, label %487

; <label>:286                                     ; preds = %277
  %287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %288 = extractvalue %dx.types.CBufRet.f32 %287, 0
  %289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %290 = extractvalue %dx.types.CBufRet.f32 %289, 2
  %291 = extractvalue %dx.types.CBufRet.f32 %289, 3
  br label %292

; <label>:292                                     ; preds = %438, %286
  %293 = phi float [ 0.000000e+00, %286 ], [ %426, %438 ]
  %294 = phi float [ 0.000000e+00, %286 ], [ %435, %438 ]
  %295 = phi i32 [ 0, %286 ], [ %439, %438 ]
  br label %296

; <label>:296                                     ; preds = %414, %292
  %297 = phi float [ %293, %292 ], [ %426, %414 ]
  %298 = phi float [ %294, %292 ], [ %435, %414 ]
  %299 = phi i32 [ 0, %292 ], [ %436, %414 ]
  %300 = add nsw i32 %295, -1
  %301 = sitofp i32 %300 to float
  %302 = add nsw i32 %299, -1
  %303 = sitofp i32 %302 to float
  %304 = fmul fast float %301, %290
  %305 = fmul fast float %303, %291
  %306 = fadd fast float %304, %12
  %307 = fadd fast float %305, %13
  %308 = icmp eq i32 %295, 1
  %309 = icmp eq i32 %299, 1
  %310 = and i1 %308, %309
  %311 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %306, float %307, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %312 = extractvalue %dx.types.ResRet.f32 %311, 0
  %313 = extractvalue %dx.types.ResRet.f32 %311, 1
  %314 = select i1 %310, float %36, float %312
  %315 = select i1 %310, float %37, float %313
  %316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %317 = extractvalue %dx.types.CBufRet.f32 %316, 0
  %318 = fcmp fast ult float %315, %317
  br i1 %318, label %344, label %319

; <label>:319                                     ; preds = %296
  %320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %321 = extractvalue %dx.types.CBufRet.f32 %320, 3
  %322 = call float @dx.op.unary.f32(i32 7, float %315)  ; Saturate(value)
  %323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 238)  ; CBufferLoadLegacy(handle,regIndex)
  %324 = extractvalue %dx.types.CBufRet.f32 %323, 0
  %325 = extractvalue %dx.types.CBufRet.f32 %323, 1
  %326 = extractvalue %dx.types.CBufRet.f32 %323, 2
  %327 = extractvalue %dx.types.CBufRet.f32 %320, 0
  %328 = extractvalue %dx.types.CBufRet.f32 %320, 1
  %329 = extractvalue %dx.types.CBufRet.f32 %320, 2
  %330 = fsub fast float %324, %327
  %331 = fsub fast float %325, %328
  %332 = fsub fast float %326, %329
  %333 = fmul fast float %330, %322
  %334 = fmul fast float %331, %322
  %335 = fmul fast float %332, %322
  %336 = fadd fast float %333, %327
  %337 = fadd fast float %334, %328
  %338 = fadd fast float %335, %329
  %339 = fmul fast float %321, %29
  %340 = fmul fast float %339, %336
  %341 = fmul fast float %339, %337
  %342 = fmul fast float %339, %338
  %343 = call float @dx.op.dot3.f32(i32 55, float %340, float %341, float %342, float 0x3FD5554760000000, float 0x3FD5554760000000, float 0x3FD5554760000000)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %414

; <label>:344                                     ; preds = %296
  %345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 304)  ; CBufferLoadLegacy(handle,regIndex)
  %346 = extractvalue %dx.types.CBufRet.f32 %345, 2
  %347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 305)  ; CBufferLoadLegacy(handle,regIndex)
  %348 = extractvalue %dx.types.CBufRet.f32 %347, 2
  %349 = extractvalue %dx.types.CBufRet.f32 %347, 3
  %350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 306)  ; CBufferLoadLegacy(handle,regIndex)
  %351 = extractvalue %dx.types.CBufRet.f32 %350, 0
  %352 = extractvalue %dx.types.CBufRet.f32 %350, 1
  %353 = fcmp fast ugt float %346, 0.000000e+00
  br i1 %353, label %354, label %402

; <label>:354                                     ; preds = %344
  %355 = extractvalue %dx.types.CBufRet.f32 %350, 2
  %356 = fcmp fast ogt float %355, 0.000000e+00
  %357 = extractvalue %dx.types.CBufRet.f32 %347, 1
  %358 = extractvalue %dx.types.CBufRet.f32 %347, 0
  %359 = extractvalue %dx.types.CBufRet.f32 %345, 1
  %360 = extractvalue %dx.types.CBufRet.f32 %345, 0
  %361 = fadd fast float %306, -5.000000e-01
  %362 = fadd fast float %307, -5.000000e-01
  %363 = fmul fast float %360, %361
  %364 = fmul fast float %359, %362
  %365 = fadd fast float %363, %358
  %366 = fadd fast float %364, %357
  br i1 %356, label %367, label %374

; <label>:367                                     ; preds = %354
  %368 = fmul fast float %365, 5.000000e-01
  %369 = fmul fast float %366, 5.000000e-01
  %370 = fadd fast float %368, 5.000000e-01
  %371 = fadd fast float %369, 5.000000e-01
  %372 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %7, float %370, float %371, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %373 = extractvalue %dx.types.ResRet.f32 %372, 0
  br label %387

; <label>:374                                     ; preds = %354
  %375 = fsub fast float -0.000000e+00, %348
  %376 = fsub fast float -0.000000e+00, %349
  %377 = call float @dx.op.binary.f32(i32 35, float %365, float %375)  ; FMax(a,b)
  %378 = call float @dx.op.binary.f32(i32 35, float %366, float %376)  ; FMax(a,b)
  %379 = call float @dx.op.binary.f32(i32 36, float %377, float %348)  ; FMin(a,b)
  %380 = call float @dx.op.binary.f32(i32 36, float %378, float %349)  ; FMin(a,b)
  %381 = fsub fast float %365, %379
  %382 = fsub fast float %366, %380
  %383 = fmul fast float %381, %381
  %384 = fmul fast float %382, %382
  %385 = fadd fast float %384, %383
  %386 = call float @dx.op.unary.f32(i32 24, float %385)  ; Sqrt(value)
  br label %387

; <label>:387                                     ; preds = %374, %367
  %388 = phi float [ %373, %367 ], [ %386, %374 ]
  %389 = fmul fast float %388, %351
  %390 = fadd fast float %389, %352
  %391 = call float @dx.op.unary.f32(i32 7, float %390)  ; Saturate(value)
  %392 = fmul fast float %391, %391
  %393 = fmul fast float %391, 2.000000e+00
  %394 = fsub fast float 3.000000e+00, %393
  %395 = fmul fast float %392, %394
  %396 = fsub fast float %395, %391
  %397 = fmul fast float %396, 0x3FE3333340000000
  %398 = fadd fast float %397, %391
  %399 = fmul fast float %398, %346
  %400 = fsub fast float 1.000000e+00, %399
  %401 = fmul fast float %400, %314
  br label %402

; <label>:402                                     ; preds = %387, %344
  %403 = phi float [ %401, %387 ], [ %314, %344 ]
  %404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %405 = extractvalue %dx.types.CBufRet.f32 %404, 0
  %406 = extractvalue %dx.types.CBufRet.f32 %404, 1
  %407 = extractvalue %dx.types.CBufRet.f32 %404, 2
  %408 = call float @dx.op.dot3.f32(i32 55, float %403, float %403, float %403, float %405, float %406, float %407)  ; Dot3(ax,ay,az,bx,by,bz)
  %409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %410 = extractvalue %dx.types.CBufRet.f32 %409, 1
  %411 = fmul fast float %288, %28
  %412 = fmul fast float %411, %408
  %413 = fmul fast float %412, %410
  br label %414

; <label>:414                                     ; preds = %402, %319
  %415 = phi float [ %343, %319 ], [ %413, %402 ]
  %416 = add nuw nsw i32 %295, 3
  %417 = add nuw nsw i32 %295, 6
  %418 = getelementptr [3 x i32], [3 x i32]* %15, i32 0, i32 0
  store i32 %295, i32* %418, align 4
  %419 = getelementptr [3 x i32], [3 x i32]* %15, i32 0, i32 1
  store i32 %416, i32* %419, align 4
  %420 = getelementptr [3 x i32], [3 x i32]* %15, i32 0, i32 2
  store i32 %417, i32* %420, align 4
  %421 = getelementptr [3 x i32], [3 x i32]* %15, i32 0, i32 %299
  %422 = load i32, i32* %421, align 4
  %423 = getelementptr [9 x float], [9 x float]* @Gx.v.v, i32 0, i32 %422
  %424 = load float, float* %423, align 4, !tbaa !32
  %425 = fmul fast float %424, %415
  %426 = fadd fast float %425, %297
  %427 = getelementptr [3 x i32], [3 x i32]* %14, i32 0, i32 0
  store i32 %295, i32* %427, align 4
  %428 = getelementptr [3 x i32], [3 x i32]* %14, i32 0, i32 1
  store i32 %416, i32* %428, align 4
  %429 = getelementptr [3 x i32], [3 x i32]* %14, i32 0, i32 2
  store i32 %417, i32* %429, align 4
  %430 = getelementptr [3 x i32], [3 x i32]* %14, i32 0, i32 %299
  %431 = load i32, i32* %430, align 4
  %432 = getelementptr [9 x float], [9 x float]* @Gy.v.v, i32 0, i32 %431
  %433 = load float, float* %432, align 4, !tbaa !32
  %434 = fmul fast float %433, %415
  %435 = fadd fast float %434, %298
  %436 = add nuw nsw i32 %299, 1
  %437 = icmp eq i32 %436, 3
  br i1 %437, label %438, label %296

; <label>:438                                     ; preds = %414
  %439 = add nuw nsw i32 %295, 1
  %440 = icmp eq i32 %439, 3
  br i1 %440, label %441, label %292

; <label>:441                                     ; preds = %438
  %442 = call float @dx.op.unary.f32(i32 7, float %36)  ; Saturate(value)
  %443 = fmul fast float %426, %426
  %444 = fmul fast float %435, %435
  %445 = fadd fast float %444, %443
  %446 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %445)  ; FMax(a,b)
  %447 = call float @dx.op.unary.f32(i32 24, float %446)  ; Sqrt(value)
  %448 = fmul fast float %442, %25
  %449 = call float @dx.op.unary.f32(i32 7, float %448)  ; Saturate(value)
  %450 = fmul fast float %278, %27
  %451 = fmul fast float %279, %27
  %452 = fmul fast float %280, %27
  %453 = select i1 %34, float %450, float %449
  %454 = select i1 %34, float %451, float %449
  %455 = select i1 %34, float %452, float %449
  %456 = fsub fast float %22, %453
  %457 = fsub fast float %23, %454
  %458 = fsub fast float %24, %455
  %459 = fmul fast float %456, %449
  %460 = fmul fast float %457, %449
  %461 = fmul fast float %458, %449
  %462 = fadd fast float %459, %453
  %463 = fadd fast float %460, %454
  %464 = fadd fast float %461, %455
  %465 = fmul fast float %442, %20
  %466 = fsub fast float 1.000000e+00, %465
  %467 = call float @dx.op.unary.f32(i32 7, float %466)  ; Saturate(value)
  br i1 %47, label %468, label %471

; <label>:468                                     ; preds = %441
  %469 = fmul fast float %447, %32
  %470 = fmul fast float %469, %467
  br label %475

; <label>:471                                     ; preds = %441
  %472 = fmul fast float %447, %30
  %473 = fmul fast float %472, %467
  %474 = call float @dx.op.unary.f32(i32 7, float %473)  ; Saturate(value)
  br label %475

; <label>:475                                     ; preds = %471, %468
  %476 = phi float [ %470, %468 ], [ %474, %471 ]
  %477 = fmul fast float %476, %33
  %478 = fsub fast float %17, %462
  %479 = fsub fast float %18, %463
  %480 = fsub fast float %19, %464
  %481 = fmul fast float %477, %478
  %482 = fmul fast float %477, %479
  %483 = fmul fast float %477, %480
  %484 = fadd fast float %481, %462
  %485 = fadd fast float %482, %463
  %486 = fadd fast float %483, %464
  br label %487

; <label>:487                                     ; preds = %475, %277
  %488 = phi float [ %484, %475 ], [ %278, %277 ]
  %489 = phi float [ %485, %475 ], [ %279, %277 ]
  %490 = phi float [ %486, %475 ], [ %280, %277 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %488)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %489)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %490)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!20}
!dx.entryPoints = !{!21}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !13, !17}
!5 = !{!6, !8, !9, !10, !11, !12}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 15, i32 1, i32 11, i32 0, null}
!13 = !{!14, !15, !16}
!14 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!15 = !{i32 1, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 224, null}
!16 = !{i32 2, %tonemapping* undef, !"", i32 0, i32 4, i32 1, i32 64, null}
!17 = !{!18, !19}
!18 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!19 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!20 = !{[8 x i32] [i32 6, i32 4, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7]}
!21 = !{void ()* @ps_main, !"ps_main", !22, !4, !31}
!22 = !{!23, !28, null}
!23 = !{!24, !26}
!24 = !{i32 0, !"SV_Position", i8 9, i8 3, !25, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!25 = !{i32 0}
!26 = !{i32 1, !"TEXCOORD", i8 9, i8 0, !25, i8 2, i32 1, i8 2, i32 1, i8 0, !27}
!27 = !{i32 3, i32 3}
!28 = !{!29}
!29 = !{i32 0, !"SV_Target", i8 9, i8 16, !25, i8 0, i32 1, i8 4, i32 0, i8 0, !30}
!30 = !{i32 3, i32 15}
!31 = !{i32 0, i64 16}
!32 = !{!33, !33, i64 0}
!33 = !{!"float", !34, i64 0}
!34 = !{!"omnipotent char", !35, i64 0}
!35 = !{!"Simple C/C++ TBAA"}

